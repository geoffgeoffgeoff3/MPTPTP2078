%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:02:42 EST 2020

% Result     : Theorem 3.09s
% Output     : CNFRefutation 3.09s
% Verified   : 
% Statistics : Number of formulae       :  191 (5588 expanded)
%              Number of clauses        :  119 (1714 expanded)
%              Number of leaves         :   15 (1091 expanded)
%              Depth                    :   25
%              Number of atoms          :  577 (30534 expanded)
%              Number of equality atoms :  296 (6129 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
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

fof(f33,plain,(
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
    inference(flattening,[],[f32])).

fof(f47,plain,(
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
    inference(nnf_transformation,[],[f33])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f16,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k2_relset_1(X0,X1,X2) = X1
          & v2_funct_1(X2) )
       => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(k2_funct_1(X2),X1,X0)
          & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ( k2_relset_1(X0,X1,X2) = X1
            & v2_funct_1(X2) )
         => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(k2_funct_1(X2),X1,X0)
            & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f36,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f37,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f36])).

fof(f50,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
          | ~ v1_funct_1(k2_funct_1(X2)) )
        & k2_relset_1(X0,X1,X2) = X1
        & v2_funct_1(X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
        | ~ v1_funct_2(k2_funct_1(sK4),sK3,sK2)
        | ~ v1_funct_1(k2_funct_1(sK4)) )
      & k2_relset_1(sK2,sK3,sK4) = sK3
      & v2_funct_1(sK4)
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
      & v1_funct_2(sK4,sK2,sK3)
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
      | ~ v1_funct_2(k2_funct_1(sK4),sK3,sK2)
      | ~ v1_funct_1(k2_funct_1(sK4)) )
    & k2_relset_1(sK2,sK3,sK4) = sK3
    & v2_funct_1(sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    & v1_funct_2(sK4,sK2,sK3)
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f37,f50])).

fof(f88,plain,(
    v1_funct_2(sK4,sK2,sK3) ),
    inference(cnf_transformation,[],[f51])).

fof(f89,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f51])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f91,plain,(
    k2_relset_1(sK2,sK3,sK4) = sK3 ),
    inference(cnf_transformation,[],[f51])).

fof(f15,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f35,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f34])).

fof(f85,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f92,plain,
    ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_2(k2_funct_1(sK4),sK3,sK2)
    | ~ v1_funct_1(k2_funct_1(sK4)) ),
    inference(cnf_transformation,[],[f51])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f87,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f51])).

fof(f8,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f68,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f67,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f70,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f90,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f51])).

fof(f69,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f86,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f23])).

fof(f66,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f44])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f45])).

fof(f96,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f61])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f100,plain,(
    ! [X2,X1] :
      ( v1_funct_2(X2,k1_xboole_0,X1)
      | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f77])).

fof(f65,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f99,plain,(
    ! [X2,X0] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f78])).

fof(f14,axiom,(
    ! [X0,X1] :
    ? [X2] :
      ( v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2)
      & v5_relat_1(X2,X1)
      & v4_relat_1(X2,X0)
      & v1_relat_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
    ? [X2] :
      ( v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2)
      & v4_relat_1(X2,X0)
      & v1_relat_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f20,plain,(
    ! [X0,X1] :
    ? [X2] :
      ( v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2)
      & v1_relat_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(pure_predicate_removal,[],[f19])).

fof(f48,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2)
          & v1_relat_1(X2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( v1_funct_2(sK1(X0,X1),X0,X1)
        & v1_funct_1(sK1(X0,X1))
        & v1_relat_1(sK1(X0,X1))
        & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
    ! [X0,X1] :
      ( v1_funct_2(sK1(X0,X1),X0,X1)
      & v1_funct_1(sK1(X0,X1))
      & v1_relat_1(sK1(X0,X1))
      & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f48])).

fof(f83,plain,(
    ! [X0,X1] : v1_funct_2(sK1(X0,X1),X0,X1) ),
    inference(cnf_transformation,[],[f49])).

fof(f80,plain,(
    ! [X0,X1] : m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f49])).

fof(f62,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f45])).

fof(f95,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f62])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f64,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f42])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f43])).

fof(f94,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f57])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_39,negated_conjecture,
    ( v1_funct_2(sK4,sK2,sK3) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_707,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK2 != X1
    | sK3 != X2
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_39])).

cnf(c_708,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | k1_relset_1(sK2,sK3,sK4) = sK2
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_707])).

cnf(c_38,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_710,plain,
    ( k1_relset_1(sK2,sK3,sK4) = sK2
    | k1_xboole_0 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_708,c_38])).

cnf(c_1587,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1593,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3904,plain,
    ( k1_relset_1(sK2,sK3,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1587,c_1593])).

cnf(c_4148,plain,
    ( k1_relat_1(sK4) = sK2
    | sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_710,c_3904])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1592,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_3223,plain,
    ( k2_relset_1(sK2,sK3,sK4) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1587,c_1592])).

cnf(c_36,negated_conjecture,
    ( k2_relset_1(sK2,sK3,sK4) = sK3 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_3239,plain,
    ( k2_relat_1(sK4) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_3223,c_36])).

cnf(c_33,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_35,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK4),sK3,sK2)
    | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_1(k2_funct_1(sK4)) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_731,plain,
    ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_relat_1(X0)
    | k2_funct_1(sK4) != X0
    | k1_relat_1(X0) != sK3
    | k2_relat_1(X0) != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_33,c_35])).

cnf(c_732,plain,
    ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_relat_1(k2_funct_1(sK4))
    | k1_relat_1(k2_funct_1(sK4)) != sK3
    | k2_relat_1(k2_funct_1(sK4)) != sK2 ),
    inference(unflattening,[status(thm)],[c_731])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_744,plain,
    ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_1(k2_funct_1(sK4))
    | k1_relat_1(k2_funct_1(sK4)) != sK3
    | k2_relat_1(k2_funct_1(sK4)) != sK2 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_732,c_19])).

cnf(c_1574,plain,
    ( k1_relat_1(k2_funct_1(sK4)) != sK3
    | k2_relat_1(k2_funct_1(sK4)) != sK2
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_744])).

cnf(c_40,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_41,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_43,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_733,plain,
    ( k1_relat_1(k2_funct_1(sK4)) != sK3
    | k2_relat_1(k2_funct_1(sK4)) != sK2
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top
    | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_732])).

cnf(c_15,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1895,plain,
    ( v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_1896,plain,
    ( v1_funct_1(k2_funct_1(sK4)) = iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1895])).

cnf(c_16,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1903,plain,
    ( ~ v1_funct_1(sK4)
    | v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_1904,plain,
    ( v1_funct_1(sK4) != iProver_top
    | v1_relat_1(k2_funct_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1903])).

cnf(c_1911,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_1912,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1911])).

cnf(c_2006,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | k2_relat_1(k2_funct_1(sK4)) != sK2
    | k1_relat_1(k2_funct_1(sK4)) != sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1574,c_41,c_43,c_733,c_1896,c_1904,c_1912])).

cnf(c_2007,plain,
    ( k1_relat_1(k2_funct_1(sK4)) != sK3
    | k2_relat_1(k2_funct_1(sK4)) != sK2
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(renaming,[status(thm)],[c_2006])).

cnf(c_17,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_37,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_498,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_37])).

cnf(c_499,plain,
    ( ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_498])).

cnf(c_501,plain,
    ( ~ v1_relat_1(sK4)
    | k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_499,c_40])).

cnf(c_1583,plain,
    ( k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4)
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_501])).

cnf(c_1915,plain,
    ( k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1583,c_40,c_38,c_499,c_1911])).

cnf(c_18,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_484,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_37])).

cnf(c_485,plain,
    ( ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_484])).

cnf(c_487,plain,
    ( ~ v1_relat_1(sK4)
    | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_485,c_40])).

cnf(c_1584,plain,
    ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4)
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_487])).

cnf(c_1919,plain,
    ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1584,c_40,c_38,c_485,c_1911])).

cnf(c_2010,plain,
    ( k1_relat_1(sK4) != sK2
    | k2_relat_1(sK4) != sK3
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2007,c_1915,c_1919])).

cnf(c_3291,plain,
    ( k1_relat_1(sK4) != sK2
    | sK3 != sK3
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3239,c_2010])).

cnf(c_3295,plain,
    ( k1_relat_1(sK4) != sK2
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3291])).

cnf(c_4351,plain,
    ( sK3 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4148,c_3295])).

cnf(c_32,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1588,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_2677,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK4)),k1_relat_1(sK4)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top
    | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1915,c_1588])).

cnf(c_2688,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK4),k1_relat_1(sK4)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top
    | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2677,c_1919])).

cnf(c_2889,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK4),k1_relat_1(sK4)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2688,c_41,c_43,c_1896,c_1904,c_1912])).

cnf(c_3289,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,k1_relat_1(sK4)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3239,c_2889])).

cnf(c_4245,plain,
    ( sK3 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_4148,c_3289])).

cnf(c_4431,plain,
    ( sK3 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4351,c_4245])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1598,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3373,plain,
    ( sK3 != k1_xboole_0
    | sK4 = k1_xboole_0
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3239,c_1598])).

cnf(c_3387,plain,
    ( ~ v1_relat_1(sK4)
    | sK3 != k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3373])).

cnf(c_3696,plain,
    ( sK4 = k1_xboole_0
    | sK3 != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3373,c_38,c_1911,c_3387])).

cnf(c_3697,plain,
    ( sK3 != k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_3696])).

cnf(c_4440,plain,
    ( sK4 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4431,c_3697])).

cnf(c_4530,plain,
    ( sK4 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_4440])).

cnf(c_4441,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_relat_1(sK4)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4431,c_3289])).

cnf(c_9,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f96])).

cnf(c_4517,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4441,c_9])).

cnf(c_24,plain,
    ( v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f100])).

cnf(c_624,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ v1_funct_1(k2_funct_1(sK4))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
    | k2_funct_1(sK4) != X0
    | sK2 != X1
    | sK3 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_35])).

cnf(c_625,plain,
    ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2)))
    | ~ v1_funct_1(k2_funct_1(sK4))
    | k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | sK3 != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_624])).

cnf(c_1579,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | sK3 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_625])).

cnf(c_1787,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | sK3 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1579,c_9])).

cnf(c_2182,plain,
    ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | sK3 != k1_xboole_0
    | k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1787,c_41,c_43,c_1896,c_1912])).

cnf(c_2183,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | sK3 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2182])).

cnf(c_4450,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4431,c_2183])).

cnf(c_4488,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_4450])).

cnf(c_4492,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4488,c_9])).

cnf(c_4520,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0 ),
    inference(backward_subsumption_resolution,[status(thm)],[c_4517,c_4492])).

cnf(c_4533,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(k1_xboole_0)) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4530,c_4520])).

cnf(c_3292,plain,
    ( k1_relat_1(k2_funct_1(sK4)) = sK3 ),
    inference(demodulation,[status(thm)],[c_3239,c_1919])).

cnf(c_14,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1597,plain,
    ( k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3454,plain,
    ( k2_funct_1(sK4) = k1_xboole_0
    | sK3 != k1_xboole_0
    | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3292,c_1597])).

cnf(c_5050,plain,
    ( k2_funct_1(sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3454,c_41,c_43,c_1904,c_1912,c_4245,c_4351])).

cnf(c_5075,plain,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4530,c_5050])).

cnf(c_5666,plain,
    ( k1_relset_1(k1_xboole_0,sK2,k1_xboole_0) != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_4533,c_5075])).

cnf(c_23,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f99])).

cnf(c_28,plain,
    ( v1_funct_2(sK1(X0,X1),X0,X1) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_552,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | X2 != X1
    | sK1(X2,X3) != X0
    | k1_xboole_0 != X3
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_28])).

cnf(c_553,plain,
    ( ~ m1_subset_1(sK1(X0,k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
    | k1_xboole_0 = X0
    | k1_xboole_0 = sK1(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_552])).

cnf(c_31,plain,
    ( m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_563,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = sK1(X0,k1_xboole_0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_553,c_31])).

cnf(c_1589,plain,
    ( m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_2463,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_563,c_1589])).

cnf(c_8,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f95])).

cnf(c_2472,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2463,c_8])).

cnf(c_11,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_113,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_115,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_113])).

cnf(c_7,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_118,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_120,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_118])).

cnf(c_2714,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2472,c_115,c_120])).

cnf(c_3908,plain,
    ( k1_relset_1(k1_xboole_0,X0,X1) = k1_relat_1(X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_9,c_1593])).

cnf(c_4133,plain,
    ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_relat_1(k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_2714,c_3908])).

cnf(c_5054,plain,
    ( k1_relat_1(sK4) = k2_relat_1(k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_5050,c_1915])).

cnf(c_4446,plain,
    ( k2_relat_1(sK4) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4431,c_3239])).

cnf(c_4540,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4530,c_4446])).

cnf(c_5056,plain,
    ( k1_relat_1(sK4) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_5054,c_4540])).

cnf(c_5396,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_5056,c_4530])).

cnf(c_5577,plain,
    ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_4133,c_5396])).

cnf(c_5667,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5666,c_5577])).

cnf(c_5668,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_5667])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.33  % Computer   : n012.cluster.edu
% 0.14/0.33  % Model      : x86_64 x86_64
% 0.14/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.33  % Memory     : 8042.1875MB
% 0.14/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.33  % CPULimit   : 60
% 0.14/0.33  % WCLimit    : 600
% 0.14/0.33  % DateTime   : Tue Dec  1 15:31:52 EST 2020
% 0.14/0.33  % CPUTime    : 
% 0.14/0.33  % Running in FOF mode
% 3.09/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.09/1.00  
% 3.09/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.09/1.00  
% 3.09/1.00  ------  iProver source info
% 3.09/1.00  
% 3.09/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.09/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.09/1.00  git: non_committed_changes: false
% 3.09/1.00  git: last_make_outside_of_git: false
% 3.09/1.00  
% 3.09/1.00  ------ 
% 3.09/1.00  
% 3.09/1.00  ------ Input Options
% 3.09/1.00  
% 3.09/1.00  --out_options                           all
% 3.09/1.00  --tptp_safe_out                         true
% 3.09/1.00  --problem_path                          ""
% 3.09/1.00  --include_path                          ""
% 3.09/1.00  --clausifier                            res/vclausify_rel
% 3.09/1.00  --clausifier_options                    --mode clausify
% 3.09/1.00  --stdin                                 false
% 3.09/1.00  --stats_out                             all
% 3.09/1.00  
% 3.09/1.00  ------ General Options
% 3.09/1.00  
% 3.09/1.00  --fof                                   false
% 3.09/1.00  --time_out_real                         305.
% 3.09/1.00  --time_out_virtual                      -1.
% 3.09/1.00  --symbol_type_check                     false
% 3.09/1.00  --clausify_out                          false
% 3.09/1.00  --sig_cnt_out                           false
% 3.09/1.00  --trig_cnt_out                          false
% 3.09/1.00  --trig_cnt_out_tolerance                1.
% 3.09/1.00  --trig_cnt_out_sk_spl                   false
% 3.09/1.00  --abstr_cl_out                          false
% 3.09/1.00  
% 3.09/1.00  ------ Global Options
% 3.09/1.00  
% 3.09/1.00  --schedule                              default
% 3.09/1.00  --add_important_lit                     false
% 3.09/1.00  --prop_solver_per_cl                    1000
% 3.09/1.00  --min_unsat_core                        false
% 3.09/1.00  --soft_assumptions                      false
% 3.09/1.00  --soft_lemma_size                       3
% 3.09/1.00  --prop_impl_unit_size                   0
% 3.09/1.00  --prop_impl_unit                        []
% 3.09/1.00  --share_sel_clauses                     true
% 3.09/1.00  --reset_solvers                         false
% 3.09/1.00  --bc_imp_inh                            [conj_cone]
% 3.09/1.00  --conj_cone_tolerance                   3.
% 3.09/1.00  --extra_neg_conj                        none
% 3.09/1.00  --large_theory_mode                     true
% 3.09/1.00  --prolific_symb_bound                   200
% 3.09/1.00  --lt_threshold                          2000
% 3.09/1.00  --clause_weak_htbl                      true
% 3.09/1.00  --gc_record_bc_elim                     false
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing Options
% 3.09/1.00  
% 3.09/1.00  --preprocessing_flag                    true
% 3.09/1.00  --time_out_prep_mult                    0.1
% 3.09/1.00  --splitting_mode                        input
% 3.09/1.00  --splitting_grd                         true
% 3.09/1.00  --splitting_cvd                         false
% 3.09/1.00  --splitting_cvd_svl                     false
% 3.09/1.00  --splitting_nvd                         32
% 3.09/1.00  --sub_typing                            true
% 3.09/1.00  --prep_gs_sim                           true
% 3.09/1.00  --prep_unflatten                        true
% 3.09/1.00  --prep_res_sim                          true
% 3.09/1.00  --prep_upred                            true
% 3.09/1.00  --prep_sem_filter                       exhaustive
% 3.09/1.00  --prep_sem_filter_out                   false
% 3.09/1.00  --pred_elim                             true
% 3.09/1.00  --res_sim_input                         true
% 3.09/1.00  --eq_ax_congr_red                       true
% 3.09/1.00  --pure_diseq_elim                       true
% 3.09/1.00  --brand_transform                       false
% 3.09/1.00  --non_eq_to_eq                          false
% 3.09/1.00  --prep_def_merge                        true
% 3.09/1.00  --prep_def_merge_prop_impl              false
% 3.09/1.00  --prep_def_merge_mbd                    true
% 3.09/1.00  --prep_def_merge_tr_red                 false
% 3.09/1.00  --prep_def_merge_tr_cl                  false
% 3.09/1.00  --smt_preprocessing                     true
% 3.09/1.00  --smt_ac_axioms                         fast
% 3.09/1.00  --preprocessed_out                      false
% 3.09/1.00  --preprocessed_stats                    false
% 3.09/1.00  
% 3.09/1.00  ------ Abstraction refinement Options
% 3.09/1.00  
% 3.09/1.00  --abstr_ref                             []
% 3.09/1.00  --abstr_ref_prep                        false
% 3.09/1.00  --abstr_ref_until_sat                   false
% 3.09/1.00  --abstr_ref_sig_restrict                funpre
% 3.09/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.09/1.00  --abstr_ref_under                       []
% 3.09/1.00  
% 3.09/1.00  ------ SAT Options
% 3.09/1.00  
% 3.09/1.00  --sat_mode                              false
% 3.09/1.00  --sat_fm_restart_options                ""
% 3.09/1.00  --sat_gr_def                            false
% 3.09/1.00  --sat_epr_types                         true
% 3.09/1.00  --sat_non_cyclic_types                  false
% 3.09/1.00  --sat_finite_models                     false
% 3.09/1.00  --sat_fm_lemmas                         false
% 3.09/1.00  --sat_fm_prep                           false
% 3.09/1.00  --sat_fm_uc_incr                        true
% 3.09/1.00  --sat_out_model                         small
% 3.09/1.00  --sat_out_clauses                       false
% 3.09/1.00  
% 3.09/1.00  ------ QBF Options
% 3.09/1.00  
% 3.09/1.00  --qbf_mode                              false
% 3.09/1.00  --qbf_elim_univ                         false
% 3.09/1.00  --qbf_dom_inst                          none
% 3.09/1.00  --qbf_dom_pre_inst                      false
% 3.09/1.00  --qbf_sk_in                             false
% 3.09/1.00  --qbf_pred_elim                         true
% 3.09/1.00  --qbf_split                             512
% 3.09/1.00  
% 3.09/1.00  ------ BMC1 Options
% 3.09/1.00  
% 3.09/1.00  --bmc1_incremental                      false
% 3.09/1.00  --bmc1_axioms                           reachable_all
% 3.09/1.00  --bmc1_min_bound                        0
% 3.09/1.00  --bmc1_max_bound                        -1
% 3.09/1.00  --bmc1_max_bound_default                -1
% 3.09/1.00  --bmc1_symbol_reachability              true
% 3.09/1.00  --bmc1_property_lemmas                  false
% 3.09/1.00  --bmc1_k_induction                      false
% 3.09/1.00  --bmc1_non_equiv_states                 false
% 3.09/1.00  --bmc1_deadlock                         false
% 3.09/1.00  --bmc1_ucm                              false
% 3.09/1.00  --bmc1_add_unsat_core                   none
% 3.09/1.00  --bmc1_unsat_core_children              false
% 3.09/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.09/1.00  --bmc1_out_stat                         full
% 3.09/1.00  --bmc1_ground_init                      false
% 3.09/1.00  --bmc1_pre_inst_next_state              false
% 3.09/1.00  --bmc1_pre_inst_state                   false
% 3.09/1.00  --bmc1_pre_inst_reach_state             false
% 3.09/1.00  --bmc1_out_unsat_core                   false
% 3.09/1.00  --bmc1_aig_witness_out                  false
% 3.09/1.00  --bmc1_verbose                          false
% 3.09/1.00  --bmc1_dump_clauses_tptp                false
% 3.09/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.09/1.00  --bmc1_dump_file                        -
% 3.09/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.09/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.09/1.00  --bmc1_ucm_extend_mode                  1
% 3.09/1.00  --bmc1_ucm_init_mode                    2
% 3.09/1.00  --bmc1_ucm_cone_mode                    none
% 3.09/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.09/1.00  --bmc1_ucm_relax_model                  4
% 3.09/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.09/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.09/1.00  --bmc1_ucm_layered_model                none
% 3.09/1.00  --bmc1_ucm_max_lemma_size               10
% 3.09/1.00  
% 3.09/1.00  ------ AIG Options
% 3.09/1.00  
% 3.09/1.00  --aig_mode                              false
% 3.09/1.00  
% 3.09/1.00  ------ Instantiation Options
% 3.09/1.00  
% 3.09/1.00  --instantiation_flag                    true
% 3.09/1.00  --inst_sos_flag                         false
% 3.09/1.00  --inst_sos_phase                        true
% 3.09/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.09/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.09/1.00  --inst_lit_sel_side                     num_symb
% 3.09/1.00  --inst_solver_per_active                1400
% 3.09/1.00  --inst_solver_calls_frac                1.
% 3.09/1.00  --inst_passive_queue_type               priority_queues
% 3.09/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.09/1.00  --inst_passive_queues_freq              [25;2]
% 3.09/1.00  --inst_dismatching                      true
% 3.09/1.00  --inst_eager_unprocessed_to_passive     true
% 3.09/1.00  --inst_prop_sim_given                   true
% 3.09/1.00  --inst_prop_sim_new                     false
% 3.09/1.00  --inst_subs_new                         false
% 3.09/1.00  --inst_eq_res_simp                      false
% 3.09/1.00  --inst_subs_given                       false
% 3.09/1.00  --inst_orphan_elimination               true
% 3.09/1.00  --inst_learning_loop_flag               true
% 3.09/1.00  --inst_learning_start                   3000
% 3.09/1.00  --inst_learning_factor                  2
% 3.09/1.00  --inst_start_prop_sim_after_learn       3
% 3.09/1.00  --inst_sel_renew                        solver
% 3.09/1.00  --inst_lit_activity_flag                true
% 3.09/1.00  --inst_restr_to_given                   false
% 3.09/1.00  --inst_activity_threshold               500
% 3.09/1.00  --inst_out_proof                        true
% 3.09/1.00  
% 3.09/1.00  ------ Resolution Options
% 3.09/1.00  
% 3.09/1.00  --resolution_flag                       true
% 3.09/1.00  --res_lit_sel                           adaptive
% 3.09/1.00  --res_lit_sel_side                      none
% 3.09/1.00  --res_ordering                          kbo
% 3.09/1.00  --res_to_prop_solver                    active
% 3.09/1.00  --res_prop_simpl_new                    false
% 3.09/1.00  --res_prop_simpl_given                  true
% 3.09/1.00  --res_passive_queue_type                priority_queues
% 3.09/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.09/1.00  --res_passive_queues_freq               [15;5]
% 3.09/1.00  --res_forward_subs                      full
% 3.09/1.00  --res_backward_subs                     full
% 3.09/1.00  --res_forward_subs_resolution           true
% 3.09/1.00  --res_backward_subs_resolution          true
% 3.09/1.00  --res_orphan_elimination                true
% 3.09/1.00  --res_time_limit                        2.
% 3.09/1.00  --res_out_proof                         true
% 3.09/1.00  
% 3.09/1.00  ------ Superposition Options
% 3.09/1.00  
% 3.09/1.00  --superposition_flag                    true
% 3.09/1.00  --sup_passive_queue_type                priority_queues
% 3.09/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.09/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.09/1.00  --demod_completeness_check              fast
% 3.09/1.00  --demod_use_ground                      true
% 3.09/1.00  --sup_to_prop_solver                    passive
% 3.09/1.00  --sup_prop_simpl_new                    true
% 3.09/1.00  --sup_prop_simpl_given                  true
% 3.09/1.00  --sup_fun_splitting                     false
% 3.09/1.00  --sup_smt_interval                      50000
% 3.09/1.00  
% 3.09/1.00  ------ Superposition Simplification Setup
% 3.09/1.00  
% 3.09/1.00  --sup_indices_passive                   []
% 3.09/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.09/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_full_bw                           [BwDemod]
% 3.09/1.00  --sup_immed_triv                        [TrivRules]
% 3.09/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.09/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_immed_bw_main                     []
% 3.09/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.09/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.09/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.09/1.00  
% 3.09/1.00  ------ Combination Options
% 3.09/1.00  
% 3.09/1.00  --comb_res_mult                         3
% 3.09/1.00  --comb_sup_mult                         2
% 3.09/1.00  --comb_inst_mult                        10
% 3.09/1.00  
% 3.09/1.00  ------ Debug Options
% 3.09/1.00  
% 3.09/1.00  --dbg_backtrace                         false
% 3.09/1.00  --dbg_dump_prop_clauses                 false
% 3.09/1.00  --dbg_dump_prop_clauses_file            -
% 3.09/1.00  --dbg_out_stat                          false
% 3.09/1.00  ------ Parsing...
% 3.09/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e 
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.09/1.00  ------ Proving...
% 3.09/1.00  ------ Problem Properties 
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  clauses                                 41
% 3.09/1.00  conjectures                             3
% 3.09/1.00  EPR                                     5
% 3.09/1.00  Horn                                    34
% 3.09/1.00  unary                                   11
% 3.09/1.00  binary                                  12
% 3.09/1.00  lits                                    100
% 3.09/1.00  lits eq                                 43
% 3.09/1.00  fd_pure                                 0
% 3.09/1.00  fd_pseudo                               0
% 3.09/1.00  fd_cond                                 4
% 3.09/1.00  fd_pseudo_cond                          1
% 3.09/1.00  AC symbols                              0
% 3.09/1.00  
% 3.09/1.00  ------ Schedule dynamic 5 is on 
% 3.09/1.00  
% 3.09/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  ------ 
% 3.09/1.00  Current options:
% 3.09/1.00  ------ 
% 3.09/1.00  
% 3.09/1.00  ------ Input Options
% 3.09/1.00  
% 3.09/1.00  --out_options                           all
% 3.09/1.00  --tptp_safe_out                         true
% 3.09/1.00  --problem_path                          ""
% 3.09/1.00  --include_path                          ""
% 3.09/1.00  --clausifier                            res/vclausify_rel
% 3.09/1.00  --clausifier_options                    --mode clausify
% 3.09/1.00  --stdin                                 false
% 3.09/1.00  --stats_out                             all
% 3.09/1.00  
% 3.09/1.00  ------ General Options
% 3.09/1.00  
% 3.09/1.00  --fof                                   false
% 3.09/1.00  --time_out_real                         305.
% 3.09/1.00  --time_out_virtual                      -1.
% 3.09/1.00  --symbol_type_check                     false
% 3.09/1.00  --clausify_out                          false
% 3.09/1.00  --sig_cnt_out                           false
% 3.09/1.00  --trig_cnt_out                          false
% 3.09/1.00  --trig_cnt_out_tolerance                1.
% 3.09/1.00  --trig_cnt_out_sk_spl                   false
% 3.09/1.00  --abstr_cl_out                          false
% 3.09/1.00  
% 3.09/1.00  ------ Global Options
% 3.09/1.00  
% 3.09/1.00  --schedule                              default
% 3.09/1.00  --add_important_lit                     false
% 3.09/1.00  --prop_solver_per_cl                    1000
% 3.09/1.00  --min_unsat_core                        false
% 3.09/1.00  --soft_assumptions                      false
% 3.09/1.00  --soft_lemma_size                       3
% 3.09/1.00  --prop_impl_unit_size                   0
% 3.09/1.00  --prop_impl_unit                        []
% 3.09/1.00  --share_sel_clauses                     true
% 3.09/1.00  --reset_solvers                         false
% 3.09/1.00  --bc_imp_inh                            [conj_cone]
% 3.09/1.00  --conj_cone_tolerance                   3.
% 3.09/1.00  --extra_neg_conj                        none
% 3.09/1.00  --large_theory_mode                     true
% 3.09/1.00  --prolific_symb_bound                   200
% 3.09/1.00  --lt_threshold                          2000
% 3.09/1.00  --clause_weak_htbl                      true
% 3.09/1.00  --gc_record_bc_elim                     false
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing Options
% 3.09/1.00  
% 3.09/1.00  --preprocessing_flag                    true
% 3.09/1.00  --time_out_prep_mult                    0.1
% 3.09/1.00  --splitting_mode                        input
% 3.09/1.00  --splitting_grd                         true
% 3.09/1.00  --splitting_cvd                         false
% 3.09/1.00  --splitting_cvd_svl                     false
% 3.09/1.00  --splitting_nvd                         32
% 3.09/1.00  --sub_typing                            true
% 3.09/1.00  --prep_gs_sim                           true
% 3.09/1.00  --prep_unflatten                        true
% 3.09/1.00  --prep_res_sim                          true
% 3.09/1.00  --prep_upred                            true
% 3.09/1.00  --prep_sem_filter                       exhaustive
% 3.09/1.00  --prep_sem_filter_out                   false
% 3.09/1.00  --pred_elim                             true
% 3.09/1.00  --res_sim_input                         true
% 3.09/1.00  --eq_ax_congr_red                       true
% 3.09/1.00  --pure_diseq_elim                       true
% 3.09/1.00  --brand_transform                       false
% 3.09/1.00  --non_eq_to_eq                          false
% 3.09/1.00  --prep_def_merge                        true
% 3.09/1.00  --prep_def_merge_prop_impl              false
% 3.09/1.00  --prep_def_merge_mbd                    true
% 3.09/1.00  --prep_def_merge_tr_red                 false
% 3.09/1.00  --prep_def_merge_tr_cl                  false
% 3.09/1.00  --smt_preprocessing                     true
% 3.09/1.00  --smt_ac_axioms                         fast
% 3.09/1.00  --preprocessed_out                      false
% 3.09/1.00  --preprocessed_stats                    false
% 3.09/1.00  
% 3.09/1.00  ------ Abstraction refinement Options
% 3.09/1.00  
% 3.09/1.00  --abstr_ref                             []
% 3.09/1.00  --abstr_ref_prep                        false
% 3.09/1.00  --abstr_ref_until_sat                   false
% 3.09/1.00  --abstr_ref_sig_restrict                funpre
% 3.09/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.09/1.00  --abstr_ref_under                       []
% 3.09/1.00  
% 3.09/1.00  ------ SAT Options
% 3.09/1.00  
% 3.09/1.00  --sat_mode                              false
% 3.09/1.00  --sat_fm_restart_options                ""
% 3.09/1.00  --sat_gr_def                            false
% 3.09/1.00  --sat_epr_types                         true
% 3.09/1.00  --sat_non_cyclic_types                  false
% 3.09/1.00  --sat_finite_models                     false
% 3.09/1.00  --sat_fm_lemmas                         false
% 3.09/1.00  --sat_fm_prep                           false
% 3.09/1.00  --sat_fm_uc_incr                        true
% 3.09/1.00  --sat_out_model                         small
% 3.09/1.00  --sat_out_clauses                       false
% 3.09/1.00  
% 3.09/1.00  ------ QBF Options
% 3.09/1.00  
% 3.09/1.00  --qbf_mode                              false
% 3.09/1.00  --qbf_elim_univ                         false
% 3.09/1.00  --qbf_dom_inst                          none
% 3.09/1.00  --qbf_dom_pre_inst                      false
% 3.09/1.00  --qbf_sk_in                             false
% 3.09/1.00  --qbf_pred_elim                         true
% 3.09/1.00  --qbf_split                             512
% 3.09/1.00  
% 3.09/1.00  ------ BMC1 Options
% 3.09/1.00  
% 3.09/1.00  --bmc1_incremental                      false
% 3.09/1.00  --bmc1_axioms                           reachable_all
% 3.09/1.00  --bmc1_min_bound                        0
% 3.09/1.00  --bmc1_max_bound                        -1
% 3.09/1.00  --bmc1_max_bound_default                -1
% 3.09/1.00  --bmc1_symbol_reachability              true
% 3.09/1.00  --bmc1_property_lemmas                  false
% 3.09/1.00  --bmc1_k_induction                      false
% 3.09/1.00  --bmc1_non_equiv_states                 false
% 3.09/1.00  --bmc1_deadlock                         false
% 3.09/1.00  --bmc1_ucm                              false
% 3.09/1.00  --bmc1_add_unsat_core                   none
% 3.09/1.00  --bmc1_unsat_core_children              false
% 3.09/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.09/1.00  --bmc1_out_stat                         full
% 3.09/1.00  --bmc1_ground_init                      false
% 3.09/1.00  --bmc1_pre_inst_next_state              false
% 3.09/1.00  --bmc1_pre_inst_state                   false
% 3.09/1.00  --bmc1_pre_inst_reach_state             false
% 3.09/1.00  --bmc1_out_unsat_core                   false
% 3.09/1.00  --bmc1_aig_witness_out                  false
% 3.09/1.00  --bmc1_verbose                          false
% 3.09/1.00  --bmc1_dump_clauses_tptp                false
% 3.09/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.09/1.00  --bmc1_dump_file                        -
% 3.09/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.09/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.09/1.00  --bmc1_ucm_extend_mode                  1
% 3.09/1.00  --bmc1_ucm_init_mode                    2
% 3.09/1.00  --bmc1_ucm_cone_mode                    none
% 3.09/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.09/1.00  --bmc1_ucm_relax_model                  4
% 3.09/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.09/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.09/1.00  --bmc1_ucm_layered_model                none
% 3.09/1.00  --bmc1_ucm_max_lemma_size               10
% 3.09/1.00  
% 3.09/1.00  ------ AIG Options
% 3.09/1.00  
% 3.09/1.00  --aig_mode                              false
% 3.09/1.00  
% 3.09/1.00  ------ Instantiation Options
% 3.09/1.00  
% 3.09/1.00  --instantiation_flag                    true
% 3.09/1.00  --inst_sos_flag                         false
% 3.09/1.00  --inst_sos_phase                        true
% 3.09/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.09/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.09/1.00  --inst_lit_sel_side                     none
% 3.09/1.00  --inst_solver_per_active                1400
% 3.09/1.00  --inst_solver_calls_frac                1.
% 3.09/1.00  --inst_passive_queue_type               priority_queues
% 3.09/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.09/1.00  --inst_passive_queues_freq              [25;2]
% 3.09/1.00  --inst_dismatching                      true
% 3.09/1.00  --inst_eager_unprocessed_to_passive     true
% 3.09/1.00  --inst_prop_sim_given                   true
% 3.09/1.00  --inst_prop_sim_new                     false
% 3.09/1.00  --inst_subs_new                         false
% 3.09/1.00  --inst_eq_res_simp                      false
% 3.09/1.00  --inst_subs_given                       false
% 3.09/1.00  --inst_orphan_elimination               true
% 3.09/1.00  --inst_learning_loop_flag               true
% 3.09/1.00  --inst_learning_start                   3000
% 3.09/1.00  --inst_learning_factor                  2
% 3.09/1.00  --inst_start_prop_sim_after_learn       3
% 3.09/1.00  --inst_sel_renew                        solver
% 3.09/1.00  --inst_lit_activity_flag                true
% 3.09/1.00  --inst_restr_to_given                   false
% 3.09/1.00  --inst_activity_threshold               500
% 3.09/1.00  --inst_out_proof                        true
% 3.09/1.00  
% 3.09/1.00  ------ Resolution Options
% 3.09/1.00  
% 3.09/1.00  --resolution_flag                       false
% 3.09/1.00  --res_lit_sel                           adaptive
% 3.09/1.00  --res_lit_sel_side                      none
% 3.09/1.00  --res_ordering                          kbo
% 3.09/1.00  --res_to_prop_solver                    active
% 3.09/1.00  --res_prop_simpl_new                    false
% 3.09/1.00  --res_prop_simpl_given                  true
% 3.09/1.00  --res_passive_queue_type                priority_queues
% 3.09/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.09/1.00  --res_passive_queues_freq               [15;5]
% 3.09/1.00  --res_forward_subs                      full
% 3.09/1.00  --res_backward_subs                     full
% 3.09/1.00  --res_forward_subs_resolution           true
% 3.09/1.00  --res_backward_subs_resolution          true
% 3.09/1.00  --res_orphan_elimination                true
% 3.09/1.00  --res_time_limit                        2.
% 3.09/1.00  --res_out_proof                         true
% 3.09/1.00  
% 3.09/1.00  ------ Superposition Options
% 3.09/1.00  
% 3.09/1.00  --superposition_flag                    true
% 3.09/1.00  --sup_passive_queue_type                priority_queues
% 3.09/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.09/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.09/1.00  --demod_completeness_check              fast
% 3.09/1.00  --demod_use_ground                      true
% 3.09/1.00  --sup_to_prop_solver                    passive
% 3.09/1.00  --sup_prop_simpl_new                    true
% 3.09/1.00  --sup_prop_simpl_given                  true
% 3.09/1.00  --sup_fun_splitting                     false
% 3.09/1.00  --sup_smt_interval                      50000
% 3.09/1.00  
% 3.09/1.00  ------ Superposition Simplification Setup
% 3.09/1.00  
% 3.09/1.00  --sup_indices_passive                   []
% 3.09/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.09/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.09/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_full_bw                           [BwDemod]
% 3.09/1.00  --sup_immed_triv                        [TrivRules]
% 3.09/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.09/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_immed_bw_main                     []
% 3.09/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.09/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.09/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.09/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.09/1.00  
% 3.09/1.00  ------ Combination Options
% 3.09/1.00  
% 3.09/1.00  --comb_res_mult                         3
% 3.09/1.00  --comb_sup_mult                         2
% 3.09/1.00  --comb_inst_mult                        10
% 3.09/1.00  
% 3.09/1.00  ------ Debug Options
% 3.09/1.00  
% 3.09/1.00  --dbg_backtrace                         false
% 3.09/1.00  --dbg_dump_prop_clauses                 false
% 3.09/1.00  --dbg_dump_prop_clauses_file            -
% 3.09/1.00  --dbg_out_stat                          false
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  ------ Proving...
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  % SZS status Theorem for theBenchmark.p
% 3.09/1.00  
% 3.09/1.00   Resolution empty clause
% 3.09/1.00  
% 3.09/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.09/1.00  
% 3.09/1.00  fof(f13,axiom,(
% 3.09/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f32,plain,(
% 3.09/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(ennf_transformation,[],[f13])).
% 3.09/1.00  
% 3.09/1.00  fof(f33,plain,(
% 3.09/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(flattening,[],[f32])).
% 3.09/1.00  
% 3.09/1.00  fof(f47,plain,(
% 3.09/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(nnf_transformation,[],[f33])).
% 3.09/1.00  
% 3.09/1.00  fof(f74,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f47])).
% 3.09/1.00  
% 3.09/1.00  fof(f16,conjecture,(
% 3.09/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f17,negated_conjecture,(
% 3.09/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.09/1.00    inference(negated_conjecture,[],[f16])).
% 3.09/1.00  
% 3.09/1.00  fof(f36,plain,(
% 3.09/1.00    ? [X0,X1,X2] : (((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & (k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.09/1.00    inference(ennf_transformation,[],[f17])).
% 3.09/1.00  
% 3.09/1.00  fof(f37,plain,(
% 3.09/1.00    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.09/1.00    inference(flattening,[],[f36])).
% 3.09/1.00  
% 3.09/1.00  fof(f50,plain,(
% 3.09/1.00    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((~m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) | ~v1_funct_2(k2_funct_1(sK4),sK3,sK2) | ~v1_funct_1(k2_funct_1(sK4))) & k2_relset_1(sK2,sK3,sK4) = sK3 & v2_funct_1(sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(sK4,sK2,sK3) & v1_funct_1(sK4))),
% 3.09/1.00    introduced(choice_axiom,[])).
% 3.09/1.00  
% 3.09/1.00  fof(f51,plain,(
% 3.09/1.00    (~m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) | ~v1_funct_2(k2_funct_1(sK4),sK3,sK2) | ~v1_funct_1(k2_funct_1(sK4))) & k2_relset_1(sK2,sK3,sK4) = sK3 & v2_funct_1(sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(sK4,sK2,sK3) & v1_funct_1(sK4)),
% 3.09/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f37,f50])).
% 3.09/1.00  
% 3.09/1.00  fof(f88,plain,(
% 3.09/1.00    v1_funct_2(sK4,sK2,sK3)),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f89,plain,(
% 3.09/1.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f11,axiom,(
% 3.09/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f30,plain,(
% 3.09/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(ennf_transformation,[],[f11])).
% 3.09/1.00  
% 3.09/1.00  fof(f72,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f30])).
% 3.09/1.00  
% 3.09/1.00  fof(f12,axiom,(
% 3.09/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f31,plain,(
% 3.09/1.00    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(ennf_transformation,[],[f12])).
% 3.09/1.00  
% 3.09/1.00  fof(f73,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f31])).
% 3.09/1.00  
% 3.09/1.00  fof(f91,plain,(
% 3.09/1.00    k2_relset_1(sK2,sK3,sK4) = sK3),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f15,axiom,(
% 3.09/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f34,plain,(
% 3.09/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.09/1.00    inference(ennf_transformation,[],[f15])).
% 3.09/1.00  
% 3.09/1.00  fof(f35,plain,(
% 3.09/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.09/1.00    inference(flattening,[],[f34])).
% 3.09/1.00  
% 3.09/1.00  fof(f85,plain,(
% 3.09/1.00    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f35])).
% 3.09/1.00  
% 3.09/1.00  fof(f92,plain,(
% 3.09/1.00    ~m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) | ~v1_funct_2(k2_funct_1(sK4),sK3,sK2) | ~v1_funct_1(k2_funct_1(sK4))),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f10,axiom,(
% 3.09/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f29,plain,(
% 3.09/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(ennf_transformation,[],[f10])).
% 3.09/1.00  
% 3.09/1.00  fof(f71,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f29])).
% 3.09/1.00  
% 3.09/1.00  fof(f87,plain,(
% 3.09/1.00    v1_funct_1(sK4)),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f8,axiom,(
% 3.09/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f25,plain,(
% 3.09/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.09/1.00    inference(ennf_transformation,[],[f8])).
% 3.09/1.00  
% 3.09/1.00  fof(f26,plain,(
% 3.09/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.09/1.00    inference(flattening,[],[f25])).
% 3.09/1.00  
% 3.09/1.00  fof(f68,plain,(
% 3.09/1.00    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f26])).
% 3.09/1.00  
% 3.09/1.00  fof(f67,plain,(
% 3.09/1.00    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f26])).
% 3.09/1.00  
% 3.09/1.00  fof(f9,axiom,(
% 3.09/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f27,plain,(
% 3.09/1.00    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.09/1.00    inference(ennf_transformation,[],[f9])).
% 3.09/1.00  
% 3.09/1.00  fof(f28,plain,(
% 3.09/1.00    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.09/1.00    inference(flattening,[],[f27])).
% 3.09/1.00  
% 3.09/1.00  fof(f70,plain,(
% 3.09/1.00    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f28])).
% 3.09/1.00  
% 3.09/1.00  fof(f90,plain,(
% 3.09/1.00    v2_funct_1(sK4)),
% 3.09/1.00    inference(cnf_transformation,[],[f51])).
% 3.09/1.00  
% 3.09/1.00  fof(f69,plain,(
% 3.09/1.00    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f28])).
% 3.09/1.00  
% 3.09/1.00  fof(f86,plain,(
% 3.09/1.00    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f35])).
% 3.09/1.00  
% 3.09/1.00  fof(f7,axiom,(
% 3.09/1.00    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f23,plain,(
% 3.09/1.00    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.09/1.00    inference(ennf_transformation,[],[f7])).
% 3.09/1.00  
% 3.09/1.00  fof(f24,plain,(
% 3.09/1.00    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.09/1.00    inference(flattening,[],[f23])).
% 3.09/1.00  
% 3.09/1.00  fof(f66,plain,(
% 3.09/1.00    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f24])).
% 3.09/1.00  
% 3.09/1.00  fof(f5,axiom,(
% 3.09/1.00    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f44,plain,(
% 3.09/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.09/1.00    inference(nnf_transformation,[],[f5])).
% 3.09/1.00  
% 3.09/1.00  fof(f45,plain,(
% 3.09/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.09/1.00    inference(flattening,[],[f44])).
% 3.09/1.00  
% 3.09/1.00  fof(f61,plain,(
% 3.09/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 3.09/1.00    inference(cnf_transformation,[],[f45])).
% 3.09/1.00  
% 3.09/1.00  fof(f96,plain,(
% 3.09/1.00    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 3.09/1.00    inference(equality_resolution,[],[f61])).
% 3.09/1.00  
% 3.09/1.00  fof(f77,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f47])).
% 3.09/1.00  
% 3.09/1.00  fof(f100,plain,(
% 3.09/1.00    ( ! [X2,X1] : (v1_funct_2(X2,k1_xboole_0,X1) | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 3.09/1.00    inference(equality_resolution,[],[f77])).
% 3.09/1.00  
% 3.09/1.00  fof(f65,plain,(
% 3.09/1.00    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f24])).
% 3.09/1.00  
% 3.09/1.00  fof(f78,plain,(
% 3.09/1.00    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f47])).
% 3.09/1.00  
% 3.09/1.00  fof(f99,plain,(
% 3.09/1.00    ( ! [X2,X0] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 3.09/1.00    inference(equality_resolution,[],[f78])).
% 3.09/1.00  
% 3.09/1.00  fof(f14,axiom,(
% 3.09/1.00    ! [X0,X1] : ? [X2] : (v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & v5_relat_1(X2,X1) & v4_relat_1(X2,X0) & v1_relat_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f19,plain,(
% 3.09/1.00    ! [X0,X1] : ? [X2] : (v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & v4_relat_1(X2,X0) & v1_relat_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(pure_predicate_removal,[],[f14])).
% 3.09/1.00  
% 3.09/1.00  fof(f20,plain,(
% 3.09/1.00    ! [X0,X1] : ? [X2] : (v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & v1_relat_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(pure_predicate_removal,[],[f19])).
% 3.09/1.00  
% 3.09/1.00  fof(f48,plain,(
% 3.09/1.00    ! [X1,X0] : (? [X2] : (v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & v1_relat_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (v1_funct_2(sK1(X0,X1),X0,X1) & v1_funct_1(sK1(X0,X1)) & v1_relat_1(sK1(X0,X1)) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.09/1.00    introduced(choice_axiom,[])).
% 3.09/1.00  
% 3.09/1.00  fof(f49,plain,(
% 3.09/1.00    ! [X0,X1] : (v1_funct_2(sK1(X0,X1),X0,X1) & v1_funct_1(sK1(X0,X1)) & v1_relat_1(sK1(X0,X1)) & m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.09/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f48])).
% 3.09/1.00  
% 3.09/1.00  fof(f83,plain,(
% 3.09/1.00    ( ! [X0,X1] : (v1_funct_2(sK1(X0,X1),X0,X1)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f49])).
% 3.09/1.00  
% 3.09/1.00  fof(f80,plain,(
% 3.09/1.00    ( ! [X0,X1] : (m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.09/1.00    inference(cnf_transformation,[],[f49])).
% 3.09/1.00  
% 3.09/1.00  fof(f62,plain,(
% 3.09/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 3.09/1.00    inference(cnf_transformation,[],[f45])).
% 3.09/1.00  
% 3.09/1.00  fof(f95,plain,(
% 3.09/1.00    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 3.09/1.00    inference(equality_resolution,[],[f62])).
% 3.09/1.00  
% 3.09/1.00  fof(f6,axiom,(
% 3.09/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f46,plain,(
% 3.09/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.09/1.00    inference(nnf_transformation,[],[f6])).
% 3.09/1.00  
% 3.09/1.00  fof(f64,plain,(
% 3.09/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.09/1.00    inference(cnf_transformation,[],[f46])).
% 3.09/1.00  
% 3.09/1.00  fof(f4,axiom,(
% 3.09/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.09/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.09/1.00  
% 3.09/1.00  fof(f42,plain,(
% 3.09/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.09/1.00    inference(nnf_transformation,[],[f4])).
% 3.09/1.00  
% 3.09/1.00  fof(f43,plain,(
% 3.09/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.09/1.00    inference(flattening,[],[f42])).
% 3.09/1.00  
% 3.09/1.00  fof(f57,plain,(
% 3.09/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.09/1.00    inference(cnf_transformation,[],[f43])).
% 3.09/1.00  
% 3.09/1.00  fof(f94,plain,(
% 3.09/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.09/1.00    inference(equality_resolution,[],[f57])).
% 3.09/1.00  
% 3.09/1.00  cnf(c_27,plain,
% 3.09/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.09/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.09/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.09/1.00      | k1_xboole_0 = X2 ),
% 3.09/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_39,negated_conjecture,
% 3.09/1.00      ( v1_funct_2(sK4,sK2,sK3) ),
% 3.09/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_707,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.09/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.09/1.00      | sK2 != X1
% 3.09/1.00      | sK3 != X2
% 3.09/1.00      | sK4 != X0
% 3.09/1.00      | k1_xboole_0 = X2 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_27,c_39]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_708,plain,
% 3.09/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 3.09/1.00      | k1_relset_1(sK2,sK3,sK4) = sK2
% 3.09/1.00      | k1_xboole_0 = sK3 ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_707]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_38,negated_conjecture,
% 3.09/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
% 3.09/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_710,plain,
% 3.09/1.00      ( k1_relset_1(sK2,sK3,sK4) = sK2 | k1_xboole_0 = sK3 ),
% 3.09/1.00      inference(global_propositional_subsumption,[status(thm)],[c_708,c_38]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1587,plain,
% 3.09/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_20,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.09/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1593,plain,
% 3.09/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.09/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3904,plain,
% 3.09/1.00      ( k1_relset_1(sK2,sK3,sK4) = k1_relat_1(sK4) ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_1587,c_1593]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4148,plain,
% 3.09/1.00      ( k1_relat_1(sK4) = sK2 | sK3 = k1_xboole_0 ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_710,c_3904]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_21,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.09/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f73]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1592,plain,
% 3.09/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.09/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3223,plain,
% 3.09/1.00      ( k2_relset_1(sK2,sK3,sK4) = k2_relat_1(sK4) ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_1587,c_1592]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_36,negated_conjecture,
% 3.09/1.00      ( k2_relset_1(sK2,sK3,sK4) = sK3 ),
% 3.09/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3239,plain,
% 3.09/1.00      ( k2_relat_1(sK4) = sK3 ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_3223,c_36]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_33,plain,
% 3.09/1.00      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 3.09/1.00      | ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_35,negated_conjecture,
% 3.09/1.00      ( ~ v1_funct_2(k2_funct_1(sK4),sK3,sK2)
% 3.09/1.00      | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4)) ),
% 3.09/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_731,plain,
% 3.09/1.00      ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 3.09/1.00      | ~ v1_relat_1(X0)
% 3.09/1.00      | k2_funct_1(sK4) != X0
% 3.09/1.00      | k1_relat_1(X0) != sK3
% 3.09/1.00      | k2_relat_1(X0) != sK2 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_33,c_35]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_732,plain,
% 3.09/1.00      ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 3.09/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 3.09/1.00      | k1_relat_1(k2_funct_1(sK4)) != sK3
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2 ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_731]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_19,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f71]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_744,plain,
% 3.09/1.00      ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 3.09/1.00      | k1_relat_1(k2_funct_1(sK4)) != sK3
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2 ),
% 3.09/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_732,c_19]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1574,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) != sK3
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_744]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_40,negated_conjecture,
% 3.09/1.00      ( v1_funct_1(sK4) ),
% 3.09/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_41,plain,
% 3.09/1.00      ( v1_funct_1(sK4) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_43,plain,
% 3.09/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_733,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) != sK3
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top
% 3.09/1.00      | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_732]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_15,plain,
% 3.09/1.00      ( ~ v1_funct_1(X0) | v1_funct_1(k2_funct_1(X0)) | ~ v1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1895,plain,
% 3.09/1.00      ( v1_funct_1(k2_funct_1(sK4)) | ~ v1_funct_1(sK4) | ~ v1_relat_1(sK4) ),
% 3.09/1.00      inference(instantiation,[status(thm)],[c_15]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1896,plain,
% 3.09/1.00      ( v1_funct_1(k2_funct_1(sK4)) = iProver_top
% 3.09/1.00      | v1_funct_1(sK4) != iProver_top
% 3.09/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_1895]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_16,plain,
% 3.09/1.00      ( ~ v1_funct_1(X0) | ~ v1_relat_1(X0) | v1_relat_1(k2_funct_1(X0)) ),
% 3.09/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1903,plain,
% 3.09/1.00      ( ~ v1_funct_1(sK4) | v1_relat_1(k2_funct_1(sK4)) | ~ v1_relat_1(sK4) ),
% 3.09/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1904,plain,
% 3.09/1.00      ( v1_funct_1(sK4) != iProver_top
% 3.09/1.00      | v1_relat_1(k2_funct_1(sK4)) = iProver_top
% 3.09/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_1903]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1911,plain,
% 3.09/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
% 3.09/1.00      | v1_relat_1(sK4) ),
% 3.09/1.00      inference(instantiation,[status(thm)],[c_19]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1912,plain,
% 3.09/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) != iProver_top
% 3.09/1.00      | v1_relat_1(sK4) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_1911]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2006,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2
% 3.09/1.00      | k1_relat_1(k2_funct_1(sK4)) != sK3 ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_1574,c_41,c_43,c_733,c_1896,c_1904,c_1912]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2007,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) != sK3
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) != sK2
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 3.09/1.00      inference(renaming,[status(thm)],[c_2006]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_17,plain,
% 3.09/1.00      ( ~ v2_funct_1(X0)
% 3.09/1.00      | ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0)
% 3.09/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_37,negated_conjecture,
% 3.09/1.00      ( v2_funct_1(sK4) ),
% 3.09/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_498,plain,
% 3.09/1.00      ( ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0)
% 3.09/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.09/1.00      | sK4 != X0 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_37]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_499,plain,
% 3.09/1.00      ( ~ v1_funct_1(sK4)
% 3.09/1.00      | ~ v1_relat_1(sK4)
% 3.09/1.00      | k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_498]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_501,plain,
% 3.09/1.00      ( ~ v1_relat_1(sK4) | k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
% 3.09/1.00      inference(global_propositional_subsumption,[status(thm)],[c_499,c_40]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1583,plain,
% 3.09/1.00      ( k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4)
% 3.09/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_501]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1915,plain,
% 3.09/1.00      ( k2_relat_1(k2_funct_1(sK4)) = k1_relat_1(sK4) ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_1583,c_40,c_38,c_499,c_1911]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_18,plain,
% 3.09/1.00      ( ~ v2_funct_1(X0)
% 3.09/1.00      | ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0)
% 3.09/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_484,plain,
% 3.09/1.00      ( ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0)
% 3.09/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 3.09/1.00      | sK4 != X0 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_18,c_37]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_485,plain,
% 3.09/1.00      ( ~ v1_funct_1(sK4)
% 3.09/1.00      | ~ v1_relat_1(sK4)
% 3.09/1.00      | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_484]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_487,plain,
% 3.09/1.00      ( ~ v1_relat_1(sK4) | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 3.09/1.00      inference(global_propositional_subsumption,[status(thm)],[c_485,c_40]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1584,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4)
% 3.09/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_487]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1919,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_1584,c_40,c_38,c_485,c_1911]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2010,plain,
% 3.09/1.00      ( k1_relat_1(sK4) != sK2
% 3.09/1.00      | k2_relat_1(sK4) != sK3
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_2007,c_1915,c_1919]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3291,plain,
% 3.09/1.00      ( k1_relat_1(sK4) != sK2
% 3.09/1.00      | sK3 != sK3
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_3239,c_2010]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3295,plain,
% 3.09/1.00      ( k1_relat_1(sK4) != sK2
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 3.09/1.00      inference(equality_resolution_simp,[status(thm)],[c_3291]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4351,plain,
% 3.09/1.00      ( sK3 = k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_4148,c_3295]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_32,plain,
% 3.09/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 3.09/1.00      | ~ v1_funct_1(X0)
% 3.09/1.00      | ~ v1_relat_1(X0) ),
% 3.09/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1588,plain,
% 3.09/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
% 3.09/1.00      | v1_funct_1(X0) != iProver_top
% 3.09/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2677,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK4)),k1_relat_1(sK4)))) = iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top
% 3.09/1.00      | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_1915,c_1588]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2688,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK4),k1_relat_1(sK4)))) = iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top
% 3.09/1.00      | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_2677,c_1919]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2889,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k2_relat_1(sK4),k1_relat_1(sK4)))) = iProver_top ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_2688,c_41,c_43,c_1896,c_1904,c_1912]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3289,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,k1_relat_1(sK4)))) = iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_3239,c_2889]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4245,plain,
% 3.09/1.00      ( sK3 = k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_4148,c_3289]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4431,plain,
% 3.09/1.00      ( sK3 = k1_xboole_0 ),
% 3.09/1.00      inference(global_propositional_subsumption,[status(thm)],[c_4351,c_4245]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_13,plain,
% 3.09/1.00      ( ~ v1_relat_1(X0) | k2_relat_1(X0) != k1_xboole_0 | k1_xboole_0 = X0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f66]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1598,plain,
% 3.09/1.00      ( k2_relat_1(X0) != k1_xboole_0
% 3.09/1.00      | k1_xboole_0 = X0
% 3.09/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3373,plain,
% 3.09/1.00      ( sK3 != k1_xboole_0
% 3.09/1.00      | sK4 = k1_xboole_0
% 3.09/1.00      | v1_relat_1(sK4) != iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_3239,c_1598]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3387,plain,
% 3.09/1.00      ( ~ v1_relat_1(sK4) | sK3 != k1_xboole_0 | sK4 = k1_xboole_0 ),
% 3.09/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_3373]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3696,plain,
% 3.09/1.00      ( sK4 = k1_xboole_0 | sK3 != k1_xboole_0 ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_3373,c_38,c_1911,c_3387]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3697,plain,
% 3.09/1.00      ( sK3 != k1_xboole_0 | sK4 = k1_xboole_0 ),
% 3.09/1.00      inference(renaming,[status(thm)],[c_3696]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4440,plain,
% 3.09/1.00      ( sK4 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4431,c_3697]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4530,plain,
% 3.09/1.00      ( sK4 = k1_xboole_0 ),
% 3.09/1.00      inference(equality_resolution_simp,[status(thm)],[c_4440]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4441,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_relat_1(sK4)))) = iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4431,c_3289]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_9,plain,
% 3.09/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f96]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4517,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4441,c_9]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_24,plain,
% 3.09/1.00      ( v1_funct_2(X0,k1_xboole_0,X1)
% 3.09/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 3.09/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f100]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_624,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 3.09/1.00      | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 3.09/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
% 3.09/1.00      | k2_funct_1(sK4) != X0
% 3.09/1.00      | sK2 != X1
% 3.09/1.00      | sK3 != k1_xboole_0 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_24,c_35]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_625,plain,
% 3.09/1.00      ( ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 3.09/1.00      | ~ m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2)))
% 3.09/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 3.09/1.00      | k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | sK3 != k1_xboole_0 ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_624]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1579,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | sK3 != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_625]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1787,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | sK3 != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 3.09/1.00      | v1_funct_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_1579,c_9]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2182,plain,
% 3.09/1.00      ( m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | sK3 != k1_xboole_0
% 3.09/1.00      | k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0 ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_1787,c_41,c_43,c_1896,c_1912]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2183,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | sK3 != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.09/1.00      inference(renaming,[status(thm)],[c_2182]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4450,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | k1_xboole_0 != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4431,c_2183]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4488,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) != iProver_top
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.09/1.00      inference(equality_resolution_simp,[status(thm)],[c_4450]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4492,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0
% 3.09/1.00      | m1_subset_1(k2_funct_1(sK4),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4488,c_9]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4520,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(sK4)) != k1_xboole_0 ),
% 3.09/1.00      inference(backward_subsumption_resolution,[status(thm)],[c_4517,c_4492]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4533,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k2_funct_1(k1_xboole_0)) != k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4530,c_4520]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3292,plain,
% 3.09/1.00      ( k1_relat_1(k2_funct_1(sK4)) = sK3 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_3239,c_1919]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_14,plain,
% 3.09/1.00      ( ~ v1_relat_1(X0) | k1_relat_1(X0) != k1_xboole_0 | k1_xboole_0 = X0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1597,plain,
% 3.09/1.00      ( k1_relat_1(X0) != k1_xboole_0
% 3.09/1.00      | k1_xboole_0 = X0
% 3.09/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3454,plain,
% 3.09/1.00      ( k2_funct_1(sK4) = k1_xboole_0
% 3.09/1.00      | sK3 != k1_xboole_0
% 3.09/1.00      | v1_relat_1(k2_funct_1(sK4)) != iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_3292,c_1597]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5050,plain,
% 3.09/1.00      ( k2_funct_1(sK4) = k1_xboole_0 ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_3454,c_41,c_43,c_1904,c_1912,c_4245,c_4351]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5075,plain,
% 3.09/1.00      ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4530,c_5050]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5666,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,sK2,k1_xboole_0) != k1_xboole_0 ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_4533,c_5075]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_23,plain,
% 3.09/1.00      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 3.09/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 3.09/1.00      | k1_xboole_0 = X1
% 3.09/1.00      | k1_xboole_0 = X0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f99]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_28,plain,
% 3.09/1.00      ( v1_funct_2(sK1(X0,X1),X0,X1) ),
% 3.09/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_552,plain,
% 3.09/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 3.09/1.00      | X2 != X1
% 3.09/1.00      | sK1(X2,X3) != X0
% 3.09/1.00      | k1_xboole_0 != X3
% 3.09/1.00      | k1_xboole_0 = X0
% 3.09/1.00      | k1_xboole_0 = X1 ),
% 3.09/1.00      inference(resolution_lifted,[status(thm)],[c_23,c_28]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_553,plain,
% 3.09/1.00      ( ~ m1_subset_1(sK1(X0,k1_xboole_0),k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))
% 3.09/1.00      | k1_xboole_0 = X0
% 3.09/1.00      | k1_xboole_0 = sK1(X0,k1_xboole_0) ),
% 3.09/1.00      inference(unflattening,[status(thm)],[c_552]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_31,plain,
% 3.09/1.00      ( m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.09/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_563,plain,
% 3.09/1.00      ( k1_xboole_0 = X0 | k1_xboole_0 = sK1(X0,k1_xboole_0) ),
% 3.09/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_553,c_31]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_1589,plain,
% 3.09/1.00      ( m1_subset_1(sK1(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2463,plain,
% 3.09/1.00      ( k1_xboole_0 = X0
% 3.09/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) = iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_563,c_1589]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_8,plain,
% 3.09/1.00      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 3.09/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2472,plain,
% 3.09/1.00      ( k1_xboole_0 = X0
% 3.09/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_2463,c_8]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_11,plain,
% 3.09/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.09/1.00      inference(cnf_transformation,[],[f64]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_113,plain,
% 3.09/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 3.09/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_115,plain,
% 3.09/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top
% 3.09/1.00      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.09/1.00      inference(instantiation,[status(thm)],[c_113]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_7,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f94]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_118,plain,
% 3.09/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.09/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_120,plain,
% 3.09/1.00      ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 3.09/1.00      inference(instantiation,[status(thm)],[c_118]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_2714,plain,
% 3.09/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 3.09/1.00      inference(global_propositional_subsumption,
% 3.09/1.00                [status(thm)],
% 3.09/1.00                [c_2472,c_115,c_120]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_3908,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,X0,X1) = k1_relat_1(X1)
% 3.09/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_9,c_1593]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4133,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_relat_1(k1_xboole_0) ),
% 3.09/1.00      inference(superposition,[status(thm)],[c_2714,c_3908]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5054,plain,
% 3.09/1.00      ( k1_relat_1(sK4) = k2_relat_1(k1_xboole_0) ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_5050,c_1915]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4446,plain,
% 3.09/1.00      ( k2_relat_1(sK4) = k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4431,c_3239]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_4540,plain,
% 3.09/1.00      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_4530,c_4446]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5056,plain,
% 3.09/1.00      ( k1_relat_1(sK4) = k1_xboole_0 ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_5054,c_4540]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5396,plain,
% 3.09/1.00      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_5056,c_4530]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5577,plain,
% 3.09/1.00      ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_xboole_0 ),
% 3.09/1.00      inference(light_normalisation,[status(thm)],[c_4133,c_5396]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5667,plain,
% 3.09/1.00      ( k1_xboole_0 != k1_xboole_0 ),
% 3.09/1.00      inference(demodulation,[status(thm)],[c_5666,c_5577]) ).
% 3.09/1.00  
% 3.09/1.00  cnf(c_5668,plain,
% 3.09/1.00      ( $false ),
% 3.09/1.00      inference(equality_resolution_simp,[status(thm)],[c_5667]) ).
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.09/1.00  
% 3.09/1.00  ------                               Statistics
% 3.09/1.00  
% 3.09/1.00  ------ General
% 3.09/1.00  
% 3.09/1.00  abstr_ref_over_cycles:                  0
% 3.09/1.00  abstr_ref_under_cycles:                 0
% 3.09/1.00  gc_basic_clause_elim:                   0
% 3.09/1.00  forced_gc_time:                         0
% 3.09/1.00  parsing_time:                           0.028
% 3.09/1.00  unif_index_cands_time:                  0.
% 3.09/1.00  unif_index_add_time:                    0.
% 3.09/1.00  orderings_time:                         0.
% 3.09/1.00  out_proof_time:                         0.013
% 3.09/1.00  total_time:                             0.236
% 3.09/1.00  num_of_symbols:                         52
% 3.09/1.00  num_of_terms:                           4746
% 3.09/1.00  
% 3.09/1.00  ------ Preprocessing
% 3.09/1.00  
% 3.09/1.00  num_of_splits:                          0
% 3.09/1.00  num_of_split_atoms:                     0
% 3.09/1.00  num_of_reused_defs:                     0
% 3.09/1.00  num_eq_ax_congr_red:                    13
% 3.09/1.00  num_of_sem_filtered_clauses:            1
% 3.09/1.00  num_of_subtypes:                        0
% 3.09/1.00  monotx_restored_types:                  0
% 3.09/1.00  sat_num_of_epr_types:                   0
% 3.09/1.00  sat_num_of_non_cyclic_types:            0
% 3.09/1.00  sat_guarded_non_collapsed_types:        0
% 3.09/1.00  num_pure_diseq_elim:                    0
% 3.09/1.00  simp_replaced_by:                       0
% 3.09/1.00  res_preprocessed:                       150
% 3.09/1.00  prep_upred:                             0
% 3.09/1.00  prep_unflattend:                        55
% 3.09/1.00  smt_new_axioms:                         0
% 3.09/1.00  pred_elim_cands:                        8
% 3.09/1.00  pred_elim:                              3
% 3.09/1.00  pred_elim_cl:                           -2
% 3.09/1.00  pred_elim_cycles:                       4
% 3.09/1.00  merged_defs:                            6
% 3.09/1.00  merged_defs_ncl:                        0
% 3.09/1.00  bin_hyper_res:                          6
% 3.09/1.00  prep_cycles:                            3
% 3.09/1.00  pred_elim_time:                         0.008
% 3.09/1.00  splitting_time:                         0.
% 3.09/1.00  sem_filter_time:                        0.
% 3.09/1.00  monotx_time:                            0.
% 3.09/1.00  subtype_inf_time:                       0.
% 3.09/1.00  
% 3.09/1.00  ------ Problem properties
% 3.09/1.00  
% 3.09/1.00  clauses:                                41
% 3.09/1.00  conjectures:                            3
% 3.09/1.00  epr:                                    5
% 3.09/1.00  horn:                                   34
% 3.09/1.00  ground:                                 14
% 3.09/1.00  unary:                                  11
% 3.09/1.00  binary:                                 12
% 3.09/1.00  lits:                                   100
% 3.09/1.00  lits_eq:                                43
% 3.09/1.00  fd_pure:                                0
% 3.09/1.00  fd_pseudo:                              0
% 3.09/1.00  fd_cond:                                4
% 3.09/1.00  fd_pseudo_cond:                         1
% 3.09/1.00  ac_symbols:                             0
% 3.09/1.00  
% 3.09/1.00  ------ Propositional Solver
% 3.09/1.00  
% 3.09/1.00  prop_solver_calls:                      24
% 3.09/1.00  prop_fast_solver_calls:                 1048
% 3.09/1.00  smt_solver_calls:                       0
% 3.09/1.00  smt_fast_solver_calls:                  0
% 3.09/1.00  prop_num_of_clauses:                    1994
% 3.09/1.00  prop_preprocess_simplified:             6090
% 3.09/1.00  prop_fo_subsumed:                       35
% 3.09/1.00  prop_solver_time:                       0.
% 3.09/1.00  smt_solver_time:                        0.
% 3.09/1.00  smt_fast_solver_time:                   0.
% 3.09/1.00  prop_fast_solver_time:                  0.
% 3.09/1.00  prop_unsat_core_time:                   0.
% 3.09/1.00  
% 3.09/1.00  ------ QBF
% 3.09/1.00  
% 3.09/1.00  qbf_q_res:                              0
% 3.09/1.00  qbf_num_tautologies:                    0
% 3.09/1.00  qbf_prep_cycles:                        0
% 3.09/1.00  
% 3.09/1.00  ------ BMC1
% 3.09/1.00  
% 3.09/1.00  bmc1_current_bound:                     -1
% 3.09/1.00  bmc1_last_solved_bound:                 -1
% 3.09/1.00  bmc1_unsat_core_size:                   -1
% 3.09/1.00  bmc1_unsat_core_parents_size:           -1
% 3.09/1.00  bmc1_merge_next_fun:                    0
% 3.09/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.09/1.00  
% 3.09/1.00  ------ Instantiation
% 3.09/1.00  
% 3.09/1.00  inst_num_of_clauses:                    725
% 3.09/1.00  inst_num_in_passive:                    116
% 3.09/1.00  inst_num_in_active:                     347
% 3.09/1.00  inst_num_in_unprocessed:                262
% 3.09/1.00  inst_num_of_loops:                      460
% 3.09/1.00  inst_num_of_learning_restarts:          0
% 3.09/1.00  inst_num_moves_active_passive:          110
% 3.09/1.00  inst_lit_activity:                      0
% 3.09/1.00  inst_lit_activity_moves:                0
% 3.09/1.00  inst_num_tautologies:                   0
% 3.09/1.00  inst_num_prop_implied:                  0
% 3.09/1.00  inst_num_existing_simplified:           0
% 3.09/1.00  inst_num_eq_res_simplified:             0
% 3.09/1.00  inst_num_child_elim:                    0
% 3.09/1.00  inst_num_of_dismatching_blockings:      138
% 3.09/1.00  inst_num_of_non_proper_insts:           571
% 3.09/1.00  inst_num_of_duplicates:                 0
% 3.09/1.00  inst_inst_num_from_inst_to_res:         0
% 3.09/1.00  inst_dismatching_checking_time:         0.
% 3.09/1.00  
% 3.09/1.00  ------ Resolution
% 3.09/1.00  
% 3.09/1.00  res_num_of_clauses:                     0
% 3.09/1.00  res_num_in_passive:                     0
% 3.09/1.00  res_num_in_active:                      0
% 3.09/1.00  res_num_of_loops:                       153
% 3.09/1.00  res_forward_subset_subsumed:            31
% 3.09/1.00  res_backward_subset_subsumed:           0
% 3.09/1.00  res_forward_subsumed:                   0
% 3.09/1.00  res_backward_subsumed:                  0
% 3.09/1.00  res_forward_subsumption_resolution:     4
% 3.09/1.00  res_backward_subsumption_resolution:    0
% 3.09/1.00  res_clause_to_clause_subsumption:       307
% 3.09/1.00  res_orphan_elimination:                 0
% 3.09/1.00  res_tautology_del:                      69
% 3.09/1.00  res_num_eq_res_simplified:              0
% 3.09/1.00  res_num_sel_changes:                    0
% 3.09/1.00  res_moves_from_active_to_pass:          0
% 3.09/1.00  
% 3.09/1.00  ------ Superposition
% 3.09/1.00  
% 3.09/1.00  sup_time_total:                         0.
% 3.09/1.00  sup_time_generating:                    0.
% 3.09/1.00  sup_time_sim_full:                      0.
% 3.09/1.00  sup_time_sim_immed:                     0.
% 3.09/1.00  
% 3.09/1.00  sup_num_of_clauses:                     96
% 3.09/1.00  sup_num_in_active:                      53
% 3.09/1.00  sup_num_in_passive:                     43
% 3.09/1.00  sup_num_of_loops:                       90
% 3.09/1.00  sup_fw_superposition:                   78
% 3.09/1.00  sup_bw_superposition:                   40
% 3.09/1.00  sup_immediate_simplified:               68
% 3.09/1.00  sup_given_eliminated:                   0
% 3.09/1.00  comparisons_done:                       0
% 3.09/1.00  comparisons_avoided:                    7
% 3.09/1.00  
% 3.09/1.00  ------ Simplifications
% 3.09/1.00  
% 3.09/1.00  
% 3.09/1.00  sim_fw_subset_subsumed:                 10
% 3.09/1.00  sim_bw_subset_subsumed:                 5
% 3.09/1.00  sim_fw_subsumed:                        10
% 3.09/1.00  sim_bw_subsumed:                        2
% 3.09/1.00  sim_fw_subsumption_res:                 2
% 3.09/1.00  sim_bw_subsumption_res:                 3
% 3.09/1.00  sim_tautology_del:                      5
% 3.09/1.00  sim_eq_tautology_del:                   9
% 3.09/1.00  sim_eq_res_simp:                        4
% 3.09/1.00  sim_fw_demodulated:                     19
% 3.09/1.00  sim_bw_demodulated:                     51
% 3.09/1.00  sim_light_normalised:                   34
% 3.09/1.00  sim_joinable_taut:                      0
% 3.09/1.00  sim_joinable_simp:                      0
% 3.09/1.00  sim_ac_normalised:                      0
% 3.09/1.00  sim_smt_subsumption:                    0
% 3.09/1.00  
%------------------------------------------------------------------------------
