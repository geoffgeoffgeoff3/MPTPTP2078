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
% DateTime   : Thu Dec  3 12:02:24 EST 2020

% Result     : Theorem 3.03s
% Output     : CNFRefutation 3.03s
% Verified   : 
% Statistics : ERROR: Analysing output (Could not find formula named c_112)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,conjecture,(
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

fof(f18,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ( k2_relset_1(X0,X1,X2) = X1
            & v2_funct_1(X2) )
         => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(k2_funct_1(X2),X1,X0)
            & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f35,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f18])).

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
    inference(flattening,[],[f35])).

fof(f41,plain,
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

fof(f42,plain,
    ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
      | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
      | ~ v1_funct_1(k2_funct_1(sK2)) )
    & k2_relset_1(sK0,sK1,sK2) = sK1
    & v2_funct_1(sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f36,f41])).

fof(f76,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f42])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f78,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f42])).

fof(f10,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f57,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f77,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f74,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f33])).

fof(f73,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f58,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f22])).

fof(f56,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f55,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f72,plain,(
    ! [X0,X1] :
      ( v1_funct_2(X1,k1_relat_1(X1),X0)
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f79,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f42])).

fof(f7,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f7])).

fof(f14,axiom,(
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
    inference(ennf_transformation,[],[f14])).

fof(f30,plain,(
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
    inference(flattening,[],[f29])).

fof(f40,plain,(
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
    inference(nnf_transformation,[],[f30])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f75,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f42])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f15,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f32,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f31])).

fof(f70,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f69,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f84,plain,(
    ! [X2,X0] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f66])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f37])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f81,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f47])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f51,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_34,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1978,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1981,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3407,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1978,c_1981])).

cnf(c_32,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_3419,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_3407,c_32])).

cnf(c_15,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_33,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_407,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_33])).

cnf(c_408,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_407])).

cnf(c_36,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_410,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_408,c_36])).

cnf(c_1975,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_410])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2312,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_2320,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1975,c_36,c_34,c_408,c_2312])).

cnf(c_3436,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
    inference(demodulation,[status(thm)],[c_3419,c_2320])).

cnf(c_28,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1979,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1))) = iProver_top
    | r1_tarski(k2_relat_1(X0),X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_4708,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),X0) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3436,c_1979])).

cnf(c_14,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_421,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_33])).

cnf(c_422,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_421])).

cnf(c_424,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_422,c_36])).

cnf(c_1974,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_424])).

cnf(c_2316,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1974,c_36,c_34,c_422,c_2312])).

cnf(c_4753,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4708,c_2316])).

cnf(c_37,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_39,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_2313,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2312])).

cnf(c_12,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_2377,plain,
    ( ~ v1_relat_1(sK2)
    | v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_2378,plain,
    ( v1_relat_1(sK2) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2377])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_2376,plain,
    ( v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_2380,plain,
    ( v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2376])).

cnf(c_6190,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4753,c_37,c_39,c_2313,c_2378,c_2380])).

cnf(c_29,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),X1)
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_31,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_842,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_funct_1(sK2) != X0
    | k1_relat_1(X0) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_29,c_31])).

cnf(c_843,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_relat_1(k2_funct_1(sK2))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(unflattening,[status(thm)],[c_842])).

cnf(c_855,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_843,c_16])).

cnf(c_1961,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_855])).

cnf(c_2365,plain,
    ( k2_relat_1(sK2) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1961,c_2316,c_2320])).

cnf(c_3435,plain,
    ( sK1 != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3419,c_2365])).

cnf(c_3439,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3435])).

cnf(c_3776,plain,
    ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3439,c_37,c_39,c_2313,c_2378])).

cnf(c_3777,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3776])).

cnf(c_6204,plain,
    ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_6190,c_3777])).

cnf(c_10,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_24,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_35,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_812,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X1
    | sK1 != X2
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_35])).

cnf(c_813,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_812])).

cnf(c_815,plain,
    ( k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_813,c_34])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1982,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_4080,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1978,c_1982])).

cnf(c_4344,plain,
    ( k1_relat_1(sK2) = sK0
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_815,c_4080])).

cnf(c_25,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1980,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4983,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2316,c_1980])).

cnf(c_5009,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4983,c_3436])).

cnf(c_5555,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5009,c_37,c_39,c_2313,c_2378,c_2380])).

cnf(c_5562,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_5555,c_1982])).

cnf(c_5571,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5562,c_3436])).

cnf(c_5583,plain,
    ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4344,c_5571])).

cnf(c_26,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_823,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_funct_1(sK2) != X0
    | k1_relat_1(X0) != sK1
    | k2_relat_1(X0) != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_31])).

cnf(c_824,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_relat_1(k2_funct_1(sK2))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
    inference(unflattening,[status(thm)],[c_823])).

cnf(c_836,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_824,c_16])).

cnf(c_1962,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_836])).

cnf(c_825,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_824])).

cnf(c_2552,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1962,c_37,c_39,c_825,c_2313,c_2378,c_2380])).

cnf(c_2553,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(renaming,[status(thm)],[c_2552])).

cnf(c_2556,plain,
    ( k1_relat_1(sK2) != sK0
    | k2_relat_1(sK2) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2553,c_2316,c_2320])).

cnf(c_3434,plain,
    ( k1_relat_1(sK2) != sK0
    | sK1 != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3419,c_2556])).

cnf(c_3446,plain,
    ( k1_relat_1(sK2) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3434])).

cnf(c_4349,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4344,c_3446])).

cnf(c_5560,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_4344,c_5555])).

cnf(c_6526,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5583,c_4349,c_5560])).

cnf(c_20,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_618,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | ~ r1_tarski(k2_relat_1(X2),X3)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | X2 != X0
    | k1_relat_1(X2) != X1
    | k1_xboole_0 != X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_29])).

cnf(c_619,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k1_xboole_0)))
    | ~ r1_tarski(k2_relat_1(X0),k1_xboole_0)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X0
    | k1_xboole_0 = k1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_618])).

cnf(c_635,plain,
    ( ~ r1_tarski(k2_relat_1(X0),k1_xboole_0)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X0
    | k1_xboole_0 = k1_relat_1(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_619,c_28])).

cnf(c_1971,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = k1_relat_1(X0)
    | r1_tarski(k2_relat_1(X0),k1_xboole_0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_635])).

cnf(c_3953,plain,
    ( k1_relat_1(sK2) = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(sK1,k1_xboole_0) != iProver_top
    | v1_relat_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3419,c_1971])).

cnf(c_4439,plain,
    ( k1_relat_1(sK2) = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(sK1,k1_xboole_0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3953,c_37,c_39,c_2313])).

cnf(c_6542,plain,
    ( k1_relat_1(sK2) = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6526,c_4439])).

cnf(c_5,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_105,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_4,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_106,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_111,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1212,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2444,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_1212])).

cnf(c_1215,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2665,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(sK1,X2)
    | X2 != X1
    | sK1 != X0 ),
    inference(instantiation,[status(thm)],[c_1215])).

cnf(c_2667,plain,
    ( r1_tarski(sK1,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | sK1 != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2665])).

cnf(c_1217,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_3393,plain,
    ( k1_zfmisc_1(sK0) = k1_zfmisc_1(sK0)
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_1217])).

cnf(c_3463,plain,
    ( r1_tarski(k1_xboole_0,sK0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_3466,plain,
    ( r1_tarski(k1_xboole_0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3463])).

cnf(c_4441,plain,
    ( ~ r1_tarski(sK1,k1_xboole_0)
    | k1_relat_1(sK2) = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4439])).

cnf(c_7,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_4473,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ r1_tarski(X0,sK0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_4474,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK0)) = iProver_top
    | r1_tarski(X0,sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4473])).

cnf(c_4476,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) = iProver_top
    | r1_tarski(k1_xboole_0,sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_4474])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_3468,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | r1_tarski(X0,sK0) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_5075,plain,
    ( ~ m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0))
    | r1_tarski(k1_relat_1(sK2),sK0) ),
    inference(instantiation,[status(thm)],[c_3468])).

cnf(c_5076,plain,
    ( m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5075])).

cnf(c_1218,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2358,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | X0 != X2
    | X1 != k1_zfmisc_1(X3) ),
    inference(instantiation,[status(thm)],[c_1218])).

cnf(c_2493,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(X2,k1_zfmisc_1(X1))
    | X2 != X0
    | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_2358])).

cnf(c_4483,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | m1_subset_1(X1,k1_zfmisc_1(sK0))
    | X1 != X0
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
    inference(instantiation,[status(thm)],[c_2493])).

cnf(c_6046,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0))
    | k1_relat_1(sK2) != X0
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
    inference(instantiation,[status(thm)],[c_4483])).

cnf(c_6047,plain,
    ( k1_relat_1(sK2) != X0
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0)
    | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6046])).

cnf(c_6049,plain,
    ( k1_relat_1(sK2) != k1_xboole_0
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0)
    | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_6047])).

cnf(c_7569,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6542,c_105,c_106,c_112,c_2444,c_2668,c_3393,c_3466,c_4349,c_4439,c_4476,c_5076,c_5560,c_6049,c_6204])).

cnf(c_7872,plain,
    ( r1_tarski(k1_xboole_0,sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6204,c_10,c_7569])).

cnf(c_1990,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_7874,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7872,c_1990])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n020.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 14:36:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.03/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.03/0.99  
% 3.03/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.03/0.99  
% 3.03/0.99  ------  iProver source info
% 3.03/0.99  
% 3.03/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.03/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.03/0.99  git: non_committed_changes: false
% 3.03/0.99  git: last_make_outside_of_git: false
% 3.03/0.99  
% 3.03/0.99  ------ 
% 3.03/0.99  
% 3.03/0.99  ------ Input Options
% 3.03/0.99  
% 3.03/0.99  --out_options                           all
% 3.03/0.99  --tptp_safe_out                         true
% 3.03/0.99  --problem_path                          ""
% 3.03/0.99  --include_path                          ""
% 3.03/0.99  --clausifier                            res/vclausify_rel
% 3.03/0.99  --clausifier_options                    --mode clausify
% 3.03/0.99  --stdin                                 false
% 3.03/0.99  --stats_out                             all
% 3.03/0.99  
% 3.03/0.99  ------ General Options
% 3.03/0.99  
% 3.03/0.99  --fof                                   false
% 3.03/0.99  --time_out_real                         305.
% 3.03/0.99  --time_out_virtual                      -1.
% 3.03/0.99  --symbol_type_check                     false
% 3.03/0.99  --clausify_out                          false
% 3.03/0.99  --sig_cnt_out                           false
% 3.03/0.99  --trig_cnt_out                          false
% 3.03/0.99  --trig_cnt_out_tolerance                1.
% 3.03/0.99  --trig_cnt_out_sk_spl                   false
% 3.03/0.99  --abstr_cl_out                          false
% 3.03/0.99  
% 3.03/0.99  ------ Global Options
% 3.03/0.99  
% 3.03/0.99  --schedule                              default
% 3.03/0.99  --add_important_lit                     false
% 3.03/0.99  --prop_solver_per_cl                    1000
% 3.03/0.99  --min_unsat_core                        false
% 3.03/0.99  --soft_assumptions                      false
% 3.03/0.99  --soft_lemma_size                       3
% 3.03/0.99  --prop_impl_unit_size                   0
% 3.03/0.99  --prop_impl_unit                        []
% 3.03/0.99  --share_sel_clauses                     true
% 3.03/0.99  --reset_solvers                         false
% 3.03/0.99  --bc_imp_inh                            [conj_cone]
% 3.03/0.99  --conj_cone_tolerance                   3.
% 3.03/0.99  --extra_neg_conj                        none
% 3.03/0.99  --large_theory_mode                     true
% 3.03/0.99  --prolific_symb_bound                   200
% 3.03/0.99  --lt_threshold                          2000
% 3.03/0.99  --clause_weak_htbl                      true
% 3.03/0.99  --gc_record_bc_elim                     false
% 3.03/0.99  
% 3.03/0.99  ------ Preprocessing Options
% 3.03/0.99  
% 3.03/0.99  --preprocessing_flag                    true
% 3.03/0.99  --time_out_prep_mult                    0.1
% 3.03/0.99  --splitting_mode                        input
% 3.03/0.99  --splitting_grd                         true
% 3.03/0.99  --splitting_cvd                         false
% 3.03/0.99  --splitting_cvd_svl                     false
% 3.03/0.99  --splitting_nvd                         32
% 3.03/0.99  --sub_typing                            true
% 3.03/0.99  --prep_gs_sim                           true
% 3.03/0.99  --prep_unflatten                        true
% 3.03/0.99  --prep_res_sim                          true
% 3.03/0.99  --prep_upred                            true
% 3.03/0.99  --prep_sem_filter                       exhaustive
% 3.03/0.99  --prep_sem_filter_out                   false
% 3.03/0.99  --pred_elim                             true
% 3.03/0.99  --res_sim_input                         true
% 3.03/0.99  --eq_ax_congr_red                       true
% 3.03/0.99  --pure_diseq_elim                       true
% 3.03/0.99  --brand_transform                       false
% 3.03/0.99  --non_eq_to_eq                          false
% 3.03/0.99  --prep_def_merge                        true
% 3.03/0.99  --prep_def_merge_prop_impl              false
% 3.03/0.99  --prep_def_merge_mbd                    true
% 3.03/0.99  --prep_def_merge_tr_red                 false
% 3.03/0.99  --prep_def_merge_tr_cl                  false
% 3.03/0.99  --smt_preprocessing                     true
% 3.03/0.99  --smt_ac_axioms                         fast
% 3.03/0.99  --preprocessed_out                      false
% 3.03/0.99  --preprocessed_stats                    false
% 3.03/0.99  
% 3.03/0.99  ------ Abstraction refinement Options
% 3.03/0.99  
% 3.03/0.99  --abstr_ref                             []
% 3.03/0.99  --abstr_ref_prep                        false
% 3.03/0.99  --abstr_ref_until_sat                   false
% 3.03/0.99  --abstr_ref_sig_restrict                funpre
% 3.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.03/0.99  --abstr_ref_under                       []
% 3.03/0.99  
% 3.03/0.99  ------ SAT Options
% 3.03/0.99  
% 3.03/0.99  --sat_mode                              false
% 3.03/0.99  --sat_fm_restart_options                ""
% 3.03/0.99  --sat_gr_def                            false
% 3.03/0.99  --sat_epr_types                         true
% 3.03/0.99  --sat_non_cyclic_types                  false
% 3.03/0.99  --sat_finite_models                     false
% 3.03/0.99  --sat_fm_lemmas                         false
% 3.03/0.99  --sat_fm_prep                           false
% 3.03/0.99  --sat_fm_uc_incr                        true
% 3.03/0.99  --sat_out_model                         small
% 3.03/0.99  --sat_out_clauses                       false
% 3.03/0.99  
% 3.03/0.99  ------ QBF Options
% 3.03/0.99  
% 3.03/0.99  --qbf_mode                              false
% 3.03/0.99  --qbf_elim_univ                         false
% 3.03/0.99  --qbf_dom_inst                          none
% 3.03/0.99  --qbf_dom_pre_inst                      false
% 3.03/0.99  --qbf_sk_in                             false
% 3.03/0.99  --qbf_pred_elim                         true
% 3.03/0.99  --qbf_split                             512
% 3.03/0.99  
% 3.03/0.99  ------ BMC1 Options
% 3.03/0.99  
% 3.03/0.99  --bmc1_incremental                      false
% 3.03/0.99  --bmc1_axioms                           reachable_all
% 3.03/0.99  --bmc1_min_bound                        0
% 3.03/0.99  --bmc1_max_bound                        -1
% 3.03/0.99  --bmc1_max_bound_default                -1
% 3.03/0.99  --bmc1_symbol_reachability              true
% 3.03/0.99  --bmc1_property_lemmas                  false
% 3.03/0.99  --bmc1_k_induction                      false
% 3.03/0.99  --bmc1_non_equiv_states                 false
% 3.03/0.99  --bmc1_deadlock                         false
% 3.03/0.99  --bmc1_ucm                              false
% 3.03/0.99  --bmc1_add_unsat_core                   none
% 3.03/0.99  --bmc1_unsat_core_children              false
% 3.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.03/0.99  --bmc1_out_stat                         full
% 3.03/0.99  --bmc1_ground_init                      false
% 3.03/0.99  --bmc1_pre_inst_next_state              false
% 3.03/0.99  --bmc1_pre_inst_state                   false
% 3.03/0.99  --bmc1_pre_inst_reach_state             false
% 3.03/0.99  --bmc1_out_unsat_core                   false
% 3.03/0.99  --bmc1_aig_witness_out                  false
% 3.03/0.99  --bmc1_verbose                          false
% 3.03/0.99  --bmc1_dump_clauses_tptp                false
% 3.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.03/0.99  --bmc1_dump_file                        -
% 3.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.03/0.99  --bmc1_ucm_extend_mode                  1
% 3.03/0.99  --bmc1_ucm_init_mode                    2
% 3.03/0.99  --bmc1_ucm_cone_mode                    none
% 3.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.03/0.99  --bmc1_ucm_relax_model                  4
% 3.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.03/0.99  --bmc1_ucm_layered_model                none
% 3.03/0.99  --bmc1_ucm_max_lemma_size               10
% 3.03/0.99  
% 3.03/0.99  ------ AIG Options
% 3.03/0.99  
% 3.03/0.99  --aig_mode                              false
% 3.03/0.99  
% 3.03/0.99  ------ Instantiation Options
% 3.03/0.99  
% 3.03/0.99  --instantiation_flag                    true
% 3.03/0.99  --inst_sos_flag                         false
% 3.03/0.99  --inst_sos_phase                        true
% 3.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.03/0.99  --inst_lit_sel_side                     num_symb
% 3.03/0.99  --inst_solver_per_active                1400
% 3.03/0.99  --inst_solver_calls_frac                1.
% 3.03/0.99  --inst_passive_queue_type               priority_queues
% 3.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.03/0.99  --inst_passive_queues_freq              [25;2]
% 3.03/0.99  --inst_dismatching                      true
% 3.03/0.99  --inst_eager_unprocessed_to_passive     true
% 3.03/0.99  --inst_prop_sim_given                   true
% 3.03/0.99  --inst_prop_sim_new                     false
% 3.03/0.99  --inst_subs_new                         false
% 3.03/0.99  --inst_eq_res_simp                      false
% 3.03/0.99  --inst_subs_given                       false
% 3.03/0.99  --inst_orphan_elimination               true
% 3.03/0.99  --inst_learning_loop_flag               true
% 3.03/0.99  --inst_learning_start                   3000
% 3.03/0.99  --inst_learning_factor                  2
% 3.03/0.99  --inst_start_prop_sim_after_learn       3
% 3.03/0.99  --inst_sel_renew                        solver
% 3.03/0.99  --inst_lit_activity_flag                true
% 3.03/0.99  --inst_restr_to_given                   false
% 3.03/0.99  --inst_activity_threshold               500
% 3.03/0.99  --inst_out_proof                        true
% 3.03/0.99  
% 3.03/0.99  ------ Resolution Options
% 3.03/0.99  
% 3.03/0.99  --resolution_flag                       true
% 3.03/0.99  --res_lit_sel                           adaptive
% 3.03/0.99  --res_lit_sel_side                      none
% 3.03/0.99  --res_ordering                          kbo
% 3.03/0.99  --res_to_prop_solver                    active
% 3.03/0.99  --res_prop_simpl_new                    false
% 3.03/0.99  --res_prop_simpl_given                  true
% 3.03/0.99  --res_passive_queue_type                priority_queues
% 3.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.03/0.99  --res_passive_queues_freq               [15;5]
% 3.03/0.99  --res_forward_subs                      full
% 3.03/0.99  --res_backward_subs                     full
% 3.03/0.99  --res_forward_subs_resolution           true
% 3.03/0.99  --res_backward_subs_resolution          true
% 3.03/0.99  --res_orphan_elimination                true
% 3.03/0.99  --res_time_limit                        2.
% 3.03/0.99  --res_out_proof                         true
% 3.03/0.99  
% 3.03/0.99  ------ Superposition Options
% 3.03/0.99  
% 3.03/0.99  --superposition_flag                    true
% 3.03/0.99  --sup_passive_queue_type                priority_queues
% 3.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.03/0.99  --demod_completeness_check              fast
% 3.03/0.99  --demod_use_ground                      true
% 3.03/0.99  --sup_to_prop_solver                    passive
% 3.03/0.99  --sup_prop_simpl_new                    true
% 3.03/0.99  --sup_prop_simpl_given                  true
% 3.03/0.99  --sup_fun_splitting                     false
% 3.03/0.99  --sup_smt_interval                      50000
% 3.03/0.99  
% 3.03/0.99  ------ Superposition Simplification Setup
% 3.03/0.99  
% 3.03/0.99  --sup_indices_passive                   []
% 3.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_full_bw                           [BwDemod]
% 3.03/0.99  --sup_immed_triv                        [TrivRules]
% 3.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_immed_bw_main                     []
% 3.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.03/0.99  
% 3.03/0.99  ------ Combination Options
% 3.03/0.99  
% 3.03/0.99  --comb_res_mult                         3
% 3.03/0.99  --comb_sup_mult                         2
% 3.03/0.99  --comb_inst_mult                        10
% 3.03/0.99  
% 3.03/0.99  ------ Debug Options
% 3.03/0.99  
% 3.03/0.99  --dbg_backtrace                         false
% 3.03/0.99  --dbg_dump_prop_clauses                 false
% 3.03/0.99  --dbg_dump_prop_clauses_file            -
% 3.03/0.99  --dbg_out_stat                          false
% 3.03/0.99  ------ Parsing...
% 3.03/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.03/0.99  
% 3.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e 
% 3.03/0.99  
% 3.03/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.03/0.99  
% 3.03/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.03/0.99  ------ Proving...
% 3.03/0.99  ------ Problem Properties 
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  clauses                                 39
% 3.03/0.99  conjectures                             3
% 3.03/0.99  EPR                                     6
% 3.03/0.99  Horn                                    32
% 3.03/0.99  unary                                   9
% 3.03/0.99  binary                                  9
% 3.03/0.99  lits                                    110
% 3.03/0.99  lits eq                                 45
% 3.03/0.99  fd_pure                                 0
% 3.03/0.99  fd_pseudo                               0
% 3.03/0.99  fd_cond                                 4
% 3.03/0.99  fd_pseudo_cond                          1
% 3.03/0.99  AC symbols                              0
% 3.03/0.99  
% 3.03/0.99  ------ Schedule dynamic 5 is on 
% 3.03/0.99  
% 3.03/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  ------ 
% 3.03/0.99  Current options:
% 3.03/0.99  ------ 
% 3.03/0.99  
% 3.03/0.99  ------ Input Options
% 3.03/0.99  
% 3.03/0.99  --out_options                           all
% 3.03/0.99  --tptp_safe_out                         true
% 3.03/0.99  --problem_path                          ""
% 3.03/0.99  --include_path                          ""
% 3.03/0.99  --clausifier                            res/vclausify_rel
% 3.03/0.99  --clausifier_options                    --mode clausify
% 3.03/0.99  --stdin                                 false
% 3.03/0.99  --stats_out                             all
% 3.03/0.99  
% 3.03/0.99  ------ General Options
% 3.03/0.99  
% 3.03/0.99  --fof                                   false
% 3.03/0.99  --time_out_real                         305.
% 3.03/0.99  --time_out_virtual                      -1.
% 3.03/0.99  --symbol_type_check                     false
% 3.03/0.99  --clausify_out                          false
% 3.03/0.99  --sig_cnt_out                           false
% 3.03/0.99  --trig_cnt_out                          false
% 3.03/0.99  --trig_cnt_out_tolerance                1.
% 3.03/0.99  --trig_cnt_out_sk_spl                   false
% 3.03/0.99  --abstr_cl_out                          false
% 3.03/0.99  
% 3.03/0.99  ------ Global Options
% 3.03/0.99  
% 3.03/0.99  --schedule                              default
% 3.03/0.99  --add_important_lit                     false
% 3.03/0.99  --prop_solver_per_cl                    1000
% 3.03/0.99  --min_unsat_core                        false
% 3.03/0.99  --soft_assumptions                      false
% 3.03/0.99  --soft_lemma_size                       3
% 3.03/0.99  --prop_impl_unit_size                   0
% 3.03/0.99  --prop_impl_unit                        []
% 3.03/0.99  --share_sel_clauses                     true
% 3.03/0.99  --reset_solvers                         false
% 3.03/0.99  --bc_imp_inh                            [conj_cone]
% 3.03/0.99  --conj_cone_tolerance                   3.
% 3.03/0.99  --extra_neg_conj                        none
% 3.03/0.99  --large_theory_mode                     true
% 3.03/0.99  --prolific_symb_bound                   200
% 3.03/0.99  --lt_threshold                          2000
% 3.03/0.99  --clause_weak_htbl                      true
% 3.03/0.99  --gc_record_bc_elim                     false
% 3.03/0.99  
% 3.03/0.99  ------ Preprocessing Options
% 3.03/0.99  
% 3.03/0.99  --preprocessing_flag                    true
% 3.03/0.99  --time_out_prep_mult                    0.1
% 3.03/0.99  --splitting_mode                        input
% 3.03/0.99  --splitting_grd                         true
% 3.03/0.99  --splitting_cvd                         false
% 3.03/0.99  --splitting_cvd_svl                     false
% 3.03/0.99  --splitting_nvd                         32
% 3.03/0.99  --sub_typing                            true
% 3.03/0.99  --prep_gs_sim                           true
% 3.03/0.99  --prep_unflatten                        true
% 3.03/0.99  --prep_res_sim                          true
% 3.03/0.99  --prep_upred                            true
% 3.03/0.99  --prep_sem_filter                       exhaustive
% 3.03/0.99  --prep_sem_filter_out                   false
% 3.03/0.99  --pred_elim                             true
% 3.03/0.99  --res_sim_input                         true
% 3.03/0.99  --eq_ax_congr_red                       true
% 3.03/0.99  --pure_diseq_elim                       true
% 3.03/0.99  --brand_transform                       false
% 3.03/0.99  --non_eq_to_eq                          false
% 3.03/0.99  --prep_def_merge                        true
% 3.03/0.99  --prep_def_merge_prop_impl              false
% 3.03/0.99  --prep_def_merge_mbd                    true
% 3.03/0.99  --prep_def_merge_tr_red                 false
% 3.03/0.99  --prep_def_merge_tr_cl                  false
% 3.03/0.99  --smt_preprocessing                     true
% 3.03/0.99  --smt_ac_axioms                         fast
% 3.03/0.99  --preprocessed_out                      false
% 3.03/0.99  --preprocessed_stats                    false
% 3.03/0.99  
% 3.03/0.99  ------ Abstraction refinement Options
% 3.03/0.99  
% 3.03/0.99  --abstr_ref                             []
% 3.03/0.99  --abstr_ref_prep                        false
% 3.03/0.99  --abstr_ref_until_sat                   false
% 3.03/0.99  --abstr_ref_sig_restrict                funpre
% 3.03/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.03/0.99  --abstr_ref_under                       []
% 3.03/0.99  
% 3.03/0.99  ------ SAT Options
% 3.03/0.99  
% 3.03/0.99  --sat_mode                              false
% 3.03/0.99  --sat_fm_restart_options                ""
% 3.03/0.99  --sat_gr_def                            false
% 3.03/0.99  --sat_epr_types                         true
% 3.03/0.99  --sat_non_cyclic_types                  false
% 3.03/0.99  --sat_finite_models                     false
% 3.03/0.99  --sat_fm_lemmas                         false
% 3.03/0.99  --sat_fm_prep                           false
% 3.03/0.99  --sat_fm_uc_incr                        true
% 3.03/0.99  --sat_out_model                         small
% 3.03/0.99  --sat_out_clauses                       false
% 3.03/0.99  
% 3.03/0.99  ------ QBF Options
% 3.03/0.99  
% 3.03/0.99  --qbf_mode                              false
% 3.03/0.99  --qbf_elim_univ                         false
% 3.03/0.99  --qbf_dom_inst                          none
% 3.03/0.99  --qbf_dom_pre_inst                      false
% 3.03/0.99  --qbf_sk_in                             false
% 3.03/0.99  --qbf_pred_elim                         true
% 3.03/0.99  --qbf_split                             512
% 3.03/0.99  
% 3.03/0.99  ------ BMC1 Options
% 3.03/0.99  
% 3.03/0.99  --bmc1_incremental                      false
% 3.03/0.99  --bmc1_axioms                           reachable_all
% 3.03/0.99  --bmc1_min_bound                        0
% 3.03/0.99  --bmc1_max_bound                        -1
% 3.03/0.99  --bmc1_max_bound_default                -1
% 3.03/0.99  --bmc1_symbol_reachability              true
% 3.03/0.99  --bmc1_property_lemmas                  false
% 3.03/0.99  --bmc1_k_induction                      false
% 3.03/0.99  --bmc1_non_equiv_states                 false
% 3.03/0.99  --bmc1_deadlock                         false
% 3.03/0.99  --bmc1_ucm                              false
% 3.03/0.99  --bmc1_add_unsat_core                   none
% 3.03/0.99  --bmc1_unsat_core_children              false
% 3.03/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.03/0.99  --bmc1_out_stat                         full
% 3.03/0.99  --bmc1_ground_init                      false
% 3.03/0.99  --bmc1_pre_inst_next_state              false
% 3.03/0.99  --bmc1_pre_inst_state                   false
% 3.03/0.99  --bmc1_pre_inst_reach_state             false
% 3.03/0.99  --bmc1_out_unsat_core                   false
% 3.03/0.99  --bmc1_aig_witness_out                  false
% 3.03/0.99  --bmc1_verbose                          false
% 3.03/0.99  --bmc1_dump_clauses_tptp                false
% 3.03/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.03/0.99  --bmc1_dump_file                        -
% 3.03/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.03/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.03/0.99  --bmc1_ucm_extend_mode                  1
% 3.03/0.99  --bmc1_ucm_init_mode                    2
% 3.03/0.99  --bmc1_ucm_cone_mode                    none
% 3.03/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.03/0.99  --bmc1_ucm_relax_model                  4
% 3.03/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.03/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.03/0.99  --bmc1_ucm_layered_model                none
% 3.03/0.99  --bmc1_ucm_max_lemma_size               10
% 3.03/0.99  
% 3.03/0.99  ------ AIG Options
% 3.03/0.99  
% 3.03/0.99  --aig_mode                              false
% 3.03/0.99  
% 3.03/0.99  ------ Instantiation Options
% 3.03/0.99  
% 3.03/0.99  --instantiation_flag                    true
% 3.03/0.99  --inst_sos_flag                         false
% 3.03/0.99  --inst_sos_phase                        true
% 3.03/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.03/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.03/0.99  --inst_lit_sel_side                     none
% 3.03/0.99  --inst_solver_per_active                1400
% 3.03/0.99  --inst_solver_calls_frac                1.
% 3.03/0.99  --inst_passive_queue_type               priority_queues
% 3.03/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.03/0.99  --inst_passive_queues_freq              [25;2]
% 3.03/0.99  --inst_dismatching                      true
% 3.03/0.99  --inst_eager_unprocessed_to_passive     true
% 3.03/0.99  --inst_prop_sim_given                   true
% 3.03/0.99  --inst_prop_sim_new                     false
% 3.03/0.99  --inst_subs_new                         false
% 3.03/0.99  --inst_eq_res_simp                      false
% 3.03/0.99  --inst_subs_given                       false
% 3.03/0.99  --inst_orphan_elimination               true
% 3.03/0.99  --inst_learning_loop_flag               true
% 3.03/0.99  --inst_learning_start                   3000
% 3.03/0.99  --inst_learning_factor                  2
% 3.03/0.99  --inst_start_prop_sim_after_learn       3
% 3.03/0.99  --inst_sel_renew                        solver
% 3.03/0.99  --inst_lit_activity_flag                true
% 3.03/0.99  --inst_restr_to_given                   false
% 3.03/0.99  --inst_activity_threshold               500
% 3.03/0.99  --inst_out_proof                        true
% 3.03/0.99  
% 3.03/0.99  ------ Resolution Options
% 3.03/0.99  
% 3.03/0.99  --resolution_flag                       false
% 3.03/0.99  --res_lit_sel                           adaptive
% 3.03/0.99  --res_lit_sel_side                      none
% 3.03/0.99  --res_ordering                          kbo
% 3.03/0.99  --res_to_prop_solver                    active
% 3.03/0.99  --res_prop_simpl_new                    false
% 3.03/0.99  --res_prop_simpl_given                  true
% 3.03/0.99  --res_passive_queue_type                priority_queues
% 3.03/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.03/0.99  --res_passive_queues_freq               [15;5]
% 3.03/0.99  --res_forward_subs                      full
% 3.03/0.99  --res_backward_subs                     full
% 3.03/0.99  --res_forward_subs_resolution           true
% 3.03/0.99  --res_backward_subs_resolution          true
% 3.03/0.99  --res_orphan_elimination                true
% 3.03/0.99  --res_time_limit                        2.
% 3.03/0.99  --res_out_proof                         true
% 3.03/0.99  
% 3.03/0.99  ------ Superposition Options
% 3.03/0.99  
% 3.03/0.99  --superposition_flag                    true
% 3.03/0.99  --sup_passive_queue_type                priority_queues
% 3.03/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.03/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.03/0.99  --demod_completeness_check              fast
% 3.03/0.99  --demod_use_ground                      true
% 3.03/0.99  --sup_to_prop_solver                    passive
% 3.03/0.99  --sup_prop_simpl_new                    true
% 3.03/0.99  --sup_prop_simpl_given                  true
% 3.03/0.99  --sup_fun_splitting                     false
% 3.03/0.99  --sup_smt_interval                      50000
% 3.03/0.99  
% 3.03/0.99  ------ Superposition Simplification Setup
% 3.03/0.99  
% 3.03/0.99  --sup_indices_passive                   []
% 3.03/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.03/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.03/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_full_bw                           [BwDemod]
% 3.03/0.99  --sup_immed_triv                        [TrivRules]
% 3.03/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.03/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_immed_bw_main                     []
% 3.03/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.03/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.03/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.03/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.03/0.99  
% 3.03/0.99  ------ Combination Options
% 3.03/0.99  
% 3.03/0.99  --comb_res_mult                         3
% 3.03/0.99  --comb_sup_mult                         2
% 3.03/0.99  --comb_inst_mult                        10
% 3.03/0.99  
% 3.03/0.99  ------ Debug Options
% 3.03/0.99  
% 3.03/0.99  --dbg_backtrace                         false
% 3.03/0.99  --dbg_dump_prop_clauses                 false
% 3.03/0.99  --dbg_dump_prop_clauses_file            -
% 3.03/0.99  --dbg_out_stat                          false
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  ------ Proving...
% 3.03/0.99  
% 3.03/0.99  
% 3.03/0.99  % SZS status Theorem for theBenchmark.p
% 3.03/0.99  
% 3.03/0.99   Resolution empty clause
% 3.03/0.99  
% 3.03/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.03/0.99  
% 3.03/0.99  fof(f17,conjecture,(
% 3.03/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f18,negated_conjecture,(
% 3.03/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.03/0.99    inference(negated_conjecture,[],[f17])).
% 3.03/0.99  
% 3.03/0.99  fof(f35,plain,(
% 3.03/0.99    ? [X0,X1,X2] : (((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & (k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.03/0.99    inference(ennf_transformation,[],[f18])).
% 3.03/0.99  
% 3.03/0.99  fof(f36,plain,(
% 3.03/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.03/0.99    inference(flattening,[],[f35])).
% 3.03/0.99  
% 3.03/0.99  fof(f41,plain,(
% 3.03/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.03/0.99    introduced(choice_axiom,[])).
% 3.03/0.99  
% 3.03/0.99  fof(f42,plain,(
% 3.03/0.99    (~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.03/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f36,f41])).
% 3.03/0.99  
% 3.03/0.99  fof(f76,plain,(
% 3.03/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.03/0.99    inference(cnf_transformation,[],[f42])).
% 3.03/0.99  
% 3.03/0.99  fof(f13,axiom,(
% 3.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f28,plain,(
% 3.03/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/0.99    inference(ennf_transformation,[],[f13])).
% 3.03/0.99  
% 3.03/0.99  fof(f61,plain,(
% 3.03/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.03/0.99    inference(cnf_transformation,[],[f28])).
% 3.03/0.99  
% 3.03/0.99  fof(f78,plain,(
% 3.03/0.99    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.03/0.99    inference(cnf_transformation,[],[f42])).
% 3.03/0.99  
% 3.03/0.99  fof(f10,axiom,(
% 3.03/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f24,plain,(
% 3.03/0.99    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.03/0.99    inference(ennf_transformation,[],[f10])).
% 3.03/0.99  
% 3.03/0.99  fof(f25,plain,(
% 3.03/0.99    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.03/0.99    inference(flattening,[],[f24])).
% 3.03/0.99  
% 3.03/0.99  fof(f57,plain,(
% 3.03/0.99    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/0.99    inference(cnf_transformation,[],[f25])).
% 3.03/0.99  
% 3.03/0.99  fof(f77,plain,(
% 3.03/0.99    v2_funct_1(sK2)),
% 3.03/0.99    inference(cnf_transformation,[],[f42])).
% 3.03/0.99  
% 3.03/0.99  fof(f74,plain,(
% 3.03/0.99    v1_funct_1(sK2)),
% 3.03/0.99    inference(cnf_transformation,[],[f42])).
% 3.03/0.99  
% 3.03/0.99  fof(f11,axiom,(
% 3.03/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f26,plain,(
% 3.03/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/0.99    inference(ennf_transformation,[],[f11])).
% 3.03/0.99  
% 3.03/0.99  fof(f59,plain,(
% 3.03/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.03/0.99    inference(cnf_transformation,[],[f26])).
% 3.03/0.99  
% 3.03/0.99  fof(f16,axiom,(
% 3.03/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f33,plain,(
% 3.03/0.99    ! [X0,X1] : (((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.03/0.99    inference(ennf_transformation,[],[f16])).
% 3.03/0.99  
% 3.03/0.99  fof(f34,plain,(
% 3.03/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.03/0.99    inference(flattening,[],[f33])).
% 3.03/0.99  
% 3.03/0.99  fof(f73,plain,(
% 3.03/0.99    ( ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.03/0.99    inference(cnf_transformation,[],[f34])).
% 3.03/0.99  
% 3.03/0.99  fof(f58,plain,(
% 3.03/0.99    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/0.99    inference(cnf_transformation,[],[f25])).
% 3.03/0.99  
% 3.03/0.99  fof(f9,axiom,(
% 3.03/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.03/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/0.99  
% 3.03/0.99  fof(f22,plain,(
% 3.03/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.03/1.00    inference(ennf_transformation,[],[f9])).
% 3.03/1.00  
% 3.03/1.00  fof(f23,plain,(
% 3.03/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.03/1.00    inference(flattening,[],[f22])).
% 3.03/1.00  
% 3.03/1.00  fof(f56,plain,(
% 3.03/1.00    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f23])).
% 3.03/1.00  
% 3.03/1.00  fof(f55,plain,(
% 3.03/1.00    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f23])).
% 3.03/1.00  
% 3.03/1.00  fof(f72,plain,(
% 3.03/1.00    ( ! [X0,X1] : (v1_funct_2(X1,k1_relat_1(X1),X0) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f34])).
% 3.03/1.00  
% 3.03/1.00  fof(f79,plain,(
% 3.03/1.00    ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))),
% 3.03/1.00    inference(cnf_transformation,[],[f42])).
% 3.03/1.00  
% 3.03/1.00  fof(f7,axiom,(
% 3.03/1.00    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f52,plain,(
% 3.03/1.00    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.03/1.00    inference(cnf_transformation,[],[f7])).
% 3.03/1.00  
% 3.03/1.00  fof(f14,axiom,(
% 3.03/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f29,plain,(
% 3.03/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/1.00    inference(ennf_transformation,[],[f14])).
% 3.03/1.00  
% 3.03/1.00  fof(f30,plain,(
% 3.03/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/1.00    inference(flattening,[],[f29])).
% 3.03/1.00  
% 3.03/1.00  fof(f40,plain,(
% 3.03/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/1.00    inference(nnf_transformation,[],[f30])).
% 3.03/1.00  
% 3.03/1.00  fof(f62,plain,(
% 3.03/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.03/1.00    inference(cnf_transformation,[],[f40])).
% 3.03/1.00  
% 3.03/1.00  fof(f75,plain,(
% 3.03/1.00    v1_funct_2(sK2,sK0,sK1)),
% 3.03/1.00    inference(cnf_transformation,[],[f42])).
% 3.03/1.00  
% 3.03/1.00  fof(f12,axiom,(
% 3.03/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f27,plain,(
% 3.03/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.03/1.00    inference(ennf_transformation,[],[f12])).
% 3.03/1.00  
% 3.03/1.00  fof(f60,plain,(
% 3.03/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.03/1.00    inference(cnf_transformation,[],[f27])).
% 3.03/1.00  
% 3.03/1.00  fof(f15,axiom,(
% 3.03/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f31,plain,(
% 3.03/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.03/1.00    inference(ennf_transformation,[],[f15])).
% 3.03/1.00  
% 3.03/1.00  fof(f32,plain,(
% 3.03/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.03/1.00    inference(flattening,[],[f31])).
% 3.03/1.00  
% 3.03/1.00  fof(f70,plain,(
% 3.03/1.00    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f32])).
% 3.03/1.00  
% 3.03/1.00  fof(f69,plain,(
% 3.03/1.00    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f32])).
% 3.03/1.00  
% 3.03/1.00  fof(f66,plain,(
% 3.03/1.00    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.03/1.00    inference(cnf_transformation,[],[f40])).
% 3.03/1.00  
% 3.03/1.00  fof(f84,plain,(
% 3.03/1.00    ( ! [X2,X0] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 3.03/1.00    inference(equality_resolution,[],[f66])).
% 3.03/1.00  
% 3.03/1.00  fof(f4,axiom,(
% 3.03/1.00    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f37,plain,(
% 3.03/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.03/1.00    inference(nnf_transformation,[],[f4])).
% 3.03/1.00  
% 3.03/1.00  fof(f38,plain,(
% 3.03/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.03/1.00    inference(flattening,[],[f37])).
% 3.03/1.00  
% 3.03/1.00  fof(f46,plain,(
% 3.03/1.00    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f38])).
% 3.03/1.00  
% 3.03/1.00  fof(f47,plain,(
% 3.03/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 3.03/1.00    inference(cnf_transformation,[],[f38])).
% 3.03/1.00  
% 3.03/1.00  fof(f81,plain,(
% 3.03/1.00    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 3.03/1.00    inference(equality_resolution,[],[f47])).
% 3.03/1.00  
% 3.03/1.00  fof(f2,axiom,(
% 3.03/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f44,plain,(
% 3.03/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f2])).
% 3.03/1.00  
% 3.03/1.00  fof(f6,axiom,(
% 3.03/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.03/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.03/1.00  
% 3.03/1.00  fof(f39,plain,(
% 3.03/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.03/1.00    inference(nnf_transformation,[],[f6])).
% 3.03/1.00  
% 3.03/1.00  fof(f51,plain,(
% 3.03/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.03/1.00    inference(cnf_transformation,[],[f39])).
% 3.03/1.00  
% 3.03/1.00  fof(f50,plain,(
% 3.03/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.03/1.00    inference(cnf_transformation,[],[f39])).
% 3.03/1.00  
% 3.03/1.00  cnf(c_34,negated_conjecture,
% 3.03/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.03/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1978,plain,
% 3.03/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_18,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.03/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1981,plain,
% 3.03/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.03/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3407,plain,
% 3.03/1.00      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_1978,c_1981]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_32,negated_conjecture,
% 3.03/1.00      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.03/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3419,plain,
% 3.03/1.00      ( k2_relat_1(sK2) = sK1 ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_3407,c_32]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_15,plain,
% 3.03/1.00      ( ~ v2_funct_1(X0)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f57]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_33,negated_conjecture,
% 3.03/1.00      ( v2_funct_1(sK2) ),
% 3.03/1.00      inference(cnf_transformation,[],[f77]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_407,plain,
% 3.03/1.00      ( ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 3.03/1.00      | sK2 != X0 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_33]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_408,plain,
% 3.03/1.00      ( ~ v1_relat_1(sK2)
% 3.03/1.00      | ~ v1_funct_1(sK2)
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_407]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_36,negated_conjecture,
% 3.03/1.00      ( v1_funct_1(sK2) ),
% 3.03/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_410,plain,
% 3.03/1.00      ( ~ v1_relat_1(sK2) | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_408,c_36]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1975,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 3.03/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_410]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_16,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2312,plain,
% 3.03/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.03/1.00      | v1_relat_1(sK2) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2320,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_1975,c_36,c_34,c_408,c_2312]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3436,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
% 3.03/1.00      inference(demodulation,[status(thm)],[c_3419,c_2320]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_28,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f73]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1979,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1))) = iProver_top
% 3.03/1.00      | r1_tarski(k2_relat_1(X0),X1) != iProver_top
% 3.03/1.00      | v1_relat_1(X0) != iProver_top
% 3.03/1.00      | v1_funct_1(X0) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4708,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.03/1.00      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),X0) != iProver_top
% 3.03/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_3436,c_1979]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_14,plain,
% 3.03/1.00      ( ~ v2_funct_1(X0)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f58]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_421,plain,
% 3.03/1.00      ( ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.03/1.00      | sK2 != X0 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_33]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_422,plain,
% 3.03/1.00      ( ~ v1_relat_1(sK2)
% 3.03/1.00      | ~ v1_funct_1(sK2)
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_421]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_424,plain,
% 3.03/1.00      ( ~ v1_relat_1(sK2) | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_422,c_36]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1974,plain,
% 3.03/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.03/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_424]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2316,plain,
% 3.03/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_1974,c_36,c_34,c_422,c_2312]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4753,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
% 3.03/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_4708,c_2316]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_37,plain,
% 3.03/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_39,plain,
% 3.03/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2313,plain,
% 3.03/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.03/1.00      | v1_relat_1(sK2) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_2312]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_12,plain,
% 3.03/1.00      ( ~ v1_relat_1(X0) | ~ v1_funct_1(X0) | v1_funct_1(k2_funct_1(X0)) ),
% 3.03/1.00      inference(cnf_transformation,[],[f56]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2377,plain,
% 3.03/1.00      ( ~ v1_relat_1(sK2) | v1_funct_1(k2_funct_1(sK2)) | ~ v1_funct_1(sK2) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2378,plain,
% 3.03/1.00      ( v1_relat_1(sK2) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 3.03/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_2377]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_13,plain,
% 3.03/1.00      ( ~ v1_relat_1(X0) | v1_relat_1(k2_funct_1(X0)) | ~ v1_funct_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f55]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2376,plain,
% 3.03/1.00      ( v1_relat_1(k2_funct_1(sK2)) | ~ v1_relat_1(sK2) | ~ v1_funct_1(sK2) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_13]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2380,plain,
% 3.03/1.00      ( v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 3.03/1.00      | v1_relat_1(sK2) != iProver_top
% 3.03/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_2376]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6190,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_4753,c_37,c_39,c_2313,c_2378,c_2380]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_29,plain,
% 3.03/1.00      ( v1_funct_2(X0,k1_relat_1(X0),X1)
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_31,negated_conjecture,
% 3.03/1.00      ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
% 3.03/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2)) ),
% 3.03/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_842,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k2_funct_1(sK2) != X0
% 3.03/1.00      | k1_relat_1(X0) != sK1
% 3.03/1.00      | sK0 != X1 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_29,c_31]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_843,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 3.03/1.00      | ~ v1_relat_1(k2_funct_1(sK2))
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_842]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_855,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.03/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_843,c_16]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1961,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_855]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2365,plain,
% 3.03/1.00      ( k2_relat_1(sK2) != sK1
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_1961,c_2316,c_2320]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3435,plain,
% 3.03/1.00      ( sK1 != sK1
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(demodulation,[status(thm)],[c_3419,c_2365]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3439,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(equality_resolution_simp,[status(thm)],[c_3435]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3776,plain,
% 3.03/1.00      ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_3439,c_37,c_39,c_2313,c_2378]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3777,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.03/1.00      inference(renaming,[status(thm)],[c_3776]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6204,plain,
% 3.03/1.00      ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_6190,c_3777]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_10,plain,
% 3.03/1.00      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.03/1.00      inference(cnf_transformation,[],[f52]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_24,plain,
% 3.03/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.03/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.03/1.00      | k1_xboole_0 = X2 ),
% 3.03/1.00      inference(cnf_transformation,[],[f62]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_35,negated_conjecture,
% 3.03/1.00      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.03/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_812,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.03/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.03/1.00      | sK0 != X1
% 3.03/1.00      | sK1 != X2
% 3.03/1.00      | sK2 != X0
% 3.03/1.00      | k1_xboole_0 = X2 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_24,c_35]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_813,plain,
% 3.03/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.03/1.00      | k1_relset_1(sK0,sK1,sK2) = sK0
% 3.03/1.00      | k1_xboole_0 = sK1 ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_812]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_815,plain,
% 3.03/1.00      ( k1_relset_1(sK0,sK1,sK2) = sK0 | k1_xboole_0 = sK1 ),
% 3.03/1.00      inference(global_propositional_subsumption,[status(thm)],[c_813,c_34]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_17,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.03/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f60]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1982,plain,
% 3.03/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.03/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4080,plain,
% 3.03/1.00      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_1978,c_1982]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4344,plain,
% 3.03/1.00      ( k1_relat_1(sK2) = sK0 | sK1 = k1_xboole_0 ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_815,c_4080]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_25,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1980,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
% 3.03/1.00      | v1_relat_1(X0) != iProver_top
% 3.03/1.00      | v1_funct_1(X0) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4983,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
% 3.03/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_2316,c_1980]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5009,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
% 3.03/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_4983,c_3436]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5555,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_5009,c_37,c_39,c_2313,c_2378,c_2380]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5562,plain,
% 3.03/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_5555,c_1982]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5571,plain,
% 3.03/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_5562,c_3436]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5583,plain,
% 3.03/1.00      ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1 | sK1 = k1_xboole_0 ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_4344,c_5571]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_26,plain,
% 3.03/1.00      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_823,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k2_funct_1(sK2) != X0
% 3.03/1.00      | k1_relat_1(X0) != sK1
% 3.03/1.00      | k2_relat_1(X0) != sK0 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_26,c_31]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_824,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ v1_relat_1(k2_funct_1(sK2))
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_823]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_836,plain,
% 3.03/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.03/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
% 3.03/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_824,c_16]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1962,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_836]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_825,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 3.03/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_824]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2552,plain,
% 3.03/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.03/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_1962,c_37,c_39,c_825,c_2313,c_2378,c_2380]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2553,plain,
% 3.03/1.00      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.03/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(renaming,[status(thm)],[c_2552]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2556,plain,
% 3.03/1.00      ( k1_relat_1(sK2) != sK0
% 3.03/1.00      | k2_relat_1(sK2) != sK1
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_2553,c_2316,c_2320]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3434,plain,
% 3.03/1.00      ( k1_relat_1(sK2) != sK0
% 3.03/1.00      | sK1 != sK1
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(demodulation,[status(thm)],[c_3419,c_2556]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3446,plain,
% 3.03/1.00      ( k1_relat_1(sK2) != sK0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(equality_resolution_simp,[status(thm)],[c_3434]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4349,plain,
% 3.03/1.00      ( sK1 = k1_xboole_0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_4344,c_3446]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5560,plain,
% 3.03/1.00      ( sK1 = k1_xboole_0
% 3.03/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_4344,c_5555]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6526,plain,
% 3.03/1.00      ( sK1 = k1_xboole_0 ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_5583,c_4349,c_5560]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_20,plain,
% 3.03/1.00      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 3.03/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 3.03/1.00      | k1_xboole_0 = X1
% 3.03/1.00      | k1_xboole_0 = X0 ),
% 3.03/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_618,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(X2),X3)
% 3.03/1.00      | ~ v1_relat_1(X2)
% 3.03/1.00      | ~ v1_funct_1(X2)
% 3.03/1.00      | X2 != X0
% 3.03/1.00      | k1_relat_1(X2) != X1
% 3.03/1.00      | k1_xboole_0 != X3
% 3.03/1.00      | k1_xboole_0 = X1
% 3.03/1.00      | k1_xboole_0 = X0 ),
% 3.03/1.00      inference(resolution_lifted,[status(thm)],[c_20,c_29]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_619,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k1_xboole_0)))
% 3.03/1.00      | ~ r1_tarski(k2_relat_1(X0),k1_xboole_0)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k1_xboole_0 = X0
% 3.03/1.00      | k1_xboole_0 = k1_relat_1(X0) ),
% 3.03/1.00      inference(unflattening,[status(thm)],[c_618]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_635,plain,
% 3.03/1.00      ( ~ r1_tarski(k2_relat_1(X0),k1_xboole_0)
% 3.03/1.00      | ~ v1_relat_1(X0)
% 3.03/1.00      | ~ v1_funct_1(X0)
% 3.03/1.00      | k1_xboole_0 = X0
% 3.03/1.00      | k1_xboole_0 = k1_relat_1(X0) ),
% 3.03/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_619,c_28]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1971,plain,
% 3.03/1.00      ( k1_xboole_0 = X0
% 3.03/1.00      | k1_xboole_0 = k1_relat_1(X0)
% 3.03/1.00      | r1_tarski(k2_relat_1(X0),k1_xboole_0) != iProver_top
% 3.03/1.00      | v1_relat_1(X0) != iProver_top
% 3.03/1.00      | v1_funct_1(X0) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_635]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3953,plain,
% 3.03/1.00      ( k1_relat_1(sK2) = k1_xboole_0
% 3.03/1.00      | sK2 = k1_xboole_0
% 3.03/1.00      | r1_tarski(sK1,k1_xboole_0) != iProver_top
% 3.03/1.00      | v1_relat_1(sK2) != iProver_top
% 3.03/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.03/1.00      inference(superposition,[status(thm)],[c_3419,c_1971]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4439,plain,
% 3.03/1.00      ( k1_relat_1(sK2) = k1_xboole_0
% 3.03/1.00      | sK2 = k1_xboole_0
% 3.03/1.00      | r1_tarski(sK1,k1_xboole_0) != iProver_top ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_3953,c_37,c_39,c_2313]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6542,plain,
% 3.03/1.00      ( k1_relat_1(sK2) = k1_xboole_0
% 3.03/1.00      | sK2 = k1_xboole_0
% 3.03/1.00      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.03/1.00      inference(demodulation,[status(thm)],[c_6526,c_4439]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5,plain,
% 3.03/1.00      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 3.03/1.00      | k1_xboole_0 = X1
% 3.03/1.00      | k1_xboole_0 = X0 ),
% 3.03/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_105,plain,
% 3.03/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 3.03/1.00      | k1_xboole_0 = k1_xboole_0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4,plain,
% 3.03/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.03/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_106,plain,
% 3.03/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 3.03/1.00      inference(cnf_transformation,[],[f44]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_111,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1212,plain,( X0 = X0 ),theory(equality) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2444,plain,
% 3.03/1.00      ( sK0 = sK0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1212]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1215,plain,
% 3.03/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.03/1.00      theory(equality) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2665,plain,
% 3.03/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(sK1,X2) | X2 != X1 | sK1 != X0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1215]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2667,plain,
% 3.03/1.00      ( r1_tarski(sK1,k1_xboole_0)
% 3.03/1.00      | ~ r1_tarski(k1_xboole_0,k1_xboole_0)
% 3.03/1.00      | sK1 != k1_xboole_0
% 3.03/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_2665]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1217,plain,
% 3.03/1.00      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 3.03/1.00      theory(equality) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3393,plain,
% 3.03/1.00      ( k1_zfmisc_1(sK0) = k1_zfmisc_1(sK0) | sK0 != sK0 ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1217]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3463,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3466,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,sK0) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_3463]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4441,plain,
% 3.03/1.00      ( ~ r1_tarski(sK1,k1_xboole_0)
% 3.03/1.00      | k1_relat_1(sK2) = k1_xboole_0
% 3.03/1.00      | sK2 = k1_xboole_0 ),
% 3.03/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_4439]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_7,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.03/1.00      inference(cnf_transformation,[],[f51]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4473,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK0)) | ~ r1_tarski(X0,sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4474,plain,
% 3.03/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK0)) = iProver_top
% 3.03/1.00      | r1_tarski(X0,sK0) != iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_4473]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4476,plain,
% 3.03/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) = iProver_top
% 3.03/1.00      | r1_tarski(k1_xboole_0,sK0) != iProver_top ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_4474]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_8,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.03/1.00      inference(cnf_transformation,[],[f50]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_3468,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0)) | r1_tarski(X0,sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_8]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5075,plain,
% 3.03/1.00      ( ~ m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0))
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_3468]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_5076,plain,
% 3.03/1.00      ( m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) != iProver_top
% 3.03/1.00      | r1_tarski(k1_relat_1(sK2),sK0) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_5075]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1218,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.03/1.00      theory(equality) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2358,plain,
% 3.03/1.00      ( m1_subset_1(X0,X1)
% 3.03/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
% 3.03/1.00      | X0 != X2
% 3.03/1.00      | X1 != k1_zfmisc_1(X3) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_1218]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_2493,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.03/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.03/1.00      | X2 != X0
% 3.03/1.00      | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_2358]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_4483,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 3.03/1.00      | m1_subset_1(X1,k1_zfmisc_1(sK0))
% 3.03/1.00      | X1 != X0
% 3.03/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_2493]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6046,plain,
% 3.03/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 3.03/1.00      | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0))
% 3.03/1.00      | k1_relat_1(sK2) != X0
% 3.03/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_4483]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6047,plain,
% 3.03/1.00      ( k1_relat_1(sK2) != X0
% 3.03/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0)
% 3.03/1.00      | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 3.03/1.00      | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_6046]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_6049,plain,
% 3.03/1.00      ( k1_relat_1(sK2) != k1_xboole_0
% 3.03/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0)
% 3.03/1.00      | m1_subset_1(k1_relat_1(sK2),k1_zfmisc_1(sK0)) = iProver_top
% 3.03/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(sK0)) != iProver_top ),
% 3.03/1.00      inference(instantiation,[status(thm)],[c_6047]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_7569,plain,
% 3.03/1.00      ( sK2 = k1_xboole_0 ),
% 3.03/1.00      inference(global_propositional_subsumption,
% 3.03/1.00                [status(thm)],
% 3.03/1.00                [c_6542,c_105,c_106,c_112,c_2444,c_2668,c_3393,c_3466,c_4349,
% 3.03/1.00                 c_4439,c_4476,c_5076,c_5560,c_6049,c_6204]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_7872,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,sK0) != iProver_top ),
% 3.03/1.00      inference(light_normalisation,[status(thm)],[c_6204,c_10,c_7569]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_1990,plain,
% 3.03/1.00      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 3.03/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.03/1.00  
% 3.03/1.00  cnf(c_7874,plain,
% 3.03/1.00      ( $false ),
% 3.03/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_7872,c_1990]) ).
% 3.03/1.00  
% 3.03/1.00  
% 3.03/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.03/1.00  
% 3.03/1.00  ------                               Statistics
% 3.03/1.00  
% 3.03/1.00  ------ General
% 3.03/1.00  
% 3.03/1.00  abstr_ref_over_cycles:                  0
% 3.03/1.00  abstr_ref_under_cycles:                 0
% 3.03/1.00  gc_basic_clause_elim:                   0
% 3.03/1.00  forced_gc_time:                         0
% 3.03/1.00  parsing_time:                           0.009
% 3.03/1.00  unif_index_cands_time:                  0.
% 3.03/1.00  unif_index_add_time:                    0.
% 3.03/1.00  orderings_time:                         0.
% 3.03/1.00  out_proof_time:                         0.01
% 3.03/1.00  total_time:                             0.226
% 3.03/1.00  num_of_symbols:                         49
% 3.03/1.00  num_of_terms:                           5138
% 3.03/1.00  
% 3.03/1.00  ------ Preprocessing
% 3.03/1.00  
% 3.03/1.00  num_of_splits:                          0
% 3.03/1.00  num_of_split_atoms:                     0
% 3.03/1.00  num_of_reused_defs:                     0
% 3.03/1.00  num_eq_ax_congr_red:                    3
% 3.03/1.00  num_of_sem_filtered_clauses:            1
% 3.03/1.00  num_of_subtypes:                        0
% 3.03/1.00  monotx_restored_types:                  0
% 3.03/1.00  sat_num_of_epr_types:                   0
% 3.03/1.00  sat_num_of_non_cyclic_types:            0
% 3.03/1.00  sat_guarded_non_collapsed_types:        0
% 3.03/1.00  num_pure_diseq_elim:                    0
% 3.03/1.00  simp_replaced_by:                       0
% 3.03/1.00  res_preprocessed:                       142
% 3.03/1.00  prep_upred:                             0
% 3.03/1.00  prep_unflattend:                        82
% 3.03/1.00  smt_new_axioms:                         0
% 3.03/1.00  pred_elim_cands:                        7
% 3.03/1.00  pred_elim:                              2
% 3.03/1.00  pred_elim_cl:                           -4
% 3.03/1.00  pred_elim_cycles:                       4
% 3.03/1.00  merged_defs:                            6
% 3.03/1.00  merged_defs_ncl:                        0
% 3.03/1.00  bin_hyper_res:                          7
% 3.03/1.00  prep_cycles:                            3
% 3.03/1.00  pred_elim_time:                         0.016
% 3.03/1.00  splitting_time:                         0.
% 3.03/1.00  sem_filter_time:                        0.
% 3.03/1.00  monotx_time:                            0.001
% 3.03/1.00  subtype_inf_time:                       0.
% 3.03/1.00  
% 3.03/1.00  ------ Problem properties
% 3.03/1.00  
% 3.03/1.00  clauses:                                39
% 3.03/1.00  conjectures:                            3
% 3.03/1.00  epr:                                    6
% 3.03/1.00  horn:                                   32
% 3.03/1.00  ground:                                 17
% 3.03/1.00  unary:                                  9
% 3.03/1.00  binary:                                 9
% 3.03/1.00  lits:                                   110
% 3.03/1.00  lits_eq:                                45
% 3.03/1.00  fd_pure:                                0
% 3.03/1.00  fd_pseudo:                              0
% 3.03/1.00  fd_cond:                                4
% 3.03/1.00  fd_pseudo_cond:                         1
% 3.03/1.00  ac_symbols:                             0
% 3.03/1.00  
% 3.03/1.00  ------ Propositional Solver
% 3.03/1.00  
% 3.03/1.00  prop_solver_calls:                      26
% 3.03/1.00  prop_fast_solver_calls:                 1248
% 3.03/1.00  smt_solver_calls:                       0
% 3.03/1.00  smt_fast_solver_calls:                  0
% 3.03/1.00  prop_num_of_clauses:                    2727
% 3.03/1.00  prop_preprocess_simplified:             6867
% 3.03/1.00  prop_fo_subsumed:                       49
% 3.03/1.00  prop_solver_time:                       0.
% 3.03/1.00  smt_solver_time:                        0.
% 3.03/1.00  smt_fast_solver_time:                   0.
% 3.03/1.00  prop_fast_solver_time:                  0.
% 3.03/1.00  prop_unsat_core_time:                   0.
% 3.03/1.00  
% 3.03/1.00  ------ QBF
% 3.03/1.00  
% 3.03/1.00  qbf_q_res:                              0
% 3.03/1.00  qbf_num_tautologies:                    0
% 3.03/1.00  qbf_prep_cycles:                        0
% 3.03/1.00  
% 3.03/1.00  ------ BMC1
% 3.03/1.00  
% 3.03/1.00  bmc1_current_bound:                     -1
% 3.03/1.00  bmc1_last_solved_bound:                 -1
% 3.03/1.00  bmc1_unsat_core_size:                   -1
% 3.03/1.00  bmc1_unsat_core_parents_size:           -1
% 3.03/1.00  bmc1_merge_next_fun:                    0
% 3.03/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.03/1.00  
% 3.03/1.00  ------ Instantiation
% 3.03/1.00  
% 3.03/1.00  inst_num_of_clauses:                    868
% 3.03/1.00  inst_num_in_passive:                    386
% 3.03/1.00  inst_num_in_active:                     448
% 3.03/1.00  inst_num_in_unprocessed:                34
% 3.03/1.00  inst_num_of_loops:                      520
% 3.03/1.00  inst_num_of_learning_restarts:          0
% 3.03/1.00  inst_num_moves_active_passive:          67
% 3.03/1.00  inst_lit_activity:                      0
% 3.03/1.00  inst_lit_activity_moves:                0
% 3.03/1.00  inst_num_tautologies:                   0
% 3.03/1.00  inst_num_prop_implied:                  0
% 3.03/1.00  inst_num_existing_simplified:           0
% 3.03/1.00  inst_num_eq_res_simplified:             0
% 3.03/1.00  inst_num_child_elim:                    0
% 3.03/1.00  inst_num_of_dismatching_blockings:      297
% 3.03/1.00  inst_num_of_non_proper_insts:           1242
% 3.03/1.00  inst_num_of_duplicates:                 0
% 3.03/1.00  inst_inst_num_from_inst_to_res:         0
% 3.03/1.00  inst_dismatching_checking_time:         0.
% 3.03/1.00  
% 3.03/1.00  ------ Resolution
% 3.03/1.00  
% 3.03/1.00  res_num_of_clauses:                     0
% 3.03/1.00  res_num_in_passive:                     0
% 3.03/1.00  res_num_in_active:                      0
% 3.03/1.00  res_num_of_loops:                       145
% 3.03/1.00  res_forward_subset_subsumed:            23
% 3.03/1.00  res_backward_subset_subsumed:           4
% 3.03/1.00  res_forward_subsumed:                   0
% 3.03/1.00  res_backward_subsumed:                  0
% 3.03/1.00  res_forward_subsumption_resolution:     6
% 3.03/1.00  res_backward_subsumption_resolution:    1
% 3.03/1.00  res_clause_to_clause_subsumption:       337
% 3.03/1.00  res_orphan_elimination:                 0
% 3.03/1.00  res_tautology_del:                      109
% 3.03/1.00  res_num_eq_res_simplified:              0
% 3.03/1.00  res_num_sel_changes:                    0
% 3.03/1.00  res_moves_from_active_to_pass:          0
% 3.03/1.00  
% 3.03/1.00  ------ Superposition
% 3.03/1.00  
% 3.03/1.00  sup_time_total:                         0.
% 3.03/1.00  sup_time_generating:                    0.
% 3.03/1.00  sup_time_sim_full:                      0.
% 3.03/1.00  sup_time_sim_immed:                     0.
% 3.03/1.00  
% 3.03/1.00  sup_num_of_clauses:                     83
% 3.03/1.00  sup_num_in_active:                      45
% 3.03/1.00  sup_num_in_passive:                     38
% 3.03/1.00  sup_num_of_loops:                       102
% 3.03/1.00  sup_fw_superposition:                   67
% 3.03/1.00  sup_bw_superposition:                   69
% 3.03/1.00  sup_immediate_simplified:               96
% 3.03/1.00  sup_given_eliminated:                   0
% 3.03/1.00  comparisons_done:                       0
% 3.03/1.00  comparisons_avoided:                    12
% 3.03/1.00  
% 3.03/1.00  ------ Simplifications
% 3.03/1.00  
% 3.03/1.00  
% 3.03/1.00  sim_fw_subset_subsumed:                 32
% 3.03/1.00  sim_bw_subset_subsumed:                 13
% 3.03/1.00  sim_fw_subsumed:                        7
% 3.03/1.00  sim_bw_subsumed:                        2
% 3.03/1.00  sim_fw_subsumption_res:                 3
% 3.03/1.00  sim_bw_subsumption_res:                 3
% 3.03/1.00  sim_tautology_del:                      3
% 3.03/1.00  sim_eq_tautology_del:                   10
% 3.03/1.00  sim_eq_res_simp:                        4
% 3.03/1.00  sim_fw_demodulated:                     21
% 3.03/1.00  sim_bw_demodulated:                     53
% 3.03/1.00  sim_light_normalised:                   50
% 3.03/1.00  sim_joinable_taut:                      0
% 3.03/1.00  sim_joinable_simp:                      0
% 3.03/1.00  sim_ac_normalised:                      0
% 3.03/1.00  sim_smt_subsumption:                    0
% 3.03/1.00  
%------------------------------------------------------------------------------
