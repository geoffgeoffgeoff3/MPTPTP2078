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
% DateTime   : Thu Dec  3 12:02:23 EST 2020

% Result     : Theorem 2.95s
% Output     : CNFRefutation 2.95s
% Verified   : 
% Statistics : Number of formulae       :  193 ( 981 expanded)
%              Number of clauses        :  132 ( 364 expanded)
%              Number of leaves         :   24 ( 189 expanded)
%              Depth                    :   20
%              Number of atoms          :  581 (4884 expanded)
%              Number of equality atoms :  237 ( 990 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
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

fof(f38,plain,(
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
    inference(flattening,[],[f37])).

fof(f46,plain,(
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
    inference(nnf_transformation,[],[f38])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f20,conjecture,(
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

fof(f21,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ( k2_relset_1(X0,X1,X2) = X1
            & v2_funct_1(X2) )
         => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(k2_funct_1(X2),X1,X0)
            & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f43,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f44,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f43])).

fof(f47,plain,
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

fof(f48,plain,
    ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
      | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
      | ~ v1_funct_1(k2_funct_1(sK2)) )
    & k2_relset_1(sK0,sK1,sK2) = sK1
    & v2_funct_1(sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f44,f47])).

fof(f82,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f83,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f48])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f12,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f32,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f31])).

fof(f64,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f84,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f48])).

fof(f81,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f48])).

fof(f18,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f40,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f39])).

fof(f77,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f85,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f48])).

fof(f63,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f10,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f61,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f60,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f76,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f86,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f48])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f53,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f50,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => v1_xboole_0(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_xboole_0(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( v1_xboole_0(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f41])).

fof(f79,plain,(
    ! [X0,X1] :
      ( v1_funct_2(X1,k1_relat_1(X1),X0)
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f8])).

cnf(c_2,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_2592,plain,
    ( r1_tarski(k1_xboole_0,k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_6115,plain,
    ( r1_tarski(k1_xboole_0,k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_2592])).

cnf(c_25,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_36,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_859,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X1
    | sK1 != X2
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_36])).

cnf(c_860,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_859])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_862,plain,
    ( k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_860,c_35])).

cnf(c_2080,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_2084,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4224,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_2080,c_2084])).

cnf(c_4431,plain,
    ( k1_relat_1(sK2) = sK0
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_862,c_4224])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_2086,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3544,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_2080,c_2086])).

cnf(c_14,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_34,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_464,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_34])).

cnf(c_465,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_464])).

cnf(c_37,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_467,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_465,c_37])).

cnf(c_2077,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_467])).

cnf(c_3715,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_3544,c_2077])).

cnf(c_26,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_2082,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_4842,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3715,c_2082])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_2083,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3557,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_2080,c_2083])).

cnf(c_33,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_3559,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_3557,c_33])).

cnf(c_15,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_450,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_34])).

cnf(c_451,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_453,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_451,c_37])).

cnf(c_2078,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_453])).

cnf(c_3704,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = sK1
    | v1_relat_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3559,c_2078])).

cnf(c_40,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_2412,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_2549,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2412])).

cnf(c_2550,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2549])).

cnf(c_3884,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3704,c_40,c_2550])).

cnf(c_4871,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4842,c_3884])).

cnf(c_38,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_11,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2409,plain,
    ( v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_2410,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2409])).

cnf(c_12,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_3227,plain,
    ( ~ v1_funct_1(sK2)
    | v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_3228,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3227])).

cnf(c_5578,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4871,c_38,c_40,c_2410,c_2550,c_3228])).

cnf(c_5585,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
    inference(superposition,[status(thm)],[c_5578,c_2084])).

cnf(c_5599,plain,
    ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5585,c_3884])).

cnf(c_5612,plain,
    ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4431,c_5599])).

cnf(c_27,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_32,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_870,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(X0)
    | k2_funct_1(sK2) != X0
    | k2_relat_1(X0) != sK0
    | k1_relat_1(X0) != sK1 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_32])).

cnf(c_871,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2))
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(unflattening,[status(thm)],[c_870])).

cnf(c_883,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_871,c_16])).

cnf(c_2064,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_883])).

cnf(c_888,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_883])).

cnf(c_2736,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2064,c_38,c_40,c_888,c_2410,c_2550])).

cnf(c_2737,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != sK0
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(renaming,[status(thm)],[c_2736])).

cnf(c_3888,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != sK0
    | sK1 != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3884,c_2737])).

cnf(c_3889,plain,
    ( k2_relat_1(k2_funct_1(sK2)) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3888])).

cnf(c_4739,plain,
    ( k1_relat_1(sK2) != sK0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3889,c_3715])).

cnf(c_4743,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4431,c_4739])).

cnf(c_5583,plain,
    ( sK1 = k1_xboole_0
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_4431,c_5578])).

cnf(c_5771,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5612,c_4743,c_5583])).

cnf(c_5787,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_5771,c_3884])).

cnf(c_1247,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2489,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | X0 != X2
    | X1 != k1_zfmisc_1(X3) ),
    inference(instantiation,[status(thm)],[c_1247])).

cnf(c_2656,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(X2,k1_zfmisc_1(X3))
    | X2 != X0
    | k1_zfmisc_1(X3) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_2489])).

cnf(c_3126,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
    | k2_relat_1(k2_funct_1(sK2)) != X0
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_2656])).

cnf(c_3793,plain,
    ( ~ m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(X1))
    | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
    | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(X0)
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_3126])).

cnf(c_5046,plain,
    ( ~ m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(sK0))
    | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
    | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(X0)
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
    inference(instantiation,[status(thm)],[c_3793])).

cnf(c_5048,plain,
    ( m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k2_relat_1(k1_xboole_0),k1_zfmisc_1(sK0))
    | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(k1_xboole_0)
    | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
    inference(instantiation,[status(thm)],[c_5046])).

cnf(c_3,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_2447,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(X0,k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_4678,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(X0,k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_2447])).

cnf(c_4680,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k1_xboole_0,k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_4678])).

cnf(c_1245,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2484,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(X2),X3)
    | X3 != X1
    | k2_relat_1(X2) != X0 ),
    inference(instantiation,[status(thm)],[c_1245])).

cnf(c_3431,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relat_1(X2),sK0)
    | k2_relat_1(X2) != X0
    | sK0 != X1 ),
    inference(instantiation,[status(thm)],[c_2484])).

cnf(c_4266,plain,
    ( ~ r1_tarski(X0,sK0)
    | r1_tarski(k2_relat_1(X1),sK0)
    | k2_relat_1(X1) != X0
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_3431])).

cnf(c_4268,plain,
    ( r1_tarski(k2_relat_1(k1_xboole_0),sK0)
    | ~ r1_tarski(k1_xboole_0,sK0)
    | k2_relat_1(k1_xboole_0) != k1_xboole_0
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_4266])).

cnf(c_4034,plain,
    ( m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(sK0))
    | ~ r1_tarski(k2_relat_1(X0),sK0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_4036,plain,
    ( m1_subset_1(k2_relat_1(k1_xboole_0),k1_zfmisc_1(sK0))
    | ~ r1_tarski(k2_relat_1(k1_xboole_0),sK0) ),
    inference(instantiation,[status(thm)],[c_4034])).

cnf(c_1251,plain,
    ( X0 != X1
    | k2_relat_1(X0) = k2_relat_1(X1) ),
    theory(equality)).

cnf(c_3794,plain,
    ( k2_funct_1(sK2) != X0
    | k2_relat_1(k2_funct_1(sK2)) = k2_relat_1(X0) ),
    inference(instantiation,[status(thm)],[c_1251])).

cnf(c_3799,plain,
    ( k2_funct_1(sK2) != k1_xboole_0
    | k2_relat_1(k2_funct_1(sK2)) = k2_relat_1(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3794])).

cnf(c_3745,plain,
    ( r1_tarski(k1_xboole_0,sK0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1246,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_3742,plain,
    ( k1_zfmisc_1(sK0) = k1_zfmisc_1(sK0)
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_1246])).

cnf(c_1,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_3336,plain,
    ( ~ v1_xboole_0(k2_funct_1(sK2))
    | k1_xboole_0 = k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1244,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_3214,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k1_relat_1(k2_funct_1(sK2)))
    | k1_relat_1(k2_funct_1(sK2)) != X0 ),
    inference(instantiation,[status(thm)],[c_1244])).

cnf(c_3216,plain,
    ( v1_xboole_0(k1_relat_1(k2_funct_1(sK2)))
    | ~ v1_xboole_0(k1_xboole_0)
    | k1_relat_1(k2_funct_1(sK2)) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3214])).

cnf(c_1242,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2650,plain,
    ( k1_zfmisc_1(X0) = k1_zfmisc_1(X0) ),
    inference(instantiation,[status(thm)],[c_1242])).

cnf(c_3099,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_2650])).

cnf(c_2649,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(X2,k1_zfmisc_1(X1))
    | X2 != X0
    | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_2489])).

cnf(c_3005,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k2_funct_1(sK2) != X0
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_2649])).

cnf(c_3007,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k2_funct_1(sK2) != k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_3005])).

cnf(c_1243,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2555,plain,
    ( X0 != X1
    | k2_funct_1(sK2) != X1
    | k2_funct_1(sK2) = X0 ),
    inference(instantiation,[status(thm)],[c_1243])).

cnf(c_2834,plain,
    ( X0 != k2_funct_1(sK2)
    | k2_funct_1(sK2) = X0
    | k2_funct_1(sK2) != k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2555])).

cnf(c_2836,plain,
    ( k2_funct_1(sK2) != k2_funct_1(sK2)
    | k2_funct_1(sK2) = k1_xboole_0
    | k1_xboole_0 != k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2834])).

cnf(c_2804,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k2_relat_1(k2_funct_1(sK2)))))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_2506,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_funct_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_2803,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k2_relat_1(k2_funct_1(sK2)))))
    | v1_xboole_0(k2_funct_1(sK2))
    | ~ v1_xboole_0(k1_relat_1(k2_funct_1(sK2))) ),
    inference(instantiation,[status(thm)],[c_2506])).

cnf(c_2795,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1242])).

cnf(c_1254,plain,
    ( X0 != X1
    | k2_funct_1(X0) = k2_funct_1(X1) ),
    theory(equality)).

cnf(c_2557,plain,
    ( k2_funct_1(sK2) = k2_funct_1(X0)
    | sK2 != X0 ),
    inference(instantiation,[status(thm)],[c_1254])).

cnf(c_2794,plain,
    ( k2_funct_1(sK2) = k2_funct_1(sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_2557])).

cnf(c_2564,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_1242])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_271,plain,
    ( r1_tarski(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_4])).

cnf(c_272,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_271])).

cnf(c_30,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),X1)
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_889,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(X0)
    | k2_funct_1(sK2) != X0
    | k1_relat_1(X0) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_32])).

cnf(c_890,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(unflattening,[status(thm)],[c_889])).

cnf(c_902,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_890,c_16])).

cnf(c_1178,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k2_relat_1(k2_funct_1(sK2)) != X0
    | k1_relat_1(k2_funct_1(sK2)) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_272,c_902])).

cnf(c_1179,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(unflattening,[status(thm)],[c_1178])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_8,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f58])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6115,c_5787,c_5048,c_4680,c_4268,c_4036,c_3799,c_3745,c_3742,c_3704,c_3336,c_3227,c_3216,c_3099,c_3007,c_2836,c_2804,c_2803,c_2795,c_2794,c_2564,c_2550,c_2549,c_2409,c_1179,c_0,c_8,c_40,c_35,c_37])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:40:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.95/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.95/1.00  
% 2.95/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.95/1.00  
% 2.95/1.00  ------  iProver source info
% 2.95/1.00  
% 2.95/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.95/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.95/1.00  git: non_committed_changes: false
% 2.95/1.00  git: last_make_outside_of_git: false
% 2.95/1.00  
% 2.95/1.00  ------ 
% 2.95/1.00  
% 2.95/1.00  ------ Input Options
% 2.95/1.00  
% 2.95/1.00  --out_options                           all
% 2.95/1.00  --tptp_safe_out                         true
% 2.95/1.00  --problem_path                          ""
% 2.95/1.00  --include_path                          ""
% 2.95/1.00  --clausifier                            res/vclausify_rel
% 2.95/1.00  --clausifier_options                    --mode clausify
% 2.95/1.00  --stdin                                 false
% 2.95/1.00  --stats_out                             all
% 2.95/1.00  
% 2.95/1.00  ------ General Options
% 2.95/1.00  
% 2.95/1.00  --fof                                   false
% 2.95/1.00  --time_out_real                         305.
% 2.95/1.00  --time_out_virtual                      -1.
% 2.95/1.00  --symbol_type_check                     false
% 2.95/1.00  --clausify_out                          false
% 2.95/1.00  --sig_cnt_out                           false
% 2.95/1.00  --trig_cnt_out                          false
% 2.95/1.00  --trig_cnt_out_tolerance                1.
% 2.95/1.00  --trig_cnt_out_sk_spl                   false
% 2.95/1.00  --abstr_cl_out                          false
% 2.95/1.00  
% 2.95/1.00  ------ Global Options
% 2.95/1.00  
% 2.95/1.00  --schedule                              default
% 2.95/1.00  --add_important_lit                     false
% 2.95/1.00  --prop_solver_per_cl                    1000
% 2.95/1.00  --min_unsat_core                        false
% 2.95/1.00  --soft_assumptions                      false
% 2.95/1.00  --soft_lemma_size                       3
% 2.95/1.00  --prop_impl_unit_size                   0
% 2.95/1.00  --prop_impl_unit                        []
% 2.95/1.00  --share_sel_clauses                     true
% 2.95/1.00  --reset_solvers                         false
% 2.95/1.00  --bc_imp_inh                            [conj_cone]
% 2.95/1.00  --conj_cone_tolerance                   3.
% 2.95/1.00  --extra_neg_conj                        none
% 2.95/1.00  --large_theory_mode                     true
% 2.95/1.00  --prolific_symb_bound                   200
% 2.95/1.00  --lt_threshold                          2000
% 2.95/1.00  --clause_weak_htbl                      true
% 2.95/1.00  --gc_record_bc_elim                     false
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing Options
% 2.95/1.00  
% 2.95/1.00  --preprocessing_flag                    true
% 2.95/1.00  --time_out_prep_mult                    0.1
% 2.95/1.00  --splitting_mode                        input
% 2.95/1.00  --splitting_grd                         true
% 2.95/1.00  --splitting_cvd                         false
% 2.95/1.00  --splitting_cvd_svl                     false
% 2.95/1.00  --splitting_nvd                         32
% 2.95/1.00  --sub_typing                            true
% 2.95/1.00  --prep_gs_sim                           true
% 2.95/1.00  --prep_unflatten                        true
% 2.95/1.00  --prep_res_sim                          true
% 2.95/1.00  --prep_upred                            true
% 2.95/1.00  --prep_sem_filter                       exhaustive
% 2.95/1.00  --prep_sem_filter_out                   false
% 2.95/1.00  --pred_elim                             true
% 2.95/1.00  --res_sim_input                         true
% 2.95/1.00  --eq_ax_congr_red                       true
% 2.95/1.00  --pure_diseq_elim                       true
% 2.95/1.00  --brand_transform                       false
% 2.95/1.00  --non_eq_to_eq                          false
% 2.95/1.00  --prep_def_merge                        true
% 2.95/1.00  --prep_def_merge_prop_impl              false
% 2.95/1.00  --prep_def_merge_mbd                    true
% 2.95/1.00  --prep_def_merge_tr_red                 false
% 2.95/1.00  --prep_def_merge_tr_cl                  false
% 2.95/1.00  --smt_preprocessing                     true
% 2.95/1.00  --smt_ac_axioms                         fast
% 2.95/1.00  --preprocessed_out                      false
% 2.95/1.00  --preprocessed_stats                    false
% 2.95/1.00  
% 2.95/1.00  ------ Abstraction refinement Options
% 2.95/1.00  
% 2.95/1.00  --abstr_ref                             []
% 2.95/1.00  --abstr_ref_prep                        false
% 2.95/1.00  --abstr_ref_until_sat                   false
% 2.95/1.00  --abstr_ref_sig_restrict                funpre
% 2.95/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.95/1.00  --abstr_ref_under                       []
% 2.95/1.00  
% 2.95/1.00  ------ SAT Options
% 2.95/1.00  
% 2.95/1.00  --sat_mode                              false
% 2.95/1.00  --sat_fm_restart_options                ""
% 2.95/1.00  --sat_gr_def                            false
% 2.95/1.00  --sat_epr_types                         true
% 2.95/1.00  --sat_non_cyclic_types                  false
% 2.95/1.00  --sat_finite_models                     false
% 2.95/1.00  --sat_fm_lemmas                         false
% 2.95/1.00  --sat_fm_prep                           false
% 2.95/1.00  --sat_fm_uc_incr                        true
% 2.95/1.00  --sat_out_model                         small
% 2.95/1.00  --sat_out_clauses                       false
% 2.95/1.00  
% 2.95/1.00  ------ QBF Options
% 2.95/1.00  
% 2.95/1.00  --qbf_mode                              false
% 2.95/1.00  --qbf_elim_univ                         false
% 2.95/1.00  --qbf_dom_inst                          none
% 2.95/1.00  --qbf_dom_pre_inst                      false
% 2.95/1.00  --qbf_sk_in                             false
% 2.95/1.00  --qbf_pred_elim                         true
% 2.95/1.00  --qbf_split                             512
% 2.95/1.00  
% 2.95/1.00  ------ BMC1 Options
% 2.95/1.00  
% 2.95/1.00  --bmc1_incremental                      false
% 2.95/1.00  --bmc1_axioms                           reachable_all
% 2.95/1.00  --bmc1_min_bound                        0
% 2.95/1.00  --bmc1_max_bound                        -1
% 2.95/1.00  --bmc1_max_bound_default                -1
% 2.95/1.00  --bmc1_symbol_reachability              true
% 2.95/1.00  --bmc1_property_lemmas                  false
% 2.95/1.00  --bmc1_k_induction                      false
% 2.95/1.00  --bmc1_non_equiv_states                 false
% 2.95/1.00  --bmc1_deadlock                         false
% 2.95/1.00  --bmc1_ucm                              false
% 2.95/1.00  --bmc1_add_unsat_core                   none
% 2.95/1.00  --bmc1_unsat_core_children              false
% 2.95/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.95/1.00  --bmc1_out_stat                         full
% 2.95/1.00  --bmc1_ground_init                      false
% 2.95/1.00  --bmc1_pre_inst_next_state              false
% 2.95/1.00  --bmc1_pre_inst_state                   false
% 2.95/1.00  --bmc1_pre_inst_reach_state             false
% 2.95/1.00  --bmc1_out_unsat_core                   false
% 2.95/1.00  --bmc1_aig_witness_out                  false
% 2.95/1.00  --bmc1_verbose                          false
% 2.95/1.00  --bmc1_dump_clauses_tptp                false
% 2.95/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.95/1.00  --bmc1_dump_file                        -
% 2.95/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.95/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.95/1.00  --bmc1_ucm_extend_mode                  1
% 2.95/1.00  --bmc1_ucm_init_mode                    2
% 2.95/1.00  --bmc1_ucm_cone_mode                    none
% 2.95/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.95/1.00  --bmc1_ucm_relax_model                  4
% 2.95/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.95/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.95/1.00  --bmc1_ucm_layered_model                none
% 2.95/1.00  --bmc1_ucm_max_lemma_size               10
% 2.95/1.00  
% 2.95/1.00  ------ AIG Options
% 2.95/1.00  
% 2.95/1.00  --aig_mode                              false
% 2.95/1.00  
% 2.95/1.00  ------ Instantiation Options
% 2.95/1.00  
% 2.95/1.00  --instantiation_flag                    true
% 2.95/1.00  --inst_sos_flag                         false
% 2.95/1.00  --inst_sos_phase                        true
% 2.95/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.95/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.95/1.00  --inst_lit_sel_side                     num_symb
% 2.95/1.00  --inst_solver_per_active                1400
% 2.95/1.00  --inst_solver_calls_frac                1.
% 2.95/1.00  --inst_passive_queue_type               priority_queues
% 2.95/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.95/1.00  --inst_passive_queues_freq              [25;2]
% 2.95/1.00  --inst_dismatching                      true
% 2.95/1.00  --inst_eager_unprocessed_to_passive     true
% 2.95/1.00  --inst_prop_sim_given                   true
% 2.95/1.00  --inst_prop_sim_new                     false
% 2.95/1.00  --inst_subs_new                         false
% 2.95/1.00  --inst_eq_res_simp                      false
% 2.95/1.00  --inst_subs_given                       false
% 2.95/1.00  --inst_orphan_elimination               true
% 2.95/1.00  --inst_learning_loop_flag               true
% 2.95/1.00  --inst_learning_start                   3000
% 2.95/1.00  --inst_learning_factor                  2
% 2.95/1.00  --inst_start_prop_sim_after_learn       3
% 2.95/1.00  --inst_sel_renew                        solver
% 2.95/1.00  --inst_lit_activity_flag                true
% 2.95/1.00  --inst_restr_to_given                   false
% 2.95/1.00  --inst_activity_threshold               500
% 2.95/1.00  --inst_out_proof                        true
% 2.95/1.00  
% 2.95/1.00  ------ Resolution Options
% 2.95/1.00  
% 2.95/1.00  --resolution_flag                       true
% 2.95/1.00  --res_lit_sel                           adaptive
% 2.95/1.00  --res_lit_sel_side                      none
% 2.95/1.00  --res_ordering                          kbo
% 2.95/1.00  --res_to_prop_solver                    active
% 2.95/1.00  --res_prop_simpl_new                    false
% 2.95/1.00  --res_prop_simpl_given                  true
% 2.95/1.00  --res_passive_queue_type                priority_queues
% 2.95/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.95/1.00  --res_passive_queues_freq               [15;5]
% 2.95/1.00  --res_forward_subs                      full
% 2.95/1.00  --res_backward_subs                     full
% 2.95/1.00  --res_forward_subs_resolution           true
% 2.95/1.00  --res_backward_subs_resolution          true
% 2.95/1.00  --res_orphan_elimination                true
% 2.95/1.00  --res_time_limit                        2.
% 2.95/1.00  --res_out_proof                         true
% 2.95/1.00  
% 2.95/1.00  ------ Superposition Options
% 2.95/1.00  
% 2.95/1.00  --superposition_flag                    true
% 2.95/1.00  --sup_passive_queue_type                priority_queues
% 2.95/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.95/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.95/1.00  --demod_completeness_check              fast
% 2.95/1.00  --demod_use_ground                      true
% 2.95/1.00  --sup_to_prop_solver                    passive
% 2.95/1.00  --sup_prop_simpl_new                    true
% 2.95/1.00  --sup_prop_simpl_given                  true
% 2.95/1.00  --sup_fun_splitting                     false
% 2.95/1.00  --sup_smt_interval                      50000
% 2.95/1.00  
% 2.95/1.00  ------ Superposition Simplification Setup
% 2.95/1.00  
% 2.95/1.00  --sup_indices_passive                   []
% 2.95/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.95/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_full_bw                           [BwDemod]
% 2.95/1.00  --sup_immed_triv                        [TrivRules]
% 2.95/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.95/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_immed_bw_main                     []
% 2.95/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.95/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.95/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.95/1.00  
% 2.95/1.00  ------ Combination Options
% 2.95/1.00  
% 2.95/1.00  --comb_res_mult                         3
% 2.95/1.00  --comb_sup_mult                         2
% 2.95/1.00  --comb_inst_mult                        10
% 2.95/1.00  
% 2.95/1.00  ------ Debug Options
% 2.95/1.00  
% 2.95/1.00  --dbg_backtrace                         false
% 2.95/1.00  --dbg_dump_prop_clauses                 false
% 2.95/1.00  --dbg_dump_prop_clauses_file            -
% 2.95/1.00  --dbg_out_stat                          false
% 2.95/1.00  ------ Parsing...
% 2.95/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e 
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.95/1.00  ------ Proving...
% 2.95/1.00  ------ Problem Properties 
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  clauses                                 40
% 2.95/1.00  conjectures                             3
% 2.95/1.00  EPR                                     6
% 2.95/1.00  Horn                                    34
% 2.95/1.00  unary                                   7
% 2.95/1.00  binary                                  14
% 2.95/1.00  lits                                    112
% 2.95/1.00  lits eq                                 43
% 2.95/1.00  fd_pure                                 0
% 2.95/1.00  fd_pseudo                               0
% 2.95/1.00  fd_cond                                 4
% 2.95/1.00  fd_pseudo_cond                          0
% 2.95/1.00  AC symbols                              0
% 2.95/1.00  
% 2.95/1.00  ------ Schedule dynamic 5 is on 
% 2.95/1.00  
% 2.95/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  ------ 
% 2.95/1.00  Current options:
% 2.95/1.00  ------ 
% 2.95/1.00  
% 2.95/1.00  ------ Input Options
% 2.95/1.00  
% 2.95/1.00  --out_options                           all
% 2.95/1.00  --tptp_safe_out                         true
% 2.95/1.00  --problem_path                          ""
% 2.95/1.00  --include_path                          ""
% 2.95/1.00  --clausifier                            res/vclausify_rel
% 2.95/1.00  --clausifier_options                    --mode clausify
% 2.95/1.00  --stdin                                 false
% 2.95/1.00  --stats_out                             all
% 2.95/1.00  
% 2.95/1.00  ------ General Options
% 2.95/1.00  
% 2.95/1.00  --fof                                   false
% 2.95/1.00  --time_out_real                         305.
% 2.95/1.00  --time_out_virtual                      -1.
% 2.95/1.00  --symbol_type_check                     false
% 2.95/1.00  --clausify_out                          false
% 2.95/1.00  --sig_cnt_out                           false
% 2.95/1.00  --trig_cnt_out                          false
% 2.95/1.00  --trig_cnt_out_tolerance                1.
% 2.95/1.00  --trig_cnt_out_sk_spl                   false
% 2.95/1.00  --abstr_cl_out                          false
% 2.95/1.00  
% 2.95/1.00  ------ Global Options
% 2.95/1.00  
% 2.95/1.00  --schedule                              default
% 2.95/1.00  --add_important_lit                     false
% 2.95/1.00  --prop_solver_per_cl                    1000
% 2.95/1.00  --min_unsat_core                        false
% 2.95/1.00  --soft_assumptions                      false
% 2.95/1.00  --soft_lemma_size                       3
% 2.95/1.00  --prop_impl_unit_size                   0
% 2.95/1.00  --prop_impl_unit                        []
% 2.95/1.00  --share_sel_clauses                     true
% 2.95/1.00  --reset_solvers                         false
% 2.95/1.00  --bc_imp_inh                            [conj_cone]
% 2.95/1.00  --conj_cone_tolerance                   3.
% 2.95/1.00  --extra_neg_conj                        none
% 2.95/1.00  --large_theory_mode                     true
% 2.95/1.00  --prolific_symb_bound                   200
% 2.95/1.00  --lt_threshold                          2000
% 2.95/1.00  --clause_weak_htbl                      true
% 2.95/1.00  --gc_record_bc_elim                     false
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing Options
% 2.95/1.00  
% 2.95/1.00  --preprocessing_flag                    true
% 2.95/1.00  --time_out_prep_mult                    0.1
% 2.95/1.00  --splitting_mode                        input
% 2.95/1.00  --splitting_grd                         true
% 2.95/1.00  --splitting_cvd                         false
% 2.95/1.00  --splitting_cvd_svl                     false
% 2.95/1.00  --splitting_nvd                         32
% 2.95/1.00  --sub_typing                            true
% 2.95/1.00  --prep_gs_sim                           true
% 2.95/1.00  --prep_unflatten                        true
% 2.95/1.00  --prep_res_sim                          true
% 2.95/1.00  --prep_upred                            true
% 2.95/1.00  --prep_sem_filter                       exhaustive
% 2.95/1.00  --prep_sem_filter_out                   false
% 2.95/1.00  --pred_elim                             true
% 2.95/1.00  --res_sim_input                         true
% 2.95/1.00  --eq_ax_congr_red                       true
% 2.95/1.00  --pure_diseq_elim                       true
% 2.95/1.00  --brand_transform                       false
% 2.95/1.00  --non_eq_to_eq                          false
% 2.95/1.00  --prep_def_merge                        true
% 2.95/1.00  --prep_def_merge_prop_impl              false
% 2.95/1.00  --prep_def_merge_mbd                    true
% 2.95/1.00  --prep_def_merge_tr_red                 false
% 2.95/1.00  --prep_def_merge_tr_cl                  false
% 2.95/1.00  --smt_preprocessing                     true
% 2.95/1.00  --smt_ac_axioms                         fast
% 2.95/1.00  --preprocessed_out                      false
% 2.95/1.00  --preprocessed_stats                    false
% 2.95/1.00  
% 2.95/1.00  ------ Abstraction refinement Options
% 2.95/1.00  
% 2.95/1.00  --abstr_ref                             []
% 2.95/1.00  --abstr_ref_prep                        false
% 2.95/1.00  --abstr_ref_until_sat                   false
% 2.95/1.00  --abstr_ref_sig_restrict                funpre
% 2.95/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.95/1.00  --abstr_ref_under                       []
% 2.95/1.00  
% 2.95/1.00  ------ SAT Options
% 2.95/1.00  
% 2.95/1.00  --sat_mode                              false
% 2.95/1.00  --sat_fm_restart_options                ""
% 2.95/1.00  --sat_gr_def                            false
% 2.95/1.00  --sat_epr_types                         true
% 2.95/1.00  --sat_non_cyclic_types                  false
% 2.95/1.00  --sat_finite_models                     false
% 2.95/1.00  --sat_fm_lemmas                         false
% 2.95/1.00  --sat_fm_prep                           false
% 2.95/1.00  --sat_fm_uc_incr                        true
% 2.95/1.00  --sat_out_model                         small
% 2.95/1.00  --sat_out_clauses                       false
% 2.95/1.00  
% 2.95/1.00  ------ QBF Options
% 2.95/1.00  
% 2.95/1.00  --qbf_mode                              false
% 2.95/1.00  --qbf_elim_univ                         false
% 2.95/1.00  --qbf_dom_inst                          none
% 2.95/1.00  --qbf_dom_pre_inst                      false
% 2.95/1.00  --qbf_sk_in                             false
% 2.95/1.00  --qbf_pred_elim                         true
% 2.95/1.00  --qbf_split                             512
% 2.95/1.00  
% 2.95/1.00  ------ BMC1 Options
% 2.95/1.00  
% 2.95/1.00  --bmc1_incremental                      false
% 2.95/1.00  --bmc1_axioms                           reachable_all
% 2.95/1.00  --bmc1_min_bound                        0
% 2.95/1.00  --bmc1_max_bound                        -1
% 2.95/1.00  --bmc1_max_bound_default                -1
% 2.95/1.00  --bmc1_symbol_reachability              true
% 2.95/1.00  --bmc1_property_lemmas                  false
% 2.95/1.00  --bmc1_k_induction                      false
% 2.95/1.00  --bmc1_non_equiv_states                 false
% 2.95/1.00  --bmc1_deadlock                         false
% 2.95/1.00  --bmc1_ucm                              false
% 2.95/1.00  --bmc1_add_unsat_core                   none
% 2.95/1.00  --bmc1_unsat_core_children              false
% 2.95/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.95/1.00  --bmc1_out_stat                         full
% 2.95/1.00  --bmc1_ground_init                      false
% 2.95/1.00  --bmc1_pre_inst_next_state              false
% 2.95/1.00  --bmc1_pre_inst_state                   false
% 2.95/1.00  --bmc1_pre_inst_reach_state             false
% 2.95/1.00  --bmc1_out_unsat_core                   false
% 2.95/1.00  --bmc1_aig_witness_out                  false
% 2.95/1.00  --bmc1_verbose                          false
% 2.95/1.00  --bmc1_dump_clauses_tptp                false
% 2.95/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.95/1.00  --bmc1_dump_file                        -
% 2.95/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.95/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.95/1.00  --bmc1_ucm_extend_mode                  1
% 2.95/1.00  --bmc1_ucm_init_mode                    2
% 2.95/1.00  --bmc1_ucm_cone_mode                    none
% 2.95/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.95/1.00  --bmc1_ucm_relax_model                  4
% 2.95/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.95/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.95/1.00  --bmc1_ucm_layered_model                none
% 2.95/1.00  --bmc1_ucm_max_lemma_size               10
% 2.95/1.00  
% 2.95/1.00  ------ AIG Options
% 2.95/1.00  
% 2.95/1.00  --aig_mode                              false
% 2.95/1.00  
% 2.95/1.00  ------ Instantiation Options
% 2.95/1.00  
% 2.95/1.00  --instantiation_flag                    true
% 2.95/1.00  --inst_sos_flag                         false
% 2.95/1.00  --inst_sos_phase                        true
% 2.95/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.95/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.95/1.00  --inst_lit_sel_side                     none
% 2.95/1.00  --inst_solver_per_active                1400
% 2.95/1.00  --inst_solver_calls_frac                1.
% 2.95/1.00  --inst_passive_queue_type               priority_queues
% 2.95/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.95/1.00  --inst_passive_queues_freq              [25;2]
% 2.95/1.00  --inst_dismatching                      true
% 2.95/1.00  --inst_eager_unprocessed_to_passive     true
% 2.95/1.00  --inst_prop_sim_given                   true
% 2.95/1.00  --inst_prop_sim_new                     false
% 2.95/1.00  --inst_subs_new                         false
% 2.95/1.00  --inst_eq_res_simp                      false
% 2.95/1.00  --inst_subs_given                       false
% 2.95/1.00  --inst_orphan_elimination               true
% 2.95/1.00  --inst_learning_loop_flag               true
% 2.95/1.00  --inst_learning_start                   3000
% 2.95/1.00  --inst_learning_factor                  2
% 2.95/1.00  --inst_start_prop_sim_after_learn       3
% 2.95/1.00  --inst_sel_renew                        solver
% 2.95/1.00  --inst_lit_activity_flag                true
% 2.95/1.00  --inst_restr_to_given                   false
% 2.95/1.00  --inst_activity_threshold               500
% 2.95/1.00  --inst_out_proof                        true
% 2.95/1.00  
% 2.95/1.00  ------ Resolution Options
% 2.95/1.00  
% 2.95/1.00  --resolution_flag                       false
% 2.95/1.00  --res_lit_sel                           adaptive
% 2.95/1.00  --res_lit_sel_side                      none
% 2.95/1.00  --res_ordering                          kbo
% 2.95/1.00  --res_to_prop_solver                    active
% 2.95/1.00  --res_prop_simpl_new                    false
% 2.95/1.00  --res_prop_simpl_given                  true
% 2.95/1.00  --res_passive_queue_type                priority_queues
% 2.95/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.95/1.00  --res_passive_queues_freq               [15;5]
% 2.95/1.00  --res_forward_subs                      full
% 2.95/1.00  --res_backward_subs                     full
% 2.95/1.00  --res_forward_subs_resolution           true
% 2.95/1.00  --res_backward_subs_resolution          true
% 2.95/1.00  --res_orphan_elimination                true
% 2.95/1.00  --res_time_limit                        2.
% 2.95/1.00  --res_out_proof                         true
% 2.95/1.00  
% 2.95/1.00  ------ Superposition Options
% 2.95/1.00  
% 2.95/1.00  --superposition_flag                    true
% 2.95/1.00  --sup_passive_queue_type                priority_queues
% 2.95/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.95/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.95/1.00  --demod_completeness_check              fast
% 2.95/1.00  --demod_use_ground                      true
% 2.95/1.00  --sup_to_prop_solver                    passive
% 2.95/1.00  --sup_prop_simpl_new                    true
% 2.95/1.00  --sup_prop_simpl_given                  true
% 2.95/1.00  --sup_fun_splitting                     false
% 2.95/1.00  --sup_smt_interval                      50000
% 2.95/1.00  
% 2.95/1.00  ------ Superposition Simplification Setup
% 2.95/1.00  
% 2.95/1.00  --sup_indices_passive                   []
% 2.95/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.95/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.95/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_full_bw                           [BwDemod]
% 2.95/1.00  --sup_immed_triv                        [TrivRules]
% 2.95/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.95/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_immed_bw_main                     []
% 2.95/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.95/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.95/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.95/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.95/1.00  
% 2.95/1.00  ------ Combination Options
% 2.95/1.00  
% 2.95/1.00  --comb_res_mult                         3
% 2.95/1.00  --comb_sup_mult                         2
% 2.95/1.00  --comb_inst_mult                        10
% 2.95/1.00  
% 2.95/1.00  ------ Debug Options
% 2.95/1.00  
% 2.95/1.00  --dbg_backtrace                         false
% 2.95/1.00  --dbg_dump_prop_clauses                 false
% 2.95/1.00  --dbg_dump_prop_clauses_file            -
% 2.95/1.00  --dbg_out_stat                          false
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  ------ Proving...
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  % SZS status Theorem for theBenchmark.p
% 2.95/1.00  
% 2.95/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.95/1.00  
% 2.95/1.00  fof(f3,axiom,(
% 2.95/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f51,plain,(
% 2.95/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f3])).
% 2.95/1.00  
% 2.95/1.00  fof(f17,axiom,(
% 2.95/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f37,plain,(
% 2.95/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(ennf_transformation,[],[f17])).
% 2.95/1.00  
% 2.95/1.00  fof(f38,plain,(
% 2.95/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(flattening,[],[f37])).
% 2.95/1.00  
% 2.95/1.00  fof(f46,plain,(
% 2.95/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(nnf_transformation,[],[f38])).
% 2.95/1.00  
% 2.95/1.00  fof(f69,plain,(
% 2.95/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.95/1.00    inference(cnf_transformation,[],[f46])).
% 2.95/1.00  
% 2.95/1.00  fof(f20,conjecture,(
% 2.95/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f21,negated_conjecture,(
% 2.95/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 2.95/1.00    inference(negated_conjecture,[],[f20])).
% 2.95/1.00  
% 2.95/1.00  fof(f43,plain,(
% 2.95/1.00    ? [X0,X1,X2] : (((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & (k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 2.95/1.00    inference(ennf_transformation,[],[f21])).
% 2.95/1.00  
% 2.95/1.00  fof(f44,plain,(
% 2.95/1.00    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 2.95/1.00    inference(flattening,[],[f43])).
% 2.95/1.00  
% 2.95/1.00  fof(f47,plain,(
% 2.95/1.00    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 2.95/1.00    introduced(choice_axiom,[])).
% 2.95/1.00  
% 2.95/1.00  fof(f48,plain,(
% 2.95/1.00    (~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 2.95/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f44,f47])).
% 2.95/1.00  
% 2.95/1.00  fof(f82,plain,(
% 2.95/1.00    v1_funct_2(sK2,sK0,sK1)),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f83,plain,(
% 2.95/1.00    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f15,axiom,(
% 2.95/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f35,plain,(
% 2.95/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(ennf_transformation,[],[f15])).
% 2.95/1.00  
% 2.95/1.00  fof(f67,plain,(
% 2.95/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.95/1.00    inference(cnf_transformation,[],[f35])).
% 2.95/1.00  
% 2.95/1.00  fof(f13,axiom,(
% 2.95/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f33,plain,(
% 2.95/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(ennf_transformation,[],[f13])).
% 2.95/1.00  
% 2.95/1.00  fof(f65,plain,(
% 2.95/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.95/1.00    inference(cnf_transformation,[],[f33])).
% 2.95/1.00  
% 2.95/1.00  fof(f12,axiom,(
% 2.95/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f31,plain,(
% 2.95/1.00    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.95/1.00    inference(ennf_transformation,[],[f12])).
% 2.95/1.00  
% 2.95/1.00  fof(f32,plain,(
% 2.95/1.00    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.95/1.00    inference(flattening,[],[f31])).
% 2.95/1.00  
% 2.95/1.00  fof(f64,plain,(
% 2.95/1.00    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f32])).
% 2.95/1.00  
% 2.95/1.00  fof(f84,plain,(
% 2.95/1.00    v2_funct_1(sK2)),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f81,plain,(
% 2.95/1.00    v1_funct_1(sK2)),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f18,axiom,(
% 2.95/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f39,plain,(
% 2.95/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.95/1.00    inference(ennf_transformation,[],[f18])).
% 2.95/1.00  
% 2.95/1.00  fof(f40,plain,(
% 2.95/1.00    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.95/1.00    inference(flattening,[],[f39])).
% 2.95/1.00  
% 2.95/1.00  fof(f77,plain,(
% 2.95/1.00    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f40])).
% 2.95/1.00  
% 2.95/1.00  fof(f16,axiom,(
% 2.95/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f36,plain,(
% 2.95/1.00    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.95/1.00    inference(ennf_transformation,[],[f16])).
% 2.95/1.00  
% 2.95/1.00  fof(f68,plain,(
% 2.95/1.00    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.95/1.00    inference(cnf_transformation,[],[f36])).
% 2.95/1.00  
% 2.95/1.00  fof(f85,plain,(
% 2.95/1.00    k2_relset_1(sK0,sK1,sK2) = sK1),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f63,plain,(
% 2.95/1.00    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f32])).
% 2.95/1.00  
% 2.95/1.00  fof(f10,axiom,(
% 2.95/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f27,plain,(
% 2.95/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.95/1.00    inference(ennf_transformation,[],[f10])).
% 2.95/1.00  
% 2.95/1.00  fof(f28,plain,(
% 2.95/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.95/1.00    inference(flattening,[],[f27])).
% 2.95/1.00  
% 2.95/1.00  fof(f61,plain,(
% 2.95/1.00    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f28])).
% 2.95/1.00  
% 2.95/1.00  fof(f60,plain,(
% 2.95/1.00    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f28])).
% 2.95/1.00  
% 2.95/1.00  fof(f76,plain,(
% 2.95/1.00    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f40])).
% 2.95/1.00  
% 2.95/1.00  fof(f86,plain,(
% 2.95/1.00    ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))),
% 2.95/1.00    inference(cnf_transformation,[],[f48])).
% 2.95/1.00  
% 2.95/1.00  fof(f4,axiom,(
% 2.95/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f45,plain,(
% 2.95/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.95/1.00    inference(nnf_transformation,[],[f4])).
% 2.95/1.00  
% 2.95/1.00  fof(f53,plain,(
% 2.95/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f45])).
% 2.95/1.00  
% 2.95/1.00  fof(f2,axiom,(
% 2.95/1.00    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f22,plain,(
% 2.95/1.00    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.95/1.00    inference(ennf_transformation,[],[f2])).
% 2.95/1.00  
% 2.95/1.00  fof(f50,plain,(
% 2.95/1.00    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f22])).
% 2.95/1.00  
% 2.95/1.00  fof(f14,axiom,(
% 2.95/1.00    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_xboole_0(X2)))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f34,plain,(
% 2.95/1.00    ! [X0,X1] : (! [X2] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X0))),
% 2.95/1.00    inference(ennf_transformation,[],[f14])).
% 2.95/1.00  
% 2.95/1.00  fof(f66,plain,(
% 2.95/1.00    ( ! [X2,X0,X1] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X0)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f34])).
% 2.95/1.00  
% 2.95/1.00  fof(f52,plain,(
% 2.95/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.95/1.00    inference(cnf_transformation,[],[f45])).
% 2.95/1.00  
% 2.95/1.00  fof(f19,axiom,(
% 2.95/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f41,plain,(
% 2.95/1.00    ! [X0,X1] : (((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.95/1.00    inference(ennf_transformation,[],[f19])).
% 2.95/1.00  
% 2.95/1.00  fof(f42,plain,(
% 2.95/1.00    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.95/1.00    inference(flattening,[],[f41])).
% 2.95/1.00  
% 2.95/1.00  fof(f79,plain,(
% 2.95/1.00    ( ! [X0,X1] : (v1_funct_2(X1,k1_relat_1(X1),X0) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.95/1.00    inference(cnf_transformation,[],[f42])).
% 2.95/1.00  
% 2.95/1.00  fof(f1,axiom,(
% 2.95/1.00    v1_xboole_0(k1_xboole_0)),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f49,plain,(
% 2.95/1.00    v1_xboole_0(k1_xboole_0)),
% 2.95/1.00    inference(cnf_transformation,[],[f1])).
% 2.95/1.00  
% 2.95/1.00  fof(f8,axiom,(
% 2.95/1.00    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 2.95/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.95/1.00  
% 2.95/1.00  fof(f58,plain,(
% 2.95/1.00    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 2.95/1.00    inference(cnf_transformation,[],[f8])).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2,plain,
% 2.95/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2592,plain,
% 2.95/1.00      ( r1_tarski(k1_xboole_0,k2_zfmisc_1(X0,X1)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_6115,plain,
% 2.95/1.00      ( r1_tarski(k1_xboole_0,k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2592]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_25,plain,
% 2.95/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.95/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | k1_relset_1(X1,X2,X0) = X1
% 2.95/1.00      | k1_xboole_0 = X2 ),
% 2.95/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_36,negated_conjecture,
% 2.95/1.00      ( v1_funct_2(sK2,sK0,sK1) ),
% 2.95/1.00      inference(cnf_transformation,[],[f82]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_859,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | k1_relset_1(X1,X2,X0) = X1
% 2.95/1.00      | sK0 != X1
% 2.95/1.00      | sK1 != X2
% 2.95/1.00      | sK2 != X0
% 2.95/1.00      | k1_xboole_0 = X2 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_25,c_36]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_860,plain,
% 2.95/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 2.95/1.00      | k1_relset_1(sK0,sK1,sK2) = sK0
% 2.95/1.00      | k1_xboole_0 = sK1 ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_859]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_35,negated_conjecture,
% 2.95/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 2.95/1.00      inference(cnf_transformation,[],[f83]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_862,plain,
% 2.95/1.00      ( k1_relset_1(sK0,sK1,sK2) = sK0 | k1_xboole_0 = sK1 ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_860,c_35]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2080,plain,
% 2.95/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_18,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2084,plain,
% 2.95/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.95/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4224,plain,
% 2.95/1.00      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_2080,c_2084]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4431,plain,
% 2.95/1.00      ( k1_relat_1(sK2) = sK0 | sK1 = k1_xboole_0 ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_862,c_4224]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_16,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | v1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2086,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.95/1.00      | v1_relat_1(X0) = iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3544,plain,
% 2.95/1.00      ( v1_relat_1(sK2) = iProver_top ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_2080,c_2086]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_14,plain,
% 2.95/1.00      ( ~ v2_funct_1(X0)
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_34,negated_conjecture,
% 2.95/1.00      ( v2_funct_1(sK2) ),
% 2.95/1.00      inference(cnf_transformation,[],[f84]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_464,plain,
% 2.95/1.00      ( ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 2.95/1.00      | sK2 != X0 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_34]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_465,plain,
% 2.95/1.00      ( ~ v1_funct_1(sK2)
% 2.95/1.00      | ~ v1_relat_1(sK2)
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_464]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_37,negated_conjecture,
% 2.95/1.00      ( v1_funct_1(sK2) ),
% 2.95/1.00      inference(cnf_transformation,[],[f81]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_467,plain,
% 2.95/1.00      ( ~ v1_relat_1(sK2)
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_465,c_37]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2077,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 2.95/1.00      | v1_relat_1(sK2) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_467]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3715,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_3544,c_2077]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_26,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f77]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2082,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = iProver_top
% 2.95/1.00      | v1_funct_1(X0) != iProver_top
% 2.95/1.00      | v1_relat_1(X0) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4842,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k1_relat_1(sK2)))) = iProver_top
% 2.95/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.95/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_3715,c_2082]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_19,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2083,plain,
% 2.95/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.95/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3557,plain,
% 2.95/1.00      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_2080,c_2083]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_33,negated_conjecture,
% 2.95/1.00      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 2.95/1.00      inference(cnf_transformation,[],[f85]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3559,plain,
% 2.95/1.00      ( k2_relat_1(sK2) = sK1 ),
% 2.95/1.00      inference(light_normalisation,[status(thm)],[c_3557,c_33]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_15,plain,
% 2.95/1.00      ( ~ v2_funct_1(X0)
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_450,plain,
% 2.95/1.00      ( ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 2.95/1.00      | sK2 != X0 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_34]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_451,plain,
% 2.95/1.00      ( ~ v1_funct_1(sK2)
% 2.95/1.00      | ~ v1_relat_1(sK2)
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_450]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_453,plain,
% 2.95/1.00      ( ~ v1_relat_1(sK2)
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_451,c_37]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2078,plain,
% 2.95/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 2.95/1.00      | v1_relat_1(sK2) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_453]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3704,plain,
% 2.95/1.00      ( k1_relat_1(k2_funct_1(sK2)) = sK1
% 2.95/1.00      | v1_relat_1(sK2) != iProver_top ),
% 2.95/1.00      inference(demodulation,[status(thm)],[c_3559,c_2078]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_40,plain,
% 2.95/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2412,plain,
% 2.95/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.95/1.00      | v1_relat_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2549,plain,
% 2.95/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 2.95/1.00      | v1_relat_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2412]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2550,plain,
% 2.95/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 2.95/1.00      | v1_relat_1(sK2) = iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_2549]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3884,plain,
% 2.95/1.00      ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_3704,c_40,c_2550]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4871,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top
% 2.95/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 2.95/1.00      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 2.95/1.00      inference(light_normalisation,[status(thm)],[c_4842,c_3884]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_38,plain,
% 2.95/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_11,plain,
% 2.95/1.00      ( ~ v1_funct_1(X0)
% 2.95/1.00      | v1_funct_1(k2_funct_1(X0))
% 2.95/1.00      | ~ v1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2409,plain,
% 2.95/1.00      ( v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_funct_1(sK2)
% 2.95/1.00      | ~ v1_relat_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_11]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2410,plain,
% 2.95/1.00      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 2.95/1.00      | v1_funct_1(sK2) != iProver_top
% 2.95/1.00      | v1_relat_1(sK2) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_2409]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_12,plain,
% 2.95/1.00      ( ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | v1_relat_1(k2_funct_1(X0)) ),
% 2.95/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3227,plain,
% 2.95/1.00      ( ~ v1_funct_1(sK2)
% 2.95/1.00      | v1_relat_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3228,plain,
% 2.95/1.00      ( v1_funct_1(sK2) != iProver_top
% 2.95/1.00      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 2.95/1.00      | v1_relat_1(sK2) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_3227]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5578,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,k1_relat_1(sK2)))) = iProver_top ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_4871,c_38,c_40,c_2410,c_2550,c_3228]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5585,plain,
% 2.95/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = k1_relat_1(k2_funct_1(sK2)) ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_5578,c_2084]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5599,plain,
% 2.95/1.00      ( k1_relset_1(sK1,k1_relat_1(sK2),k2_funct_1(sK2)) = sK1 ),
% 2.95/1.00      inference(light_normalisation,[status(thm)],[c_5585,c_3884]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5612,plain,
% 2.95/1.00      ( k1_relset_1(sK1,sK0,k2_funct_1(sK2)) = sK1 | sK1 = k1_xboole_0 ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_4431,c_5599]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_27,plain,
% 2.95/1.00      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f76]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_32,negated_conjecture,
% 2.95/1.00      ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
% 2.95/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2)) ),
% 2.95/1.00      inference(cnf_transformation,[],[f86]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_870,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k2_funct_1(sK2) != X0
% 2.95/1.00      | k2_relat_1(X0) != sK0
% 2.95/1.00      | k1_relat_1(X0) != sK1 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_27,c_32]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_871,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(k2_funct_1(sK2))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_870]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_883,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 2.95/1.00      inference(forward_subsumption_resolution,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_871,c_16]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2064,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 2.95/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_883]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_888,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 2.95/1.00      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 2.95/1.00      inference(predicate_to_equality,[status(thm)],[c_883]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2736,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != sK0 ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_2064,c_38,c_40,c_888,c_2410,c_2550]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2737,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 2.95/1.00      inference(renaming,[status(thm)],[c_2736]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3888,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | sK1 != sK1
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 2.95/1.00      inference(demodulation,[status(thm)],[c_3884,c_2737]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3889,plain,
% 2.95/1.00      ( k2_relat_1(k2_funct_1(sK2)) != sK0
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 2.95/1.00      inference(equality_resolution_simp,[status(thm)],[c_3888]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4739,plain,
% 2.95/1.00      ( k1_relat_1(sK2) != sK0
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 2.95/1.00      inference(light_normalisation,[status(thm)],[c_3889,c_3715]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4743,plain,
% 2.95/1.00      ( sK1 = k1_xboole_0
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_4431,c_4739]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5583,plain,
% 2.95/1.00      ( sK1 = k1_xboole_0
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 2.95/1.00      inference(superposition,[status(thm)],[c_4431,c_5578]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5771,plain,
% 2.95/1.00      ( sK1 = k1_xboole_0 ),
% 2.95/1.00      inference(global_propositional_subsumption,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_5612,c_4743,c_5583]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5787,plain,
% 2.95/1.00      ( k1_relat_1(k2_funct_1(sK2)) = k1_xboole_0 ),
% 2.95/1.00      inference(demodulation,[status(thm)],[c_5771,c_3884]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1247,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2489,plain,
% 2.95/1.00      ( m1_subset_1(X0,X1)
% 2.95/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
% 2.95/1.00      | X0 != X2
% 2.95/1.00      | X1 != k1_zfmisc_1(X3) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1247]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2656,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.95/1.00      | m1_subset_1(X2,k1_zfmisc_1(X3))
% 2.95/1.00      | X2 != X0
% 2.95/1.00      | k1_zfmisc_1(X3) != k1_zfmisc_1(X1) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2489]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3126,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.95/1.00      | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != X0
% 2.95/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(X1) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2656]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3793,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(X1))
% 2.95/1.00      | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(X0)
% 2.95/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(X1) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3126]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5046,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(sK0))
% 2.95/1.00      | m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(X0)
% 2.95/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3793]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_5048,plain,
% 2.95/1.00      ( m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
% 2.95/1.00      | ~ m1_subset_1(k2_relat_1(k1_xboole_0),k1_zfmisc_1(sK0))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != k2_relat_1(k1_xboole_0)
% 2.95/1.00      | k1_zfmisc_1(sK0) != k1_zfmisc_1(sK0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_5046]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.95/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2447,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | ~ r1_tarski(X0,k2_zfmisc_1(X1,X2)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4678,plain,
% 2.95/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ r1_tarski(X0,k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2447]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4680,plain,
% 2.95/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ r1_tarski(k1_xboole_0,k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_4678]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1245,plain,
% 2.95/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2484,plain,
% 2.95/1.00      ( ~ r1_tarski(X0,X1)
% 2.95/1.00      | r1_tarski(k2_relat_1(X2),X3)
% 2.95/1.00      | X3 != X1
% 2.95/1.00      | k2_relat_1(X2) != X0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1245]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3431,plain,
% 2.95/1.00      ( ~ r1_tarski(X0,X1)
% 2.95/1.00      | r1_tarski(k2_relat_1(X2),sK0)
% 2.95/1.00      | k2_relat_1(X2) != X0
% 2.95/1.00      | sK0 != X1 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2484]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4266,plain,
% 2.95/1.00      ( ~ r1_tarski(X0,sK0)
% 2.95/1.00      | r1_tarski(k2_relat_1(X1),sK0)
% 2.95/1.00      | k2_relat_1(X1) != X0
% 2.95/1.00      | sK0 != sK0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3431]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4268,plain,
% 2.95/1.00      ( r1_tarski(k2_relat_1(k1_xboole_0),sK0)
% 2.95/1.00      | ~ r1_tarski(k1_xboole_0,sK0)
% 2.95/1.00      | k2_relat_1(k1_xboole_0) != k1_xboole_0
% 2.95/1.00      | sK0 != sK0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_4266]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4034,plain,
% 2.95/1.00      ( m1_subset_1(k2_relat_1(X0),k1_zfmisc_1(sK0))
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(X0),sK0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4036,plain,
% 2.95/1.00      ( m1_subset_1(k2_relat_1(k1_xboole_0),k1_zfmisc_1(sK0))
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(k1_xboole_0),sK0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_4034]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1251,plain,
% 2.95/1.00      ( X0 != X1 | k2_relat_1(X0) = k2_relat_1(X1) ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3794,plain,
% 2.95/1.00      ( k2_funct_1(sK2) != X0
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) = k2_relat_1(X0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1251]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3799,plain,
% 2.95/1.00      ( k2_funct_1(sK2) != k1_xboole_0
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) = k2_relat_1(k1_xboole_0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3794]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3745,plain,
% 2.95/1.00      ( r1_tarski(k1_xboole_0,sK0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1246,plain,
% 2.95/1.00      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3742,plain,
% 2.95/1.00      ( k1_zfmisc_1(sK0) = k1_zfmisc_1(sK0) | sK0 != sK0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1246]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1,plain,
% 2.95/1.00      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.95/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3336,plain,
% 2.95/1.00      ( ~ v1_xboole_0(k2_funct_1(sK2)) | k1_xboole_0 = k2_funct_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1244,plain,
% 2.95/1.00      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3214,plain,
% 2.95/1.00      ( ~ v1_xboole_0(X0)
% 2.95/1.00      | v1_xboole_0(k1_relat_1(k2_funct_1(sK2)))
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != X0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1244]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3216,plain,
% 2.95/1.00      ( v1_xboole_0(k1_relat_1(k2_funct_1(sK2)))
% 2.95/1.00      | ~ v1_xboole_0(k1_xboole_0)
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != k1_xboole_0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3214]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1242,plain,( X0 = X0 ),theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2650,plain,
% 2.95/1.00      ( k1_zfmisc_1(X0) = k1_zfmisc_1(X0) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1242]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3099,plain,
% 2.95/1.00      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2650]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2649,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.95/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.95/1.00      | X2 != X0
% 2.95/1.00      | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2489]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3005,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | k2_funct_1(sK2) != X0
% 2.95/1.00      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2649]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_3007,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | k2_funct_1(sK2) != k1_xboole_0
% 2.95/1.00      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_3005]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1243,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2555,plain,
% 2.95/1.00      ( X0 != X1 | k2_funct_1(sK2) != X1 | k2_funct_1(sK2) = X0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1243]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2834,plain,
% 2.95/1.00      ( X0 != k2_funct_1(sK2)
% 2.95/1.00      | k2_funct_1(sK2) = X0
% 2.95/1.00      | k2_funct_1(sK2) != k2_funct_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2555]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2836,plain,
% 2.95/1.00      ( k2_funct_1(sK2) != k2_funct_1(sK2)
% 2.95/1.00      | k2_funct_1(sK2) = k1_xboole_0
% 2.95/1.00      | k1_xboole_0 != k2_funct_1(sK2) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2834]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2804,plain,
% 2.95/1.00      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k2_relat_1(k2_funct_1(sK2)))))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(k2_funct_1(sK2)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_26]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_17,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.95/1.00      | ~ v1_xboole_0(X1)
% 2.95/1.00      | v1_xboole_0(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2506,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.95/1.00      | ~ v1_xboole_0(X0)
% 2.95/1.00      | v1_xboole_0(k2_funct_1(sK2)) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_17]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2803,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(k2_funct_1(sK2)),k2_relat_1(k2_funct_1(sK2)))))
% 2.95/1.00      | v1_xboole_0(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_xboole_0(k1_relat_1(k2_funct_1(sK2))) ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2506]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2795,plain,
% 2.95/1.00      ( sK2 = sK2 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1242]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1254,plain,
% 2.95/1.00      ( X0 != X1 | k2_funct_1(X0) = k2_funct_1(X1) ),
% 2.95/1.00      theory(equality) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2557,plain,
% 2.95/1.00      ( k2_funct_1(sK2) = k2_funct_1(X0) | sK2 != X0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1254]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2794,plain,
% 2.95/1.00      ( k2_funct_1(sK2) = k2_funct_1(sK2) | sK2 != sK2 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_2557]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_2564,plain,
% 2.95/1.00      ( sK0 = sK0 ),
% 2.95/1.00      inference(instantiation,[status(thm)],[c_1242]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_4,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.95/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_271,plain,
% 2.95/1.00      ( r1_tarski(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.95/1.00      inference(prop_impl,[status(thm)],[c_4]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_272,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.95/1.00      inference(renaming,[status(thm)],[c_271]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_30,plain,
% 2.95/1.00      ( v1_funct_2(X0,k1_relat_1(X0),X1)
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(X0),X1)
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_relat_1(X0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f79]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_889,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(X0),X1)
% 2.95/1.00      | ~ v1_funct_1(X0)
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(X0)
% 2.95/1.00      | k2_funct_1(sK2) != X0
% 2.95/1.00      | k1_relat_1(X0) != sK1
% 2.95/1.00      | sK0 != X1 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_30,c_32]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_890,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | ~ v1_relat_1(k2_funct_1(sK2))
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_889]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_902,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 2.95/1.00      inference(forward_subsumption_resolution,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_890,c_16]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1178,plain,
% 2.95/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.95/1.00      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | k2_relat_1(k2_funct_1(sK2)) != X0
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1
% 2.95/1.00      | sK0 != X1 ),
% 2.95/1.00      inference(resolution_lifted,[status(thm)],[c_272,c_902]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_1179,plain,
% 2.95/1.00      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 2.95/1.00      | ~ m1_subset_1(k2_relat_1(k2_funct_1(sK2)),k1_zfmisc_1(sK0))
% 2.95/1.00      | ~ v1_funct_1(k2_funct_1(sK2))
% 2.95/1.00      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 2.95/1.00      inference(unflattening,[status(thm)],[c_1178]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_0,plain,
% 2.95/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 2.95/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(c_8,plain,
% 2.95/1.00      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 2.95/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.95/1.00  
% 2.95/1.00  cnf(contradiction,plain,
% 2.95/1.00      ( $false ),
% 2.95/1.00      inference(minisat,
% 2.95/1.00                [status(thm)],
% 2.95/1.00                [c_6115,c_5787,c_5048,c_4680,c_4268,c_4036,c_3799,c_3745,
% 2.95/1.00                 c_3742,c_3704,c_3336,c_3227,c_3216,c_3099,c_3007,c_2836,
% 2.95/1.00                 c_2804,c_2803,c_2795,c_2794,c_2564,c_2550,c_2549,c_2409,
% 2.95/1.00                 c_1179,c_0,c_8,c_40,c_35,c_37]) ).
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.95/1.00  
% 2.95/1.00  ------                               Statistics
% 2.95/1.00  
% 2.95/1.00  ------ General
% 2.95/1.00  
% 2.95/1.00  abstr_ref_over_cycles:                  0
% 2.95/1.00  abstr_ref_under_cycles:                 0
% 2.95/1.00  gc_basic_clause_elim:                   0
% 2.95/1.00  forced_gc_time:                         0
% 2.95/1.00  parsing_time:                           0.008
% 2.95/1.00  unif_index_cands_time:                  0.
% 2.95/1.00  unif_index_add_time:                    0.
% 2.95/1.00  orderings_time:                         0.
% 2.95/1.00  out_proof_time:                         0.011
% 2.95/1.00  total_time:                             0.168
% 2.95/1.00  num_of_symbols:                         51
% 2.95/1.00  num_of_terms:                           3741
% 2.95/1.00  
% 2.95/1.00  ------ Preprocessing
% 2.95/1.00  
% 2.95/1.00  num_of_splits:                          0
% 2.95/1.00  num_of_split_atoms:                     0
% 2.95/1.00  num_of_reused_defs:                     0
% 2.95/1.00  num_eq_ax_congr_red:                    4
% 2.95/1.00  num_of_sem_filtered_clauses:            1
% 2.95/1.00  num_of_subtypes:                        0
% 2.95/1.00  monotx_restored_types:                  0
% 2.95/1.00  sat_num_of_epr_types:                   0
% 2.95/1.00  sat_num_of_non_cyclic_types:            0
% 2.95/1.00  sat_guarded_non_collapsed_types:        0
% 2.95/1.00  num_pure_diseq_elim:                    0
% 2.95/1.00  simp_replaced_by:                       0
% 2.95/1.00  res_preprocessed:                       149
% 2.95/1.00  prep_upred:                             0
% 2.95/1.00  prep_unflattend:                        79
% 2.95/1.00  smt_new_axioms:                         0
% 2.95/1.00  pred_elim_cands:                        7
% 2.95/1.00  pred_elim:                              2
% 2.95/1.00  pred_elim_cl:                           -4
% 2.95/1.00  pred_elim_cycles:                       4
% 2.95/1.00  merged_defs:                            6
% 2.95/1.00  merged_defs_ncl:                        0
% 2.95/1.00  bin_hyper_res:                          6
% 2.95/1.00  prep_cycles:                            3
% 2.95/1.00  pred_elim_time:                         0.016
% 2.95/1.00  splitting_time:                         0.
% 2.95/1.00  sem_filter_time:                        0.
% 2.95/1.00  monotx_time:                            0.
% 2.95/1.00  subtype_inf_time:                       0.
% 2.95/1.00  
% 2.95/1.00  ------ Problem properties
% 2.95/1.00  
% 2.95/1.00  clauses:                                40
% 2.95/1.00  conjectures:                            3
% 2.95/1.00  epr:                                    6
% 2.95/1.00  horn:                                   34
% 2.95/1.00  ground:                                 17
% 2.95/1.00  unary:                                  7
% 2.95/1.00  binary:                                 14
% 2.95/1.00  lits:                                   112
% 2.95/1.00  lits_eq:                                43
% 2.95/1.00  fd_pure:                                0
% 2.95/1.00  fd_pseudo:                              0
% 2.95/1.00  fd_cond:                                4
% 2.95/1.00  fd_pseudo_cond:                         0
% 2.95/1.00  ac_symbols:                             0
% 2.95/1.00  
% 2.95/1.00  ------ Propositional Solver
% 2.95/1.00  
% 2.95/1.00  prop_solver_calls:                      24
% 2.95/1.00  prop_fast_solver_calls:                 1190
% 2.95/1.00  smt_solver_calls:                       0
% 2.95/1.00  smt_fast_solver_calls:                  0
% 2.95/1.00  prop_num_of_clauses:                    1828
% 2.95/1.00  prop_preprocess_simplified:             6222
% 2.95/1.00  prop_fo_subsumed:                       31
% 2.95/1.00  prop_solver_time:                       0.
% 2.95/1.00  smt_solver_time:                        0.
% 2.95/1.00  smt_fast_solver_time:                   0.
% 2.95/1.00  prop_fast_solver_time:                  0.
% 2.95/1.00  prop_unsat_core_time:                   0.
% 2.95/1.00  
% 2.95/1.00  ------ QBF
% 2.95/1.00  
% 2.95/1.00  qbf_q_res:                              0
% 2.95/1.00  qbf_num_tautologies:                    0
% 2.95/1.00  qbf_prep_cycles:                        0
% 2.95/1.00  
% 2.95/1.00  ------ BMC1
% 2.95/1.00  
% 2.95/1.00  bmc1_current_bound:                     -1
% 2.95/1.00  bmc1_last_solved_bound:                 -1
% 2.95/1.00  bmc1_unsat_core_size:                   -1
% 2.95/1.00  bmc1_unsat_core_parents_size:           -1
% 2.95/1.00  bmc1_merge_next_fun:                    0
% 2.95/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.95/1.00  
% 2.95/1.00  ------ Instantiation
% 2.95/1.00  
% 2.95/1.00  inst_num_of_clauses:                    528
% 2.95/1.00  inst_num_in_passive:                    121
% 2.95/1.00  inst_num_in_active:                     345
% 2.95/1.00  inst_num_in_unprocessed:                62
% 2.95/1.00  inst_num_of_loops:                      376
% 2.95/1.00  inst_num_of_learning_restarts:          0
% 2.95/1.00  inst_num_moves_active_passive:          27
% 2.95/1.00  inst_lit_activity:                      0
% 2.95/1.00  inst_lit_activity_moves:                0
% 2.95/1.00  inst_num_tautologies:                   0
% 2.95/1.00  inst_num_prop_implied:                  0
% 2.95/1.00  inst_num_existing_simplified:           0
% 2.95/1.00  inst_num_eq_res_simplified:             0
% 2.95/1.00  inst_num_child_elim:                    0
% 2.95/1.00  inst_num_of_dismatching_blockings:      211
% 2.95/1.00  inst_num_of_non_proper_insts:           753
% 2.95/1.00  inst_num_of_duplicates:                 0
% 2.95/1.00  inst_inst_num_from_inst_to_res:         0
% 2.95/1.00  inst_dismatching_checking_time:         0.
% 2.95/1.00  
% 2.95/1.00  ------ Resolution
% 2.95/1.00  
% 2.95/1.00  res_num_of_clauses:                     0
% 2.95/1.00  res_num_in_passive:                     0
% 2.95/1.00  res_num_in_active:                      0
% 2.95/1.00  res_num_of_loops:                       152
% 2.95/1.00  res_forward_subset_subsumed:            20
% 2.95/1.00  res_backward_subset_subsumed:           6
% 2.95/1.00  res_forward_subsumed:                   0
% 2.95/1.00  res_backward_subsumed:                  0
% 2.95/1.00  res_forward_subsumption_resolution:     6
% 2.95/1.00  res_backward_subsumption_resolution:    1
% 2.95/1.00  res_clause_to_clause_subsumption:       231
% 2.95/1.00  res_orphan_elimination:                 0
% 2.95/1.00  res_tautology_del:                      125
% 2.95/1.00  res_num_eq_res_simplified:              0
% 2.95/1.00  res_num_sel_changes:                    0
% 2.95/1.00  res_moves_from_active_to_pass:          0
% 2.95/1.00  
% 2.95/1.00  ------ Superposition
% 2.95/1.00  
% 2.95/1.00  sup_time_total:                         0.
% 2.95/1.00  sup_time_generating:                    0.
% 2.95/1.00  sup_time_sim_full:                      0.
% 2.95/1.00  sup_time_sim_immed:                     0.
% 2.95/1.00  
% 2.95/1.00  sup_num_of_clauses:                     83
% 2.95/1.00  sup_num_in_active:                      41
% 2.95/1.00  sup_num_in_passive:                     42
% 2.95/1.00  sup_num_of_loops:                       74
% 2.95/1.00  sup_fw_superposition:                   40
% 2.95/1.00  sup_bw_superposition:                   41
% 2.95/1.00  sup_immediate_simplified:               36
% 2.95/1.00  sup_given_eliminated:                   0
% 2.95/1.00  comparisons_done:                       0
% 2.95/1.00  comparisons_avoided:                    5
% 2.95/1.00  
% 2.95/1.00  ------ Simplifications
% 2.95/1.00  
% 2.95/1.00  
% 2.95/1.00  sim_fw_subset_subsumed:                 8
% 2.95/1.00  sim_bw_subset_subsumed:                 7
% 2.95/1.00  sim_fw_subsumed:                        3
% 2.95/1.00  sim_bw_subsumed:                        1
% 2.95/1.00  sim_fw_subsumption_res:                 1
% 2.95/1.00  sim_bw_subsumption_res:                 0
% 2.95/1.00  sim_tautology_del:                      4
% 2.95/1.00  sim_eq_tautology_del:                   9
% 2.95/1.00  sim_eq_res_simp:                        4
% 2.95/1.00  sim_fw_demodulated:                     0
% 2.95/1.00  sim_bw_demodulated:                     30
% 2.95/1.00  sim_light_normalised:                   27
% 2.95/1.00  sim_joinable_taut:                      0
% 2.95/1.00  sim_joinable_simp:                      0
% 2.95/1.00  sim_ac_normalised:                      0
% 2.95/1.00  sim_smt_subsumption:                    0
% 2.95/1.00  
%------------------------------------------------------------------------------
