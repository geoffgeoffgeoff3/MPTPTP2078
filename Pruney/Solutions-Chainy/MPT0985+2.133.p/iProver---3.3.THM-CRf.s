%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:02:47 EST 2020

% Result     : Theorem 3.07s
% Output     : CNFRefutation 3.07s
% Verified   : 
% Statistics : Number of formulae       :  161 (7461 expanded)
%              Number of clauses        :  106 (2276 expanded)
%              Number of leaves         :   12 (1465 expanded)
%              Depth                    :   26
%              Number of atoms          :  488 (40917 expanded)
%              Number of equality atoms :  266 (8026 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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

fof(f32,plain,(
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

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f12,conjecture,(
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

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ( k2_relset_1(X0,X1,X2) = X1
            & v2_funct_1(X2) )
         => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(k2_funct_1(X2),X1,X0)
            & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f28,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f29,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f28])).

fof(f33,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
          | ~ v1_funct_1(k2_funct_1(X2)) )
        & k2_relset_1(X0,X1,X2) = X1
        & v2_funct_1(X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
        | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
        | ~ v1_funct_1(k2_funct_1(sK2)) )
      & k2_relset_1(sK0,sK1,sK2) = sK1
      & v2_funct_1(sK2)
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK2,sK0,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
      | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
      | ~ v1_funct_1(k2_funct_1(sK2)) )
    & k2_relset_1(sK0,sK1,sK2) = sK1
    & v2_funct_1(sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f29,f33])).

fof(f58,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f59,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f34])).

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

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f20,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f44,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f60,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f57,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f11,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f56,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
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

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f61,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f34])).

fof(f43,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f18,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f42,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f41,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f55,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f62,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f34])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f16,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f39,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f40,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f68,plain,(
    ! [X2,X1] :
      ( v1_funct_2(X2,k1_xboole_0,X1)
      | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f51])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(flattening,[],[f30])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f64,plain,(
    ! [X1] : k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(equality_resolution,[],[f36])).

fof(f2,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1011,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X1
    | sK1 != X2
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_26])).

cnf(c_1012,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_1011])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1014,plain,
    ( k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1012,c_25])).

cnf(c_1648,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1651,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2946,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1648,c_1651])).

cnf(c_3049,plain,
    ( k1_relat_1(sK2) = sK0
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1014,c_2946])).

cnf(c_8,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_24,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_285,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_24])).

cnf(c_286,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_285])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_288,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_286,c_27])).

cnf(c_1645,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_288])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1878,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1890,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1645,c_27,c_25,c_286,c_1878])).

cnf(c_19,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1649,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2819,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1890,c_1649])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1650,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2464,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1648,c_1650])).

cnf(c_23,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2476,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2464,c_23])).

cnf(c_9,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_271,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_24])).

cnf(c_272,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_271])).

cnf(c_274,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_272,c_27])).

cnf(c_1646,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_274])).

cnf(c_1894,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1646,c_27,c_25,c_272,c_1878])).

cnf(c_2485,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
    inference(demodulation,[status(thm)],[c_2476,c_1894])).

cnf(c_2831,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2819,c_2485])).

cnf(c_28,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_30,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1860,plain,
    ( v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1861,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1860])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1867,plain,
    ( ~ v1_funct_1(sK2)
    | v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1868,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1867])).

cnf(c_1879,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1878])).

cnf(c_3263,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2831,c_28,c_30,c_1861,c_1868,c_1879])).

cnf(c_3269,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_3263,c_1651])).

cnf(c_3278,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_3269,c_2485])).

cnf(c_3301,plain,
    ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3049,c_3278])).

cnf(c_20,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_22,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1022,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(X0)
    | k2_funct_1(sK2) != X0
    | k1_relat_1(X0) != sK1
    | k2_relat_1(X0) != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_22])).

cnf(c_1023,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
    inference(unflattening,[status(thm)],[c_1022])).

cnf(c_1035,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1023,c_10])).

cnf(c_1637,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1035])).

cnf(c_1024,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1023])).

cnf(c_1965,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1637,c_28,c_30,c_1024,c_1861,c_1868,c_1879])).

cnf(c_1966,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(renaming,[status(thm)],[c_1965])).

cnf(c_1969,plain,
    ( k1_relat_1(sK2) != sK0
    | k2_relat_1(sK2) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1966,c_1890,c_1894])).

cnf(c_2484,plain,
    ( k1_relat_1(sK2) != sK0
    | sK1 != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2476,c_1969])).

cnf(c_2488,plain,
    ( k1_relat_1(sK2) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2484])).

cnf(c_3179,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3049,c_2488])).

cnf(c_3268,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_3049,c_3263])).

cnf(c_3723,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3301,c_3179,c_3268])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1655,plain,
    ( k1_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2588,plain,
    ( k2_funct_1(sK2) = k1_xboole_0
    | sK1 != k1_xboole_0
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2485,c_1655])).

cnf(c_2589,plain,
    ( ~ v1_relat_1(k2_funct_1(sK2))
    | k2_funct_1(sK2) = k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2588])).

cnf(c_2721,plain,
    ( sK1 != k1_xboole_0
    | k2_funct_1(sK2) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2588,c_28,c_30,c_1868,c_1879])).

cnf(c_2722,plain,
    ( k2_funct_1(sK2) = k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_2721])).

cnf(c_3733,plain,
    ( k2_funct_1(sK2) = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3723,c_2722])).

cnf(c_3827,plain,
    ( k2_funct_1(sK2) = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_3733])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1656,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2494,plain,
    ( sK1 != k1_xboole_0
    | sK2 = k1_xboole_0
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2476,c_1656])).

cnf(c_2591,plain,
    ( sK2 = k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2494,c_30,c_1879])).

cnf(c_2592,plain,
    ( sK1 != k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_2591])).

cnf(c_3735,plain,
    ( sK2 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3723,c_2592])).

cnf(c_3790,plain,
    ( sK2 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_3735])).

cnf(c_3828,plain,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3827,c_3790])).

cnf(c_15,plain,
    ( v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_939,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
    | k2_funct_1(sK2) != X0
    | sK0 != X1
    | sK1 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_22])).

cnf(c_940,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_939])).

cnf(c_1641,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | sK1 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_940])).

cnf(c_1,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1797,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | sK1 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1641,c_1])).

cnf(c_2161,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | sK1 != k1_xboole_0
    | k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1797,c_28,c_30,c_1861,c_1879])).

cnf(c_2162,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | sK1 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2161])).

cnf(c_3739,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3723,c_2162])).

cnf(c_3772,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3739])).

cnf(c_3776,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3772,c_1])).

cnf(c_3794,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(k1_xboole_0)) != k1_xboole_0
    | m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3790,c_3776])).

cnf(c_3832,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k1_xboole_0) != k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3828,c_3794])).

cnf(c_3,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_85,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_87,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_85])).

cnf(c_4915,plain,
    ( k1_relset_1(k1_xboole_0,sK0,k1_xboole_0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3832,c_87])).

cnf(c_3736,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3723,c_2485])).

cnf(c_3792,plain,
    ( k1_relat_1(k2_funct_1(k1_xboole_0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3790,c_3736])).

cnf(c_3831,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3828,c_3792])).

cnf(c_1657,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2944,plain,
    ( k1_relset_1(X0,X1,k1_xboole_0) = k1_relat_1(k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1657,c_1651])).

cnf(c_4784,plain,
    ( k1_relset_1(X0,X1,k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3831,c_2944])).

cnf(c_4917,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4915,c_4784])).

cnf(c_4918,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_4917])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 18:13:59 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.07/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.07/0.99  
% 3.07/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.07/0.99  
% 3.07/0.99  ------  iProver source info
% 3.07/0.99  
% 3.07/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.07/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.07/0.99  git: non_committed_changes: false
% 3.07/0.99  git: last_make_outside_of_git: false
% 3.07/0.99  
% 3.07/0.99  ------ 
% 3.07/0.99  
% 3.07/0.99  ------ Input Options
% 3.07/0.99  
% 3.07/0.99  --out_options                           all
% 3.07/0.99  --tptp_safe_out                         true
% 3.07/0.99  --problem_path                          ""
% 3.07/0.99  --include_path                          ""
% 3.07/0.99  --clausifier                            res/vclausify_rel
% 3.07/0.99  --clausifier_options                    --mode clausify
% 3.07/0.99  --stdin                                 false
% 3.07/0.99  --stats_out                             all
% 3.07/0.99  
% 3.07/0.99  ------ General Options
% 3.07/0.99  
% 3.07/0.99  --fof                                   false
% 3.07/0.99  --time_out_real                         305.
% 3.07/0.99  --time_out_virtual                      -1.
% 3.07/0.99  --symbol_type_check                     false
% 3.07/0.99  --clausify_out                          false
% 3.07/0.99  --sig_cnt_out                           false
% 3.07/0.99  --trig_cnt_out                          false
% 3.07/0.99  --trig_cnt_out_tolerance                1.
% 3.07/0.99  --trig_cnt_out_sk_spl                   false
% 3.07/0.99  --abstr_cl_out                          false
% 3.07/0.99  
% 3.07/0.99  ------ Global Options
% 3.07/0.99  
% 3.07/0.99  --schedule                              default
% 3.07/0.99  --add_important_lit                     false
% 3.07/0.99  --prop_solver_per_cl                    1000
% 3.07/0.99  --min_unsat_core                        false
% 3.07/0.99  --soft_assumptions                      false
% 3.07/0.99  --soft_lemma_size                       3
% 3.07/0.99  --prop_impl_unit_size                   0
% 3.07/0.99  --prop_impl_unit                        []
% 3.07/0.99  --share_sel_clauses                     true
% 3.07/0.99  --reset_solvers                         false
% 3.07/0.99  --bc_imp_inh                            [conj_cone]
% 3.07/0.99  --conj_cone_tolerance                   3.
% 3.07/0.99  --extra_neg_conj                        none
% 3.07/0.99  --large_theory_mode                     true
% 3.07/0.99  --prolific_symb_bound                   200
% 3.07/0.99  --lt_threshold                          2000
% 3.07/0.99  --clause_weak_htbl                      true
% 3.07/0.99  --gc_record_bc_elim                     false
% 3.07/0.99  
% 3.07/0.99  ------ Preprocessing Options
% 3.07/0.99  
% 3.07/0.99  --preprocessing_flag                    true
% 3.07/0.99  --time_out_prep_mult                    0.1
% 3.07/0.99  --splitting_mode                        input
% 3.07/0.99  --splitting_grd                         true
% 3.07/0.99  --splitting_cvd                         false
% 3.07/0.99  --splitting_cvd_svl                     false
% 3.07/0.99  --splitting_nvd                         32
% 3.07/0.99  --sub_typing                            true
% 3.07/0.99  --prep_gs_sim                           true
% 3.07/0.99  --prep_unflatten                        true
% 3.07/0.99  --prep_res_sim                          true
% 3.07/0.99  --prep_upred                            true
% 3.07/0.99  --prep_sem_filter                       exhaustive
% 3.07/0.99  --prep_sem_filter_out                   false
% 3.07/0.99  --pred_elim                             true
% 3.07/0.99  --res_sim_input                         true
% 3.07/0.99  --eq_ax_congr_red                       true
% 3.07/0.99  --pure_diseq_elim                       true
% 3.07/0.99  --brand_transform                       false
% 3.07/0.99  --non_eq_to_eq                          false
% 3.07/0.99  --prep_def_merge                        true
% 3.07/0.99  --prep_def_merge_prop_impl              false
% 3.07/0.99  --prep_def_merge_mbd                    true
% 3.07/0.99  --prep_def_merge_tr_red                 false
% 3.07/0.99  --prep_def_merge_tr_cl                  false
% 3.07/0.99  --smt_preprocessing                     true
% 3.07/0.99  --smt_ac_axioms                         fast
% 3.07/0.99  --preprocessed_out                      false
% 3.07/0.99  --preprocessed_stats                    false
% 3.07/0.99  
% 3.07/0.99  ------ Abstraction refinement Options
% 3.07/0.99  
% 3.07/0.99  --abstr_ref                             []
% 3.07/0.99  --abstr_ref_prep                        false
% 3.07/0.99  --abstr_ref_until_sat                   false
% 3.07/0.99  --abstr_ref_sig_restrict                funpre
% 3.07/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.07/0.99  --abstr_ref_under                       []
% 3.07/0.99  
% 3.07/0.99  ------ SAT Options
% 3.07/0.99  
% 3.07/0.99  --sat_mode                              false
% 3.07/0.99  --sat_fm_restart_options                ""
% 3.07/0.99  --sat_gr_def                            false
% 3.07/0.99  --sat_epr_types                         true
% 3.07/0.99  --sat_non_cyclic_types                  false
% 3.07/0.99  --sat_finite_models                     false
% 3.07/0.99  --sat_fm_lemmas                         false
% 3.07/0.99  --sat_fm_prep                           false
% 3.07/0.99  --sat_fm_uc_incr                        true
% 3.07/0.99  --sat_out_model                         small
% 3.07/0.99  --sat_out_clauses                       false
% 3.07/0.99  
% 3.07/0.99  ------ QBF Options
% 3.07/0.99  
% 3.07/0.99  --qbf_mode                              false
% 3.07/0.99  --qbf_elim_univ                         false
% 3.07/0.99  --qbf_dom_inst                          none
% 3.07/0.99  --qbf_dom_pre_inst                      false
% 3.07/0.99  --qbf_sk_in                             false
% 3.07/0.99  --qbf_pred_elim                         true
% 3.07/0.99  --qbf_split                             512
% 3.07/0.99  
% 3.07/0.99  ------ BMC1 Options
% 3.07/0.99  
% 3.07/0.99  --bmc1_incremental                      false
% 3.07/0.99  --bmc1_axioms                           reachable_all
% 3.07/0.99  --bmc1_min_bound                        0
% 3.07/0.99  --bmc1_max_bound                        -1
% 3.07/0.99  --bmc1_max_bound_default                -1
% 3.07/0.99  --bmc1_symbol_reachability              true
% 3.07/0.99  --bmc1_property_lemmas                  false
% 3.07/0.99  --bmc1_k_induction                      false
% 3.07/0.99  --bmc1_non_equiv_states                 false
% 3.07/0.99  --bmc1_deadlock                         false
% 3.07/0.99  --bmc1_ucm                              false
% 3.07/0.99  --bmc1_add_unsat_core                   none
% 3.07/0.99  --bmc1_unsat_core_children              false
% 3.07/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.07/0.99  --bmc1_out_stat                         full
% 3.07/0.99  --bmc1_ground_init                      false
% 3.07/0.99  --bmc1_pre_inst_next_state              false
% 3.07/0.99  --bmc1_pre_inst_state                   false
% 3.07/0.99  --bmc1_pre_inst_reach_state             false
% 3.07/0.99  --bmc1_out_unsat_core                   false
% 3.07/0.99  --bmc1_aig_witness_out                  false
% 3.07/0.99  --bmc1_verbose                          false
% 3.07/0.99  --bmc1_dump_clauses_tptp                false
% 3.07/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.07/0.99  --bmc1_dump_file                        -
% 3.07/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.07/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.07/0.99  --bmc1_ucm_extend_mode                  1
% 3.07/0.99  --bmc1_ucm_init_mode                    2
% 3.07/0.99  --bmc1_ucm_cone_mode                    none
% 3.07/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.07/0.99  --bmc1_ucm_relax_model                  4
% 3.07/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.07/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.07/0.99  --bmc1_ucm_layered_model                none
% 3.07/0.99  --bmc1_ucm_max_lemma_size               10
% 3.07/0.99  
% 3.07/0.99  ------ AIG Options
% 3.07/0.99  
% 3.07/0.99  --aig_mode                              false
% 3.07/0.99  
% 3.07/0.99  ------ Instantiation Options
% 3.07/0.99  
% 3.07/0.99  --instantiation_flag                    true
% 3.07/0.99  --inst_sos_flag                         false
% 3.07/0.99  --inst_sos_phase                        true
% 3.07/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.07/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.07/0.99  --inst_lit_sel_side                     num_symb
% 3.07/0.99  --inst_solver_per_active                1400
% 3.07/0.99  --inst_solver_calls_frac                1.
% 3.07/0.99  --inst_passive_queue_type               priority_queues
% 3.07/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.07/0.99  --inst_passive_queues_freq              [25;2]
% 3.07/0.99  --inst_dismatching                      true
% 3.07/0.99  --inst_eager_unprocessed_to_passive     true
% 3.07/0.99  --inst_prop_sim_given                   true
% 3.07/0.99  --inst_prop_sim_new                     false
% 3.07/0.99  --inst_subs_new                         false
% 3.07/0.99  --inst_eq_res_simp                      false
% 3.07/0.99  --inst_subs_given                       false
% 3.07/0.99  --inst_orphan_elimination               true
% 3.07/0.99  --inst_learning_loop_flag               true
% 3.07/0.99  --inst_learning_start                   3000
% 3.07/0.99  --inst_learning_factor                  2
% 3.07/0.99  --inst_start_prop_sim_after_learn       3
% 3.07/0.99  --inst_sel_renew                        solver
% 3.07/0.99  --inst_lit_activity_flag                true
% 3.07/0.99  --inst_restr_to_given                   false
% 3.07/0.99  --inst_activity_threshold               500
% 3.07/0.99  --inst_out_proof                        true
% 3.07/0.99  
% 3.07/0.99  ------ Resolution Options
% 3.07/0.99  
% 3.07/0.99  --resolution_flag                       true
% 3.07/0.99  --res_lit_sel                           adaptive
% 3.07/0.99  --res_lit_sel_side                      none
% 3.07/0.99  --res_ordering                          kbo
% 3.07/0.99  --res_to_prop_solver                    active
% 3.07/0.99  --res_prop_simpl_new                    false
% 3.07/0.99  --res_prop_simpl_given                  true
% 3.07/0.99  --res_passive_queue_type                priority_queues
% 3.07/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.07/0.99  --res_passive_queues_freq               [15;5]
% 3.07/0.99  --res_forward_subs                      full
% 3.07/0.99  --res_backward_subs                     full
% 3.07/0.99  --res_forward_subs_resolution           true
% 3.07/0.99  --res_backward_subs_resolution          true
% 3.07/0.99  --res_orphan_elimination                true
% 3.07/0.99  --res_time_limit                        2.
% 3.07/0.99  --res_out_proof                         true
% 3.07/0.99  
% 3.07/0.99  ------ Superposition Options
% 3.07/0.99  
% 3.07/0.99  --superposition_flag                    true
% 3.07/0.99  --sup_passive_queue_type                priority_queues
% 3.07/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.07/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.07/0.99  --demod_completeness_check              fast
% 3.07/0.99  --demod_use_ground                      true
% 3.07/0.99  --sup_to_prop_solver                    passive
% 3.07/0.99  --sup_prop_simpl_new                    true
% 3.07/0.99  --sup_prop_simpl_given                  true
% 3.07/0.99  --sup_fun_splitting                     false
% 3.07/0.99  --sup_smt_interval                      50000
% 3.07/0.99  
% 3.07/0.99  ------ Superposition Simplification Setup
% 3.07/0.99  
% 3.07/0.99  --sup_indices_passive                   []
% 3.07/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.07/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_full_bw                           [BwDemod]
% 3.07/0.99  --sup_immed_triv                        [TrivRules]
% 3.07/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.07/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_immed_bw_main                     []
% 3.07/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.07/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.07/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.07/0.99  
% 3.07/0.99  ------ Combination Options
% 3.07/0.99  
% 3.07/0.99  --comb_res_mult                         3
% 3.07/0.99  --comb_sup_mult                         2
% 3.07/0.99  --comb_inst_mult                        10
% 3.07/0.99  
% 3.07/0.99  ------ Debug Options
% 3.07/0.99  
% 3.07/0.99  --dbg_backtrace                         false
% 3.07/0.99  --dbg_dump_prop_clauses                 false
% 3.07/0.99  --dbg_dump_prop_clauses_file            -
% 3.07/0.99  --dbg_out_stat                          false
% 3.07/0.99  ------ Parsing...
% 3.07/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.07/0.99  
% 3.07/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.07/0.99  
% 3.07/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.07/0.99  
% 3.07/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.07/0.99  ------ Proving...
% 3.07/0.99  ------ Problem Properties 
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  clauses                                 27
% 3.07/0.99  conjectures                             3
% 3.07/0.99  EPR                                     1
% 3.07/0.99  Horn                                    23
% 3.07/0.99  unary                                   6
% 3.07/0.99  binary                                  6
% 3.07/0.99  lits                                    73
% 3.07/0.99  lits eq                                 36
% 3.07/0.99  fd_pure                                 0
% 3.07/0.99  fd_pseudo                               0
% 3.07/0.99  fd_cond                                 3
% 3.07/0.99  fd_pseudo_cond                          0
% 3.07/0.99  AC symbols                              0
% 3.07/0.99  
% 3.07/0.99  ------ Schedule dynamic 5 is on 
% 3.07/0.99  
% 3.07/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  ------ 
% 3.07/0.99  Current options:
% 3.07/0.99  ------ 
% 3.07/0.99  
% 3.07/0.99  ------ Input Options
% 3.07/0.99  
% 3.07/0.99  --out_options                           all
% 3.07/0.99  --tptp_safe_out                         true
% 3.07/0.99  --problem_path                          ""
% 3.07/0.99  --include_path                          ""
% 3.07/0.99  --clausifier                            res/vclausify_rel
% 3.07/0.99  --clausifier_options                    --mode clausify
% 3.07/0.99  --stdin                                 false
% 3.07/0.99  --stats_out                             all
% 3.07/0.99  
% 3.07/0.99  ------ General Options
% 3.07/0.99  
% 3.07/0.99  --fof                                   false
% 3.07/0.99  --time_out_real                         305.
% 3.07/0.99  --time_out_virtual                      -1.
% 3.07/0.99  --symbol_type_check                     false
% 3.07/0.99  --clausify_out                          false
% 3.07/0.99  --sig_cnt_out                           false
% 3.07/0.99  --trig_cnt_out                          false
% 3.07/0.99  --trig_cnt_out_tolerance                1.
% 3.07/0.99  --trig_cnt_out_sk_spl                   false
% 3.07/0.99  --abstr_cl_out                          false
% 3.07/0.99  
% 3.07/0.99  ------ Global Options
% 3.07/0.99  
% 3.07/0.99  --schedule                              default
% 3.07/0.99  --add_important_lit                     false
% 3.07/0.99  --prop_solver_per_cl                    1000
% 3.07/0.99  --min_unsat_core                        false
% 3.07/0.99  --soft_assumptions                      false
% 3.07/0.99  --soft_lemma_size                       3
% 3.07/0.99  --prop_impl_unit_size                   0
% 3.07/0.99  --prop_impl_unit                        []
% 3.07/0.99  --share_sel_clauses                     true
% 3.07/0.99  --reset_solvers                         false
% 3.07/0.99  --bc_imp_inh                            [conj_cone]
% 3.07/0.99  --conj_cone_tolerance                   3.
% 3.07/0.99  --extra_neg_conj                        none
% 3.07/0.99  --large_theory_mode                     true
% 3.07/0.99  --prolific_symb_bound                   200
% 3.07/0.99  --lt_threshold                          2000
% 3.07/0.99  --clause_weak_htbl                      true
% 3.07/0.99  --gc_record_bc_elim                     false
% 3.07/0.99  
% 3.07/0.99  ------ Preprocessing Options
% 3.07/0.99  
% 3.07/0.99  --preprocessing_flag                    true
% 3.07/0.99  --time_out_prep_mult                    0.1
% 3.07/0.99  --splitting_mode                        input
% 3.07/0.99  --splitting_grd                         true
% 3.07/0.99  --splitting_cvd                         false
% 3.07/0.99  --splitting_cvd_svl                     false
% 3.07/0.99  --splitting_nvd                         32
% 3.07/0.99  --sub_typing                            true
% 3.07/0.99  --prep_gs_sim                           true
% 3.07/0.99  --prep_unflatten                        true
% 3.07/0.99  --prep_res_sim                          true
% 3.07/0.99  --prep_upred                            true
% 3.07/0.99  --prep_sem_filter                       exhaustive
% 3.07/0.99  --prep_sem_filter_out                   false
% 3.07/0.99  --pred_elim                             true
% 3.07/0.99  --res_sim_input                         true
% 3.07/0.99  --eq_ax_congr_red                       true
% 3.07/0.99  --pure_diseq_elim                       true
% 3.07/0.99  --brand_transform                       false
% 3.07/0.99  --non_eq_to_eq                          false
% 3.07/0.99  --prep_def_merge                        true
% 3.07/0.99  --prep_def_merge_prop_impl              false
% 3.07/0.99  --prep_def_merge_mbd                    true
% 3.07/0.99  --prep_def_merge_tr_red                 false
% 3.07/0.99  --prep_def_merge_tr_cl                  false
% 3.07/0.99  --smt_preprocessing                     true
% 3.07/0.99  --smt_ac_axioms                         fast
% 3.07/0.99  --preprocessed_out                      false
% 3.07/0.99  --preprocessed_stats                    false
% 3.07/0.99  
% 3.07/0.99  ------ Abstraction refinement Options
% 3.07/0.99  
% 3.07/0.99  --abstr_ref                             []
% 3.07/0.99  --abstr_ref_prep                        false
% 3.07/0.99  --abstr_ref_until_sat                   false
% 3.07/0.99  --abstr_ref_sig_restrict                funpre
% 3.07/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.07/0.99  --abstr_ref_under                       []
% 3.07/0.99  
% 3.07/0.99  ------ SAT Options
% 3.07/0.99  
% 3.07/0.99  --sat_mode                              false
% 3.07/0.99  --sat_fm_restart_options                ""
% 3.07/0.99  --sat_gr_def                            false
% 3.07/0.99  --sat_epr_types                         true
% 3.07/0.99  --sat_non_cyclic_types                  false
% 3.07/0.99  --sat_finite_models                     false
% 3.07/0.99  --sat_fm_lemmas                         false
% 3.07/0.99  --sat_fm_prep                           false
% 3.07/0.99  --sat_fm_uc_incr                        true
% 3.07/0.99  --sat_out_model                         small
% 3.07/0.99  --sat_out_clauses                       false
% 3.07/0.99  
% 3.07/0.99  ------ QBF Options
% 3.07/0.99  
% 3.07/0.99  --qbf_mode                              false
% 3.07/0.99  --qbf_elim_univ                         false
% 3.07/0.99  --qbf_dom_inst                          none
% 3.07/0.99  --qbf_dom_pre_inst                      false
% 3.07/0.99  --qbf_sk_in                             false
% 3.07/0.99  --qbf_pred_elim                         true
% 3.07/0.99  --qbf_split                             512
% 3.07/0.99  
% 3.07/0.99  ------ BMC1 Options
% 3.07/0.99  
% 3.07/0.99  --bmc1_incremental                      false
% 3.07/0.99  --bmc1_axioms                           reachable_all
% 3.07/0.99  --bmc1_min_bound                        0
% 3.07/0.99  --bmc1_max_bound                        -1
% 3.07/0.99  --bmc1_max_bound_default                -1
% 3.07/0.99  --bmc1_symbol_reachability              true
% 3.07/0.99  --bmc1_property_lemmas                  false
% 3.07/0.99  --bmc1_k_induction                      false
% 3.07/0.99  --bmc1_non_equiv_states                 false
% 3.07/0.99  --bmc1_deadlock                         false
% 3.07/0.99  --bmc1_ucm                              false
% 3.07/0.99  --bmc1_add_unsat_core                   none
% 3.07/0.99  --bmc1_unsat_core_children              false
% 3.07/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.07/0.99  --bmc1_out_stat                         full
% 3.07/0.99  --bmc1_ground_init                      false
% 3.07/0.99  --bmc1_pre_inst_next_state              false
% 3.07/0.99  --bmc1_pre_inst_state                   false
% 3.07/0.99  --bmc1_pre_inst_reach_state             false
% 3.07/0.99  --bmc1_out_unsat_core                   false
% 3.07/0.99  --bmc1_aig_witness_out                  false
% 3.07/0.99  --bmc1_verbose                          false
% 3.07/0.99  --bmc1_dump_clauses_tptp                false
% 3.07/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.07/0.99  --bmc1_dump_file                        -
% 3.07/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.07/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.07/0.99  --bmc1_ucm_extend_mode                  1
% 3.07/0.99  --bmc1_ucm_init_mode                    2
% 3.07/0.99  --bmc1_ucm_cone_mode                    none
% 3.07/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.07/0.99  --bmc1_ucm_relax_model                  4
% 3.07/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.07/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.07/0.99  --bmc1_ucm_layered_model                none
% 3.07/0.99  --bmc1_ucm_max_lemma_size               10
% 3.07/0.99  
% 3.07/0.99  ------ AIG Options
% 3.07/0.99  
% 3.07/0.99  --aig_mode                              false
% 3.07/0.99  
% 3.07/0.99  ------ Instantiation Options
% 3.07/0.99  
% 3.07/0.99  --instantiation_flag                    true
% 3.07/0.99  --inst_sos_flag                         false
% 3.07/0.99  --inst_sos_phase                        true
% 3.07/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.07/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.07/0.99  --inst_lit_sel_side                     none
% 3.07/0.99  --inst_solver_per_active                1400
% 3.07/0.99  --inst_solver_calls_frac                1.
% 3.07/0.99  --inst_passive_queue_type               priority_queues
% 3.07/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.07/0.99  --inst_passive_queues_freq              [25;2]
% 3.07/0.99  --inst_dismatching                      true
% 3.07/0.99  --inst_eager_unprocessed_to_passive     true
% 3.07/0.99  --inst_prop_sim_given                   true
% 3.07/0.99  --inst_prop_sim_new                     false
% 3.07/0.99  --inst_subs_new                         false
% 3.07/0.99  --inst_eq_res_simp                      false
% 3.07/0.99  --inst_subs_given                       false
% 3.07/0.99  --inst_orphan_elimination               true
% 3.07/0.99  --inst_learning_loop_flag               true
% 3.07/0.99  --inst_learning_start                   3000
% 3.07/0.99  --inst_learning_factor                  2
% 3.07/0.99  --inst_start_prop_sim_after_learn       3
% 3.07/0.99  --inst_sel_renew                        solver
% 3.07/0.99  --inst_lit_activity_flag                true
% 3.07/0.99  --inst_restr_to_given                   false
% 3.07/0.99  --inst_activity_threshold               500
% 3.07/0.99  --inst_out_proof                        true
% 3.07/0.99  
% 3.07/0.99  ------ Resolution Options
% 3.07/0.99  
% 3.07/0.99  --resolution_flag                       false
% 3.07/0.99  --res_lit_sel                           adaptive
% 3.07/0.99  --res_lit_sel_side                      none
% 3.07/0.99  --res_ordering                          kbo
% 3.07/0.99  --res_to_prop_solver                    active
% 3.07/0.99  --res_prop_simpl_new                    false
% 3.07/0.99  --res_prop_simpl_given                  true
% 3.07/0.99  --res_passive_queue_type                priority_queues
% 3.07/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.07/0.99  --res_passive_queues_freq               [15;5]
% 3.07/0.99  --res_forward_subs                      full
% 3.07/0.99  --res_backward_subs                     full
% 3.07/0.99  --res_forward_subs_resolution           true
% 3.07/0.99  --res_backward_subs_resolution          true
% 3.07/0.99  --res_orphan_elimination                true
% 3.07/0.99  --res_time_limit                        2.
% 3.07/0.99  --res_out_proof                         true
% 3.07/0.99  
% 3.07/0.99  ------ Superposition Options
% 3.07/0.99  
% 3.07/0.99  --superposition_flag                    true
% 3.07/0.99  --sup_passive_queue_type                priority_queues
% 3.07/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.07/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.07/0.99  --demod_completeness_check              fast
% 3.07/0.99  --demod_use_ground                      true
% 3.07/0.99  --sup_to_prop_solver                    passive
% 3.07/0.99  --sup_prop_simpl_new                    true
% 3.07/0.99  --sup_prop_simpl_given                  true
% 3.07/0.99  --sup_fun_splitting                     false
% 3.07/0.99  --sup_smt_interval                      50000
% 3.07/0.99  
% 3.07/0.99  ------ Superposition Simplification Setup
% 3.07/0.99  
% 3.07/0.99  --sup_indices_passive                   []
% 3.07/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.07/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.07/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_full_bw                           [BwDemod]
% 3.07/0.99  --sup_immed_triv                        [TrivRules]
% 3.07/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.07/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_immed_bw_main                     []
% 3.07/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.07/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.07/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.07/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.07/0.99  
% 3.07/0.99  ------ Combination Options
% 3.07/0.99  
% 3.07/0.99  --comb_res_mult                         3
% 3.07/0.99  --comb_sup_mult                         2
% 3.07/0.99  --comb_inst_mult                        10
% 3.07/0.99  
% 3.07/0.99  ------ Debug Options
% 3.07/0.99  
% 3.07/0.99  --dbg_backtrace                         false
% 3.07/0.99  --dbg_dump_prop_clauses                 false
% 3.07/0.99  --dbg_dump_prop_clauses_file            -
% 3.07/0.99  --dbg_out_stat                          false
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  ------ Proving...
% 3.07/0.99  
% 3.07/0.99  
% 3.07/0.99  % SZS status Theorem for theBenchmark.p
% 3.07/0.99  
% 3.07/0.99   Resolution empty clause
% 3.07/0.99  
% 3.07/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.07/0.99  
% 3.07/0.99  fof(f10,axiom,(
% 3.07/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f24,plain,(
% 3.07/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(ennf_transformation,[],[f10])).
% 3.07/0.99  
% 3.07/0.99  fof(f25,plain,(
% 3.07/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(flattening,[],[f24])).
% 3.07/0.99  
% 3.07/0.99  fof(f32,plain,(
% 3.07/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(nnf_transformation,[],[f25])).
% 3.07/0.99  
% 3.07/0.99  fof(f48,plain,(
% 3.07/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f32])).
% 3.07/0.99  
% 3.07/0.99  fof(f12,conjecture,(
% 3.07/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f13,negated_conjecture,(
% 3.07/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.07/0.99    inference(negated_conjecture,[],[f12])).
% 3.07/0.99  
% 3.07/0.99  fof(f28,plain,(
% 3.07/0.99    ? [X0,X1,X2] : (((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & (k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.07/0.99    inference(ennf_transformation,[],[f13])).
% 3.07/0.99  
% 3.07/0.99  fof(f29,plain,(
% 3.07/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.07/0.99    inference(flattening,[],[f28])).
% 3.07/0.99  
% 3.07/0.99  fof(f33,plain,(
% 3.07/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.07/0.99    introduced(choice_axiom,[])).
% 3.07/0.99  
% 3.07/0.99  fof(f34,plain,(
% 3.07/0.99    (~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.07/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f29,f33])).
% 3.07/0.99  
% 3.07/0.99  fof(f58,plain,(
% 3.07/0.99    v1_funct_2(sK2,sK0,sK1)),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f59,plain,(
% 3.07/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f8,axiom,(
% 3.07/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f22,plain,(
% 3.07/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(ennf_transformation,[],[f8])).
% 3.07/0.99  
% 3.07/0.99  fof(f46,plain,(
% 3.07/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f22])).
% 3.07/0.99  
% 3.07/0.99  fof(f6,axiom,(
% 3.07/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f19,plain,(
% 3.07/0.99    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.07/0.99    inference(ennf_transformation,[],[f6])).
% 3.07/0.99  
% 3.07/0.99  fof(f20,plain,(
% 3.07/0.99    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.07/0.99    inference(flattening,[],[f19])).
% 3.07/0.99  
% 3.07/0.99  fof(f44,plain,(
% 3.07/0.99    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f20])).
% 3.07/0.99  
% 3.07/0.99  fof(f60,plain,(
% 3.07/0.99    v2_funct_1(sK2)),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f57,plain,(
% 3.07/0.99    v1_funct_1(sK2)),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f7,axiom,(
% 3.07/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f21,plain,(
% 3.07/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(ennf_transformation,[],[f7])).
% 3.07/0.99  
% 3.07/0.99  fof(f45,plain,(
% 3.07/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f21])).
% 3.07/0.99  
% 3.07/0.99  fof(f11,axiom,(
% 3.07/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f26,plain,(
% 3.07/0.99    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.07/0.99    inference(ennf_transformation,[],[f11])).
% 3.07/0.99  
% 3.07/0.99  fof(f27,plain,(
% 3.07/0.99    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.07/0.99    inference(flattening,[],[f26])).
% 3.07/0.99  
% 3.07/0.99  fof(f56,plain,(
% 3.07/0.99    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f27])).
% 3.07/0.99  
% 3.07/0.99  fof(f9,axiom,(
% 3.07/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f23,plain,(
% 3.07/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.07/0.99    inference(ennf_transformation,[],[f9])).
% 3.07/0.99  
% 3.07/0.99  fof(f47,plain,(
% 3.07/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f23])).
% 3.07/0.99  
% 3.07/0.99  fof(f61,plain,(
% 3.07/0.99    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f43,plain,(
% 3.07/0.99    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f20])).
% 3.07/0.99  
% 3.07/0.99  fof(f5,axiom,(
% 3.07/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f17,plain,(
% 3.07/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.07/0.99    inference(ennf_transformation,[],[f5])).
% 3.07/0.99  
% 3.07/0.99  fof(f18,plain,(
% 3.07/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.07/0.99    inference(flattening,[],[f17])).
% 3.07/0.99  
% 3.07/0.99  fof(f42,plain,(
% 3.07/0.99    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f18])).
% 3.07/0.99  
% 3.07/0.99  fof(f41,plain,(
% 3.07/0.99    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f18])).
% 3.07/0.99  
% 3.07/0.99  fof(f55,plain,(
% 3.07/0.99    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f27])).
% 3.07/0.99  
% 3.07/0.99  fof(f62,plain,(
% 3.07/0.99    ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))),
% 3.07/0.99    inference(cnf_transformation,[],[f34])).
% 3.07/0.99  
% 3.07/0.99  fof(f4,axiom,(
% 3.07/0.99    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f15,plain,(
% 3.07/0.99    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.07/0.99    inference(ennf_transformation,[],[f4])).
% 3.07/0.99  
% 3.07/0.99  fof(f16,plain,(
% 3.07/0.99    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.07/0.99    inference(flattening,[],[f15])).
% 3.07/0.99  
% 3.07/0.99  fof(f39,plain,(
% 3.07/0.99    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f16])).
% 3.07/0.99  
% 3.07/0.99  fof(f40,plain,(
% 3.07/0.99    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.07/0.99    inference(cnf_transformation,[],[f16])).
% 3.07/0.99  
% 3.07/0.99  fof(f51,plain,(
% 3.07/0.99    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f32])).
% 3.07/0.99  
% 3.07/0.99  fof(f68,plain,(
% 3.07/0.99    ( ! [X2,X1] : (v1_funct_2(X2,k1_xboole_0,X1) | k1_xboole_0 != k1_relset_1(k1_xboole_0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 3.07/0.99    inference(equality_resolution,[],[f51])).
% 3.07/0.99  
% 3.07/0.99  fof(f1,axiom,(
% 3.07/0.99    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f30,plain,(
% 3.07/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 3.07/0.99    inference(nnf_transformation,[],[f1])).
% 3.07/0.99  
% 3.07/0.99  fof(f31,plain,(
% 3.07/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 3.07/0.99    inference(flattening,[],[f30])).
% 3.07/0.99  
% 3.07/0.99  fof(f36,plain,(
% 3.07/0.99    ( ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 | k1_xboole_0 != X0) )),
% 3.07/0.99    inference(cnf_transformation,[],[f31])).
% 3.07/0.99  
% 3.07/0.99  fof(f64,plain,(
% 3.07/0.99    ( ! [X1] : (k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0) )),
% 3.07/0.99    inference(equality_resolution,[],[f36])).
% 3.07/0.99  
% 3.07/0.99  fof(f2,axiom,(
% 3.07/0.99    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 3.07/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.07/0.99  
% 3.07/0.99  fof(f38,plain,(
% 3.07/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 3.07/0.99    inference(cnf_transformation,[],[f2])).
% 3.07/0.99  
% 3.07/0.99  cnf(c_18,plain,
% 3.07/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.07/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.07/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.07/0.99      | k1_xboole_0 = X2 ),
% 3.07/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_26,negated_conjecture,
% 3.07/0.99      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.07/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1011,plain,
% 3.07/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.07/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.07/0.99      | sK0 != X1
% 3.07/0.99      | sK1 != X2
% 3.07/0.99      | sK2 != X0
% 3.07/0.99      | k1_xboole_0 = X2 ),
% 3.07/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_26]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1012,plain,
% 3.07/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.07/0.99      | k1_relset_1(sK0,sK1,sK2) = sK0
% 3.07/0.99      | k1_xboole_0 = sK1 ),
% 3.07/0.99      inference(unflattening,[status(thm)],[c_1011]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_25,negated_conjecture,
% 3.07/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.07/0.99      inference(cnf_transformation,[],[f59]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1014,plain,
% 3.07/0.99      ( k1_relset_1(sK0,sK1,sK2) = sK0 | k1_xboole_0 = sK1 ),
% 3.07/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1012,c_25]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1648,plain,
% 3.07/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.07/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_11,plain,
% 3.07/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.07/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.07/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1651,plain,
% 3.07/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.07/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.07/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_2946,plain,
% 3.07/0.99      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 3.07/0.99      inference(superposition,[status(thm)],[c_1648,c_1651]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_3049,plain,
% 3.07/0.99      ( k1_relat_1(sK2) = sK0 | sK1 = k1_xboole_0 ),
% 3.07/0.99      inference(superposition,[status(thm)],[c_1014,c_2946]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_8,plain,
% 3.07/0.99      ( ~ v2_funct_1(X0)
% 3.07/0.99      | ~ v1_funct_1(X0)
% 3.07/0.99      | ~ v1_relat_1(X0)
% 3.07/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.07/0.99      inference(cnf_transformation,[],[f44]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_24,negated_conjecture,
% 3.07/0.99      ( v2_funct_1(sK2) ),
% 3.07/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_285,plain,
% 3.07/0.99      ( ~ v1_funct_1(X0)
% 3.07/0.99      | ~ v1_relat_1(X0)
% 3.07/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.07/0.99      | sK2 != X0 ),
% 3.07/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_24]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_286,plain,
% 3.07/0.99      ( ~ v1_funct_1(sK2)
% 3.07/0.99      | ~ v1_relat_1(sK2)
% 3.07/0.99      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.07/0.99      inference(unflattening,[status(thm)],[c_285]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_27,negated_conjecture,
% 3.07/0.99      ( v1_funct_1(sK2) ),
% 3.07/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_288,plain,
% 3.07/0.99      ( ~ v1_relat_1(sK2) | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.07/0.99      inference(global_propositional_subsumption,[status(thm)],[c_286,c_27]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1645,plain,
% 3.07/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.07/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.07/0.99      inference(predicate_to_equality,[status(thm)],[c_288]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_10,plain,
% 3.07/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 3.07/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1878,plain,
% 3.07/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.07/0.99      | v1_relat_1(sK2) ),
% 3.07/0.99      inference(instantiation,[status(thm)],[c_10]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1890,plain,
% 3.07/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.07/0.99      inference(global_propositional_subsumption,
% 3.07/0.99                [status(thm)],
% 3.07/0.99                [c_1645,c_27,c_25,c_286,c_1878]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_19,plain,
% 3.07/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 3.07/0.99      | ~ v1_funct_1(X0)
% 3.07/0.99      | ~ v1_relat_1(X0) ),
% 3.07/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.07/0.99  
% 3.07/0.99  cnf(c_1649,plain,
% 3.07/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
% 3.07/1.00      | v1_funct_1(X0) != iProver_top
% 3.07/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2819,plain,
% 3.07/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.07/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_1890,c_1649]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_12,plain,
% 3.07/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.07/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.07/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1650,plain,
% 3.07/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.07/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2464,plain,
% 3.07/1.00      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_1648,c_1650]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_23,negated_conjecture,
% 3.07/1.00      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.07/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2476,plain,
% 3.07/1.00      ( k2_relat_1(sK2) = sK1 ),
% 3.07/1.00      inference(light_normalisation,[status(thm)],[c_2464,c_23]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_9,plain,
% 3.07/1.00      ( ~ v2_funct_1(X0)
% 3.07/1.00      | ~ v1_funct_1(X0)
% 3.07/1.00      | ~ v1_relat_1(X0)
% 3.07/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 3.07/1.00      inference(cnf_transformation,[],[f43]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_271,plain,
% 3.07/1.00      ( ~ v1_funct_1(X0)
% 3.07/1.00      | ~ v1_relat_1(X0)
% 3.07/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 3.07/1.00      | sK2 != X0 ),
% 3.07/1.00      inference(resolution_lifted,[status(thm)],[c_9,c_24]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_272,plain,
% 3.07/1.00      ( ~ v1_funct_1(sK2)
% 3.07/1.00      | ~ v1_relat_1(sK2)
% 3.07/1.00      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.07/1.00      inference(unflattening,[status(thm)],[c_271]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_274,plain,
% 3.07/1.00      ( ~ v1_relat_1(sK2) | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.07/1.00      inference(global_propositional_subsumption,[status(thm)],[c_272,c_27]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1646,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 3.07/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_274]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1894,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_1646,c_27,c_25,c_272,c_1878]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2485,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_2476,c_1894]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2831,plain,
% 3.07/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.07/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(light_normalisation,[status(thm)],[c_2819,c_2485]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_28,plain,
% 3.07/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_30,plain,
% 3.07/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_6,plain,
% 3.07/1.00      ( ~ v1_funct_1(X0) | v1_funct_1(k2_funct_1(X0)) | ~ v1_relat_1(X0) ),
% 3.07/1.00      inference(cnf_transformation,[],[f42]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1860,plain,
% 3.07/1.00      ( v1_funct_1(k2_funct_1(sK2)) | ~ v1_funct_1(sK2) | ~ v1_relat_1(sK2) ),
% 3.07/1.00      inference(instantiation,[status(thm)],[c_6]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1861,plain,
% 3.07/1.00      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 3.07/1.00      | v1_funct_1(sK2) != iProver_top
% 3.07/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_1860]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_7,plain,
% 3.07/1.00      ( ~ v1_funct_1(X0) | ~ v1_relat_1(X0) | v1_relat_1(k2_funct_1(X0)) ),
% 3.07/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1867,plain,
% 3.07/1.00      ( ~ v1_funct_1(sK2) | v1_relat_1(k2_funct_1(sK2)) | ~ v1_relat_1(sK2) ),
% 3.07/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1868,plain,
% 3.07/1.00      ( v1_funct_1(sK2) != iProver_top
% 3.07/1.00      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 3.07/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_1867]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1879,plain,
% 3.07/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.07/1.00      | v1_relat_1(sK2) = iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_1878]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3263,plain,
% 3.07/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_2831,c_28,c_30,c_1861,c_1868,c_1879]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3269,plain,
% 3.07/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_3263,c_1651]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3278,plain,
% 3.07/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
% 3.07/1.00      inference(light_normalisation,[status(thm)],[c_3269,c_2485]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3301,plain,
% 3.07/1.00      ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1 | sK1 = k1_xboole_0 ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_3049,c_3278]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_20,plain,
% 3.07/1.00      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 3.07/1.00      | ~ v1_funct_1(X0)
% 3.07/1.00      | ~ v1_relat_1(X0) ),
% 3.07/1.00      inference(cnf_transformation,[],[f55]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_22,negated_conjecture,
% 3.07/1.00      ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
% 3.07/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2)) ),
% 3.07/1.00      inference(cnf_transformation,[],[f62]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1022,plain,
% 3.07/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ v1_funct_1(X0)
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.07/1.00      | ~ v1_relat_1(X0)
% 3.07/1.00      | k2_funct_1(sK2) != X0
% 3.07/1.00      | k1_relat_1(X0) != sK1
% 3.07/1.00      | k2_relat_1(X0) != sK0 ),
% 3.07/1.00      inference(resolution_lifted,[status(thm)],[c_20,c_22]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1023,plain,
% 3.07/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.07/1.00      | ~ v1_relat_1(k2_funct_1(sK2))
% 3.07/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
% 3.07/1.00      inference(unflattening,[status(thm)],[c_1022]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1035,plain,
% 3.07/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.07/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
% 3.07/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1023,c_10]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1637,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_1035]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1024,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.07/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_1023]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1965,plain,
% 3.07/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.07/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_1637,c_28,c_30,c_1024,c_1861,c_1868,c_1879]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1966,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.07/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.07/1.00      inference(renaming,[status(thm)],[c_1965]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1969,plain,
% 3.07/1.00      ( k1_relat_1(sK2) != sK0
% 3.07/1.00      | k2_relat_1(sK2) != sK1
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.07/1.00      inference(light_normalisation,[status(thm)],[c_1966,c_1890,c_1894]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2484,plain,
% 3.07/1.00      ( k1_relat_1(sK2) != sK0
% 3.07/1.00      | sK1 != sK1
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_2476,c_1969]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2488,plain,
% 3.07/1.00      ( k1_relat_1(sK2) != sK0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.07/1.00      inference(equality_resolution_simp,[status(thm)],[c_2484]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3179,plain,
% 3.07/1.00      ( sK1 = k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_3049,c_2488]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3268,plain,
% 3.07/1.00      ( sK1 = k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_3049,c_3263]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3723,plain,
% 3.07/1.00      ( sK1 = k1_xboole_0 ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_3301,c_3179,c_3268]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_5,plain,
% 3.07/1.00      ( ~ v1_relat_1(X0) | k1_relat_1(X0) != k1_xboole_0 | k1_xboole_0 = X0 ),
% 3.07/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1655,plain,
% 3.07/1.00      ( k1_relat_1(X0) != k1_xboole_0
% 3.07/1.00      | k1_xboole_0 = X0
% 3.07/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2588,plain,
% 3.07/1.00      ( k2_funct_1(sK2) = k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0
% 3.07/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_2485,c_1655]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2589,plain,
% 3.07/1.00      ( ~ v1_relat_1(k2_funct_1(sK2))
% 3.07/1.00      | k2_funct_1(sK2) = k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0 ),
% 3.07/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_2588]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2721,plain,
% 3.07/1.00      ( sK1 != k1_xboole_0 | k2_funct_1(sK2) = k1_xboole_0 ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_2588,c_28,c_30,c_1868,c_1879]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2722,plain,
% 3.07/1.00      ( k2_funct_1(sK2) = k1_xboole_0 | sK1 != k1_xboole_0 ),
% 3.07/1.00      inference(renaming,[status(thm)],[c_2721]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3733,plain,
% 3.07/1.00      ( k2_funct_1(sK2) = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3723,c_2722]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3827,plain,
% 3.07/1.00      ( k2_funct_1(sK2) = k1_xboole_0 ),
% 3.07/1.00      inference(equality_resolution_simp,[status(thm)],[c_3733]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_4,plain,
% 3.07/1.00      ( ~ v1_relat_1(X0) | k2_relat_1(X0) != k1_xboole_0 | k1_xboole_0 = X0 ),
% 3.07/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1656,plain,
% 3.07/1.00      ( k2_relat_1(X0) != k1_xboole_0
% 3.07/1.00      | k1_xboole_0 = X0
% 3.07/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2494,plain,
% 3.07/1.00      ( sK1 != k1_xboole_0
% 3.07/1.00      | sK2 = k1_xboole_0
% 3.07/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_2476,c_1656]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2591,plain,
% 3.07/1.00      ( sK2 = k1_xboole_0 | sK1 != k1_xboole_0 ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_2494,c_30,c_1879]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2592,plain,
% 3.07/1.00      ( sK1 != k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.07/1.00      inference(renaming,[status(thm)],[c_2591]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3735,plain,
% 3.07/1.00      ( sK2 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3723,c_2592]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3790,plain,
% 3.07/1.00      ( sK2 = k1_xboole_0 ),
% 3.07/1.00      inference(equality_resolution_simp,[status(thm)],[c_3735]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3828,plain,
% 3.07/1.00      ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
% 3.07/1.00      inference(light_normalisation,[status(thm)],[c_3827,c_3790]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_15,plain,
% 3.07/1.00      ( v1_funct_2(X0,k1_xboole_0,X1)
% 3.07/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 3.07/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0 ),
% 3.07/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_939,plain,
% 3.07/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 3.07/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.07/1.00      | k1_relset_1(k1_xboole_0,X1,X0) != k1_xboole_0
% 3.07/1.00      | k2_funct_1(sK2) != X0
% 3.07/1.00      | sK0 != X1
% 3.07/1.00      | sK1 != k1_xboole_0 ),
% 3.07/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_22]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_940,plain,
% 3.07/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.07/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0)))
% 3.07/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.07/1.00      | k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0 ),
% 3.07/1.00      inference(unflattening,[status(thm)],[c_939]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1641,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_940]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1,plain,
% 3.07/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.07/1.00      inference(cnf_transformation,[],[f64]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1797,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 3.07/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_1641,c_1]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2161,plain,
% 3.07/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | sK1 != k1_xboole_0
% 3.07/1.00      | k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0 ),
% 3.07/1.00      inference(global_propositional_subsumption,
% 3.07/1.00                [status(thm)],
% 3.07/1.00                [c_1797,c_28,c_30,c_1861,c_1879]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2162,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | sK1 != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(renaming,[status(thm)],[c_2161]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3739,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | k1_xboole_0 != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3723,c_2162]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3772,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK0))) != iProver_top
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(equality_resolution_simp,[status(thm)],[c_3739]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3776,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(sK2)) != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3772,c_1]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3794,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k2_funct_1(k1_xboole_0)) != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k2_funct_1(k1_xboole_0),k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3790,c_3776]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3832,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k1_xboole_0) != k1_xboole_0
% 3.07/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3828,c_3794]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3,plain,
% 3.07/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 3.07/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_85,plain,
% 3.07/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_87,plain,
% 3.07/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 3.07/1.00      inference(instantiation,[status(thm)],[c_85]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_4915,plain,
% 3.07/1.00      ( k1_relset_1(k1_xboole_0,sK0,k1_xboole_0) != k1_xboole_0 ),
% 3.07/1.00      inference(global_propositional_subsumption,[status(thm)],[c_3832,c_87]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3736,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3723,c_2485]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3792,plain,
% 3.07/1.00      ( k1_relat_1(k2_funct_1(k1_xboole_0)) = k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3790,c_3736]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_3831,plain,
% 3.07/1.00      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3828,c_3792]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_1657,plain,
% 3.07/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.07/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_2944,plain,
% 3.07/1.00      ( k1_relset_1(X0,X1,k1_xboole_0) = k1_relat_1(k1_xboole_0) ),
% 3.07/1.00      inference(superposition,[status(thm)],[c_1657,c_1651]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_4784,plain,
% 3.07/1.00      ( k1_relset_1(X0,X1,k1_xboole_0) = k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_3831,c_2944]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_4917,plain,
% 3.07/1.00      ( k1_xboole_0 != k1_xboole_0 ),
% 3.07/1.00      inference(demodulation,[status(thm)],[c_4915,c_4784]) ).
% 3.07/1.00  
% 3.07/1.00  cnf(c_4918,plain,
% 3.07/1.00      ( $false ),
% 3.07/1.00      inference(equality_resolution_simp,[status(thm)],[c_4917]) ).
% 3.07/1.00  
% 3.07/1.00  
% 3.07/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.07/1.00  
% 3.07/1.00  ------                               Statistics
% 3.07/1.00  
% 3.07/1.00  ------ General
% 3.07/1.00  
% 3.07/1.00  abstr_ref_over_cycles:                  0
% 3.07/1.00  abstr_ref_under_cycles:                 0
% 3.07/1.00  gc_basic_clause_elim:                   0
% 3.07/1.00  forced_gc_time:                         0
% 3.07/1.00  parsing_time:                           0.011
% 3.07/1.00  unif_index_cands_time:                  0.
% 3.07/1.00  unif_index_add_time:                    0.
% 3.07/1.00  orderings_time:                         0.
% 3.07/1.00  out_proof_time:                         0.017
% 3.07/1.00  total_time:                             0.21
% 3.07/1.00  num_of_symbols:                         47
% 3.07/1.00  num_of_terms:                           3611
% 3.07/1.00  
% 3.07/1.00  ------ Preprocessing
% 3.07/1.00  
% 3.07/1.00  num_of_splits:                          0
% 3.07/1.00  num_of_split_atoms:                     0
% 3.07/1.00  num_of_reused_defs:                     0
% 3.07/1.00  num_eq_ax_congr_red:                    2
% 3.07/1.00  num_of_sem_filtered_clauses:            1
% 3.07/1.00  num_of_subtypes:                        0
% 3.07/1.00  monotx_restored_types:                  0
% 3.07/1.00  sat_num_of_epr_types:                   0
% 3.07/1.00  sat_num_of_non_cyclic_types:            0
% 3.07/1.00  sat_guarded_non_collapsed_types:        0
% 3.07/1.00  num_pure_diseq_elim:                    0
% 3.07/1.00  simp_replaced_by:                       0
% 3.07/1.00  res_preprocessed:                       133
% 3.07/1.00  prep_upred:                             0
% 3.07/1.00  prep_unflattend:                        69
% 3.07/1.00  smt_new_axioms:                         0
% 3.07/1.00  pred_elim_cands:                        3
% 3.07/1.00  pred_elim:                              2
% 3.07/1.00  pred_elim_cl:                           0
% 3.07/1.00  pred_elim_cycles:                       5
% 3.07/1.00  merged_defs:                            0
% 3.07/1.00  merged_defs_ncl:                        0
% 3.07/1.00  bin_hyper_res:                          0
% 3.07/1.00  prep_cycles:                            4
% 3.07/1.00  pred_elim_time:                         0.021
% 3.07/1.00  splitting_time:                         0.
% 3.07/1.00  sem_filter_time:                        0.
% 3.07/1.00  monotx_time:                            0.
% 3.07/1.00  subtype_inf_time:                       0.
% 3.07/1.00  
% 3.07/1.00  ------ Problem properties
% 3.07/1.00  
% 3.07/1.00  clauses:                                27
% 3.07/1.00  conjectures:                            3
% 3.07/1.00  epr:                                    1
% 3.07/1.00  horn:                                   23
% 3.07/1.00  ground:                                 13
% 3.07/1.00  unary:                                  6
% 3.07/1.00  binary:                                 6
% 3.07/1.00  lits:                                   73
% 3.07/1.00  lits_eq:                                36
% 3.07/1.00  fd_pure:                                0
% 3.07/1.00  fd_pseudo:                              0
% 3.07/1.00  fd_cond:                                3
% 3.07/1.00  fd_pseudo_cond:                         0
% 3.07/1.00  ac_symbols:                             0
% 3.07/1.00  
% 3.07/1.00  ------ Propositional Solver
% 3.07/1.00  
% 3.07/1.00  prop_solver_calls:                      28
% 3.07/1.00  prop_fast_solver_calls:                 1094
% 3.07/1.00  smt_solver_calls:                       0
% 3.07/1.00  smt_fast_solver_calls:                  0
% 3.07/1.00  prop_num_of_clauses:                    1547
% 3.07/1.00  prop_preprocess_simplified:             4810
% 3.07/1.00  prop_fo_subsumed:                       34
% 3.07/1.00  prop_solver_time:                       0.
% 3.07/1.00  smt_solver_time:                        0.
% 3.07/1.00  smt_fast_solver_time:                   0.
% 3.07/1.00  prop_fast_solver_time:                  0.
% 3.07/1.00  prop_unsat_core_time:                   0.
% 3.07/1.00  
% 3.07/1.00  ------ QBF
% 3.07/1.00  
% 3.07/1.00  qbf_q_res:                              0
% 3.07/1.00  qbf_num_tautologies:                    0
% 3.07/1.00  qbf_prep_cycles:                        0
% 3.07/1.00  
% 3.07/1.00  ------ BMC1
% 3.07/1.00  
% 3.07/1.00  bmc1_current_bound:                     -1
% 3.07/1.00  bmc1_last_solved_bound:                 -1
% 3.07/1.00  bmc1_unsat_core_size:                   -1
% 3.07/1.00  bmc1_unsat_core_parents_size:           -1
% 3.07/1.00  bmc1_merge_next_fun:                    0
% 3.07/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.07/1.00  
% 3.07/1.00  ------ Instantiation
% 3.07/1.00  
% 3.07/1.00  inst_num_of_clauses:                    685
% 3.07/1.00  inst_num_in_passive:                    37
% 3.07/1.00  inst_num_in_active:                     304
% 3.07/1.00  inst_num_in_unprocessed:                344
% 3.07/1.00  inst_num_of_loops:                      370
% 3.07/1.00  inst_num_of_learning_restarts:          0
% 3.07/1.00  inst_num_moves_active_passive:          62
% 3.07/1.00  inst_lit_activity:                      0
% 3.07/1.00  inst_lit_activity_moves:                0
% 3.07/1.00  inst_num_tautologies:                   0
% 3.07/1.00  inst_num_prop_implied:                  0
% 3.07/1.00  inst_num_existing_simplified:           0
% 3.07/1.00  inst_num_eq_res_simplified:             0
% 3.07/1.00  inst_num_child_elim:                    0
% 3.07/1.00  inst_num_of_dismatching_blockings:      246
% 3.07/1.00  inst_num_of_non_proper_insts:           443
% 3.07/1.00  inst_num_of_duplicates:                 0
% 3.07/1.00  inst_inst_num_from_inst_to_res:         0
% 3.07/1.00  inst_dismatching_checking_time:         0.
% 3.07/1.00  
% 3.07/1.00  ------ Resolution
% 3.07/1.00  
% 3.07/1.00  res_num_of_clauses:                     0
% 3.07/1.00  res_num_in_passive:                     0
% 3.07/1.00  res_num_in_active:                      0
% 3.07/1.00  res_num_of_loops:                       137
% 3.07/1.00  res_forward_subset_subsumed:            37
% 3.07/1.00  res_backward_subset_subsumed:           2
% 3.07/1.00  res_forward_subsumed:                   1
% 3.07/1.00  res_backward_subsumed:                  0
% 3.07/1.00  res_forward_subsumption_resolution:     4
% 3.07/1.00  res_backward_subsumption_resolution:    0
% 3.07/1.00  res_clause_to_clause_subsumption:       177
% 3.07/1.00  res_orphan_elimination:                 0
% 3.07/1.00  res_tautology_del:                      84
% 3.07/1.00  res_num_eq_res_simplified:              0
% 3.07/1.00  res_num_sel_changes:                    0
% 3.07/1.00  res_moves_from_active_to_pass:          0
% 3.07/1.00  
% 3.07/1.00  ------ Superposition
% 3.07/1.00  
% 3.07/1.00  sup_time_total:                         0.
% 3.07/1.00  sup_time_generating:                    0.
% 3.07/1.00  sup_time_sim_full:                      0.
% 3.07/1.00  sup_time_sim_immed:                     0.
% 3.07/1.00  
% 3.07/1.00  sup_num_of_clauses:                     45
% 3.07/1.00  sup_num_in_active:                      34
% 3.07/1.00  sup_num_in_passive:                     11
% 3.07/1.00  sup_num_of_loops:                       72
% 3.07/1.00  sup_fw_superposition:                   40
% 3.07/1.00  sup_bw_superposition:                   32
% 3.07/1.00  sup_immediate_simplified:               64
% 3.07/1.00  sup_given_eliminated:                   0
% 3.07/1.00  comparisons_done:                       0
% 3.07/1.00  comparisons_avoided:                    10
% 3.07/1.00  
% 3.07/1.00  ------ Simplifications
% 3.07/1.00  
% 3.07/1.00  
% 3.07/1.00  sim_fw_subset_subsumed:                 10
% 3.07/1.00  sim_bw_subset_subsumed:                 4
% 3.07/1.00  sim_fw_subsumed:                        13
% 3.07/1.00  sim_bw_subsumed:                        2
% 3.07/1.00  sim_fw_subsumption_res:                 2
% 3.07/1.00  sim_bw_subsumption_res:                 0
% 3.07/1.00  sim_tautology_del:                      3
% 3.07/1.00  sim_eq_tautology_del:                   9
% 3.07/1.00  sim_eq_res_simp:                        6
% 3.07/1.00  sim_fw_demodulated:                     18
% 3.07/1.00  sim_bw_demodulated:                     47
% 3.07/1.00  sim_light_normalised:                   33
% 3.07/1.00  sim_joinable_taut:                      0
% 3.07/1.00  sim_joinable_simp:                      0
% 3.07/1.00  sim_ac_normalised:                      0
% 3.07/1.00  sim_smt_subsumption:                    0
% 3.07/1.00  
%------------------------------------------------------------------------------
