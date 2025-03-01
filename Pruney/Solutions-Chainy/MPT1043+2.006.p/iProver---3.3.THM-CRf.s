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
% DateTime   : Thu Dec  3 12:08:48 EST 2020

% Result     : Theorem 7.03s
% Output     : CNFRefutation 7.03s
% Verified   : 
% Statistics : Number of formulae       :  156 (1424 expanded)
%              Number of clauses        :   91 ( 489 expanded)
%              Number of leaves         :   20 ( 281 expanded)
%              Depth                    :   25
%              Number of atoms          :  455 (4833 expanded)
%              Number of equality atoms :  183 ( 925 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    9 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f42])).

fof(f44,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f43,f44])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f10,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f75,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ! [X3] :
          ( r2_hidden(X3,k5_partfun1(X0,X1,X2))
         => ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
          | ~ r2_hidden(X3,k5_partfun1(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
          | ~ r2_hidden(X3,k5_partfun1(X0,X1,X2)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f34])).

fof(f85,plain,(
    ! [X2,X0,X3,X1] :
      ( v1_funct_2(X3,X0,X1)
      | ~ r2_hidden(X3,k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => r2_hidden(X1,k1_funct_2(X0,X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,k1_funct_2(X0,X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,k1_funct_2(X0,X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f83,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,k1_funct_2(X0,X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f84,plain,(
    ! [X2,X0,X3,X1] :
      ( v1_funct_1(X3)
      | ~ r2_hidden(X3,k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f86,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r2_hidden(X3,k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f18,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_1(X2) )
       => r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f36,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1))
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f37,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1))
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f36])).

fof(f54,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
   => ( ~ r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4))
      & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
      & v1_funct_1(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f55,plain,
    ( ~ r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4))
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    & v1_funct_1(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f37,f54])).

fof(f87,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f55])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f50])).

fof(f67,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f68,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f51])).

fof(f93,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f68])).

fof(f3,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f46,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f21,f46])).

fof(f62,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f47])).

fof(f88,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f55])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k1_xboole_0 = X1
         => k1_xboole_0 = X0 )
       => r2_hidden(X2,k1_funct_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
      | ( k1_xboole_0 != X0
        & k1_xboole_0 = X1 )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
      | ( k1_xboole_0 != X0
        & k1_xboole_0 = X1 )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f30])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f89,plain,(
    ~ r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f55])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f38])).

fof(f40,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f39,f40])).

fof(f56,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK1(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f76,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f53])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f48])).

fof(f65,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f69,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f51])).

fof(f92,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f69])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2)
        & v1_xboole_0(X1)
        & ~ v1_xboole_0(X0) )
     => v1_xboole_0(k5_partfun1(X0,X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( v1_xboole_0(k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v1_xboole_0(k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f80,plain,(
    ! [X2,X0,X1] :
      ( v1_xboole_0(k5_partfun1(X0,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1416,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_19,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1405,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_29,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X0,k5_partfun1(X1,X2,X3))
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | r2_hidden(X0,k1_funct_2(X1,X1))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_444,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X4)))
    | ~ r2_hidden(X5,k5_partfun1(X1,X2,X0))
    | r2_hidden(X3,k1_funct_2(X4,X4))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | X4 != X2
    | X4 != X1
    | X3 != X5 ),
    inference(resolution_lifted,[status(thm)],[c_29,c_27])).

cnf(c_445,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ r2_hidden(X2,k5_partfun1(X1,X1,X0))
    | r2_hidden(X2,k1_funct_2(X1,X1))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2) ),
    inference(unflattening,[status(thm)],[c_444])).

cnf(c_30,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
    | ~ v1_funct_1(X0)
    | v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_28,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_459,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ r2_hidden(X2,k5_partfun1(X1,X1,X0))
    | r2_hidden(X2,k1_funct_2(X1,X1))
    | ~ v1_funct_1(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_445,c_30,c_28])).

cnf(c_1391,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
    | r2_hidden(X2,k5_partfun1(X1,X1,X0)) != iProver_top
    | r2_hidden(X2,k1_funct_2(X1,X1)) = iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_459])).

cnf(c_2425,plain,
    ( r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top
    | r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1405,c_1391])).

cnf(c_33,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_34,plain,
    ( v1_funct_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_13,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_74,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_12,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_75,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_5,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_87,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_742,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_1654,plain,
    ( v1_funct_1(X0)
    | ~ v1_funct_1(sK5)
    | X0 != sK5 ),
    inference(instantiation,[status(thm)],[c_742])).

cnf(c_1655,plain,
    ( X0 != sK5
    | v1_funct_1(X0) = iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1654])).

cnf(c_1657,plain,
    ( k1_xboole_0 != sK5
    | v1_funct_1(sK5) != iProver_top
    | v1_funct_1(k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1655])).

cnf(c_734,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1765,plain,
    ( X0 != X1
    | X0 = sK5
    | sK5 != X1 ),
    inference(instantiation,[status(thm)],[c_734])).

cnf(c_1766,plain,
    ( sK5 != k1_xboole_0
    | k1_xboole_0 = sK5
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1765])).

cnf(c_6,plain,
    ( r2_hidden(sK2(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1413,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK2(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_32,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1396,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_26,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r2_hidden(X0,k1_funct_2(X1,X2))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_397,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
    | r2_hidden(X3,k1_funct_2(X1,X2))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_xboole_0 = X2 ),
    inference(resolution,[status(thm)],[c_29,c_26])).

cnf(c_401,plain,
    ( ~ v1_funct_1(X0)
    | r2_hidden(X3,k1_funct_2(X1,X2))
    | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_397,c_30,c_28])).

cnf(c_402,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
    | r2_hidden(X3,k1_funct_2(X1,X2))
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(renaming,[status(thm)],[c_401])).

cnf(c_1393,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) != iProver_top
    | r2_hidden(X3,k5_partfun1(X2,X0,X1)) != iProver_top
    | r2_hidden(X3,k1_funct_2(X2,X0)) = iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_402])).

cnf(c_3090,plain,
    ( sK4 = k1_xboole_0
    | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
    | r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1396,c_1393])).

cnf(c_3625,plain,
    ( r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top
    | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
    | sK4 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3090,c_34])).

cnf(c_3626,plain,
    ( sK4 = k1_xboole_0
    | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
    | r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top ),
    inference(renaming,[status(thm)],[c_3625])).

cnf(c_3636,plain,
    ( k5_partfun1(sK3,sK4,sK5) = k1_xboole_0
    | sK4 = k1_xboole_0
    | r2_hidden(sK2(k5_partfun1(sK3,sK4,sK5)),k1_funct_2(sK3,sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1413,c_3626])).

cnf(c_31,negated_conjecture,
    ( ~ r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1662,plain,
    ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4))
    | r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)),k5_partfun1(sK3,sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1746,plain,
    ( ~ r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)),k5_partfun1(sK3,sK4,sK5))
    | ~ v1_xboole_0(k5_partfun1(sK3,sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_735,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_1926,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k5_partfun1(sK3,sK4,sK5))
    | k5_partfun1(sK3,sK4,sK5) != X0 ),
    inference(instantiation,[status(thm)],[c_735])).

cnf(c_1938,plain,
    ( v1_xboole_0(k5_partfun1(sK3,sK4,sK5))
    | ~ v1_xboole_0(k1_xboole_0)
    | k5_partfun1(sK3,sK4,sK5) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1926])).

cnf(c_4073,plain,
    ( sK4 = k1_xboole_0
    | r2_hidden(sK2(k5_partfun1(sK3,sK4,sK5)),k1_funct_2(sK3,sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3636,c_31,c_5,c_1662,c_1746,c_1938])).

cnf(c_1418,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_4079,plain,
    ( sK4 = k1_xboole_0
    | v1_xboole_0(k1_funct_2(sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4073,c_1418])).

cnf(c_36,plain,
    ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_3635,plain,
    ( sK4 = k1_xboole_0
    | r1_tarski(k5_partfun1(sK3,sK4,sK5),X0) = iProver_top
    | r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),X0),k1_funct_2(sK3,sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1416,c_3626])).

cnf(c_2,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1417,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4194,plain,
    ( sK4 = k1_xboole_0
    | r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3635,c_1417])).

cnf(c_4217,plain,
    ( sK4 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4079,c_36,c_4194])).

cnf(c_2556,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1416,c_1418])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1403,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2176,plain,
    ( r1_tarski(sK5,k2_zfmisc_1(sK3,sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1396,c_1403])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1412,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2966,plain,
    ( k2_zfmisc_1(sK3,sK4) = sK5
    | r1_tarski(k2_zfmisc_1(sK3,sK4),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_2176,c_1412])).

cnf(c_2987,plain,
    ( k2_zfmisc_1(sK3,sK4) = sK5
    | v1_xboole_0(k2_zfmisc_1(sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2556,c_2966])).

cnf(c_4223,plain,
    ( k2_zfmisc_1(sK3,k1_xboole_0) = sK5
    | v1_xboole_0(k2_zfmisc_1(sK3,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4217,c_2987])).

cnf(c_11,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_4250,plain,
    ( sK5 = k1_xboole_0
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4223,c_11])).

cnf(c_8423,plain,
    ( r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top
    | r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2425,c_34,c_74,c_75,c_87,c_1657,c_1766,c_4250])).

cnf(c_8424,plain,
    ( r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top
    | r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top ),
    inference(renaming,[status(thm)],[c_8423])).

cnf(c_8432,plain,
    ( r1_tarski(k5_partfun1(X0,X0,k1_xboole_0),X1) = iProver_top
    | r2_hidden(sK1(k5_partfun1(X0,X0,k1_xboole_0),X1),k1_funct_2(X0,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1416,c_8424])).

cnf(c_37099,plain,
    ( r1_tarski(k5_partfun1(X0,X0,k1_xboole_0),k1_funct_2(X0,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_8432,c_1417])).

cnf(c_37129,plain,
    ( r1_tarski(k5_partfun1(k1_xboole_0,k1_xboole_0,k1_xboole_0),k1_funct_2(k1_xboole_0,k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_37099])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | v1_xboole_0(k5_partfun1(X1,X2,X0)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1400,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_xboole_0(X2) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(k5_partfun1(X1,X2,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_4880,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_11,c_1400])).

cnf(c_5806,plain,
    ( v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4880,c_87])).

cnf(c_5807,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top ),
    inference(renaming,[status(thm)],[c_5806])).

cnf(c_1397,plain,
    ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_4228,plain,
    ( r1_tarski(k5_partfun1(sK3,k1_xboole_0,sK5),k1_funct_2(sK3,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4217,c_1397])).

cnf(c_4559,plain,
    ( sK5 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4250,c_87])).

cnf(c_4600,plain,
    ( r1_tarski(k5_partfun1(sK3,k1_xboole_0,k1_xboole_0),k1_funct_2(sK3,k1_xboole_0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4228,c_4559])).

cnf(c_4603,plain,
    ( v1_xboole_0(k5_partfun1(sK3,k1_xboole_0,k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2556,c_4600])).

cnf(c_5816,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_5807,c_4603])).

cnf(c_58,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_60,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_58])).

cnf(c_6046,plain,
    ( v1_xboole_0(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5816,c_34,c_60,c_74,c_75,c_87,c_1657,c_1766,c_4250])).

cnf(c_2008,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1413,c_1418])).

cnf(c_6051,plain,
    ( sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_6046,c_2008])).

cnf(c_6156,plain,
    ( r1_tarski(k5_partfun1(k1_xboole_0,k1_xboole_0,k1_xboole_0),k1_funct_2(k1_xboole_0,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6051,c_4600])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_37129,c_6156])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:13:51 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 7.03/1.49  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.03/1.49  
% 7.03/1.49  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.03/1.49  
% 7.03/1.49  ------  iProver source info
% 7.03/1.49  
% 7.03/1.49  git: date: 2020-06-30 10:37:57 +0100
% 7.03/1.49  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.03/1.49  git: non_committed_changes: false
% 7.03/1.49  git: last_make_outside_of_git: false
% 7.03/1.49  
% 7.03/1.49  ------ 
% 7.03/1.49  
% 7.03/1.49  ------ Input Options
% 7.03/1.49  
% 7.03/1.49  --out_options                           all
% 7.03/1.49  --tptp_safe_out                         true
% 7.03/1.49  --problem_path                          ""
% 7.03/1.49  --include_path                          ""
% 7.03/1.49  --clausifier                            res/vclausify_rel
% 7.03/1.49  --clausifier_options                    --mode clausify
% 7.03/1.49  --stdin                                 false
% 7.03/1.49  --stats_out                             all
% 7.03/1.49  
% 7.03/1.49  ------ General Options
% 7.03/1.49  
% 7.03/1.49  --fof                                   false
% 7.03/1.49  --time_out_real                         305.
% 7.03/1.49  --time_out_virtual                      -1.
% 7.03/1.49  --symbol_type_check                     false
% 7.03/1.49  --clausify_out                          false
% 7.03/1.49  --sig_cnt_out                           false
% 7.03/1.49  --trig_cnt_out                          false
% 7.03/1.49  --trig_cnt_out_tolerance                1.
% 7.03/1.49  --trig_cnt_out_sk_spl                   false
% 7.03/1.49  --abstr_cl_out                          false
% 7.03/1.49  
% 7.03/1.49  ------ Global Options
% 7.03/1.49  
% 7.03/1.49  --schedule                              default
% 7.03/1.49  --add_important_lit                     false
% 7.03/1.49  --prop_solver_per_cl                    1000
% 7.03/1.49  --min_unsat_core                        false
% 7.03/1.49  --soft_assumptions                      false
% 7.03/1.49  --soft_lemma_size                       3
% 7.03/1.49  --prop_impl_unit_size                   0
% 7.03/1.49  --prop_impl_unit                        []
% 7.03/1.49  --share_sel_clauses                     true
% 7.03/1.49  --reset_solvers                         false
% 7.03/1.49  --bc_imp_inh                            [conj_cone]
% 7.03/1.49  --conj_cone_tolerance                   3.
% 7.03/1.49  --extra_neg_conj                        none
% 7.03/1.49  --large_theory_mode                     true
% 7.03/1.49  --prolific_symb_bound                   200
% 7.03/1.49  --lt_threshold                          2000
% 7.03/1.49  --clause_weak_htbl                      true
% 7.03/1.49  --gc_record_bc_elim                     false
% 7.03/1.49  
% 7.03/1.49  ------ Preprocessing Options
% 7.03/1.49  
% 7.03/1.49  --preprocessing_flag                    true
% 7.03/1.49  --time_out_prep_mult                    0.1
% 7.03/1.49  --splitting_mode                        input
% 7.03/1.49  --splitting_grd                         true
% 7.03/1.49  --splitting_cvd                         false
% 7.03/1.49  --splitting_cvd_svl                     false
% 7.03/1.49  --splitting_nvd                         32
% 7.03/1.49  --sub_typing                            true
% 7.03/1.49  --prep_gs_sim                           true
% 7.03/1.49  --prep_unflatten                        true
% 7.03/1.49  --prep_res_sim                          true
% 7.03/1.49  --prep_upred                            true
% 7.03/1.49  --prep_sem_filter                       exhaustive
% 7.03/1.49  --prep_sem_filter_out                   false
% 7.03/1.49  --pred_elim                             true
% 7.03/1.49  --res_sim_input                         true
% 7.03/1.49  --eq_ax_congr_red                       true
% 7.03/1.49  --pure_diseq_elim                       true
% 7.03/1.49  --brand_transform                       false
% 7.03/1.49  --non_eq_to_eq                          false
% 7.03/1.49  --prep_def_merge                        true
% 7.03/1.49  --prep_def_merge_prop_impl              false
% 7.03/1.49  --prep_def_merge_mbd                    true
% 7.03/1.49  --prep_def_merge_tr_red                 false
% 7.03/1.49  --prep_def_merge_tr_cl                  false
% 7.03/1.49  --smt_preprocessing                     true
% 7.03/1.49  --smt_ac_axioms                         fast
% 7.03/1.49  --preprocessed_out                      false
% 7.03/1.49  --preprocessed_stats                    false
% 7.03/1.49  
% 7.03/1.49  ------ Abstraction refinement Options
% 7.03/1.49  
% 7.03/1.49  --abstr_ref                             []
% 7.03/1.49  --abstr_ref_prep                        false
% 7.03/1.49  --abstr_ref_until_sat                   false
% 7.03/1.49  --abstr_ref_sig_restrict                funpre
% 7.03/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.03/1.49  --abstr_ref_under                       []
% 7.03/1.49  
% 7.03/1.49  ------ SAT Options
% 7.03/1.49  
% 7.03/1.49  --sat_mode                              false
% 7.03/1.49  --sat_fm_restart_options                ""
% 7.03/1.49  --sat_gr_def                            false
% 7.03/1.49  --sat_epr_types                         true
% 7.03/1.49  --sat_non_cyclic_types                  false
% 7.03/1.49  --sat_finite_models                     false
% 7.03/1.49  --sat_fm_lemmas                         false
% 7.03/1.49  --sat_fm_prep                           false
% 7.03/1.49  --sat_fm_uc_incr                        true
% 7.03/1.49  --sat_out_model                         small
% 7.03/1.49  --sat_out_clauses                       false
% 7.03/1.49  
% 7.03/1.49  ------ QBF Options
% 7.03/1.49  
% 7.03/1.49  --qbf_mode                              false
% 7.03/1.49  --qbf_elim_univ                         false
% 7.03/1.49  --qbf_dom_inst                          none
% 7.03/1.49  --qbf_dom_pre_inst                      false
% 7.03/1.49  --qbf_sk_in                             false
% 7.03/1.49  --qbf_pred_elim                         true
% 7.03/1.49  --qbf_split                             512
% 7.03/1.49  
% 7.03/1.49  ------ BMC1 Options
% 7.03/1.49  
% 7.03/1.49  --bmc1_incremental                      false
% 7.03/1.49  --bmc1_axioms                           reachable_all
% 7.03/1.49  --bmc1_min_bound                        0
% 7.03/1.49  --bmc1_max_bound                        -1
% 7.03/1.49  --bmc1_max_bound_default                -1
% 7.03/1.49  --bmc1_symbol_reachability              true
% 7.03/1.49  --bmc1_property_lemmas                  false
% 7.03/1.49  --bmc1_k_induction                      false
% 7.03/1.49  --bmc1_non_equiv_states                 false
% 7.03/1.49  --bmc1_deadlock                         false
% 7.03/1.49  --bmc1_ucm                              false
% 7.03/1.49  --bmc1_add_unsat_core                   none
% 7.03/1.49  --bmc1_unsat_core_children              false
% 7.03/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.03/1.49  --bmc1_out_stat                         full
% 7.03/1.49  --bmc1_ground_init                      false
% 7.03/1.49  --bmc1_pre_inst_next_state              false
% 7.03/1.49  --bmc1_pre_inst_state                   false
% 7.03/1.49  --bmc1_pre_inst_reach_state             false
% 7.03/1.49  --bmc1_out_unsat_core                   false
% 7.03/1.49  --bmc1_aig_witness_out                  false
% 7.03/1.49  --bmc1_verbose                          false
% 7.03/1.49  --bmc1_dump_clauses_tptp                false
% 7.03/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.03/1.49  --bmc1_dump_file                        -
% 7.03/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.03/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.03/1.49  --bmc1_ucm_extend_mode                  1
% 7.03/1.49  --bmc1_ucm_init_mode                    2
% 7.03/1.49  --bmc1_ucm_cone_mode                    none
% 7.03/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.03/1.49  --bmc1_ucm_relax_model                  4
% 7.03/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.03/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.03/1.49  --bmc1_ucm_layered_model                none
% 7.03/1.49  --bmc1_ucm_max_lemma_size               10
% 7.03/1.49  
% 7.03/1.49  ------ AIG Options
% 7.03/1.49  
% 7.03/1.49  --aig_mode                              false
% 7.03/1.49  
% 7.03/1.49  ------ Instantiation Options
% 7.03/1.49  
% 7.03/1.49  --instantiation_flag                    true
% 7.03/1.49  --inst_sos_flag                         false
% 7.03/1.49  --inst_sos_phase                        true
% 7.03/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.03/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.03/1.49  --inst_lit_sel_side                     num_symb
% 7.03/1.49  --inst_solver_per_active                1400
% 7.03/1.49  --inst_solver_calls_frac                1.
% 7.03/1.49  --inst_passive_queue_type               priority_queues
% 7.03/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.03/1.49  --inst_passive_queues_freq              [25;2]
% 7.03/1.49  --inst_dismatching                      true
% 7.03/1.49  --inst_eager_unprocessed_to_passive     true
% 7.03/1.49  --inst_prop_sim_given                   true
% 7.03/1.49  --inst_prop_sim_new                     false
% 7.03/1.49  --inst_subs_new                         false
% 7.03/1.49  --inst_eq_res_simp                      false
% 7.03/1.49  --inst_subs_given                       false
% 7.03/1.49  --inst_orphan_elimination               true
% 7.03/1.49  --inst_learning_loop_flag               true
% 7.03/1.49  --inst_learning_start                   3000
% 7.03/1.49  --inst_learning_factor                  2
% 7.03/1.49  --inst_start_prop_sim_after_learn       3
% 7.03/1.49  --inst_sel_renew                        solver
% 7.03/1.49  --inst_lit_activity_flag                true
% 7.03/1.49  --inst_restr_to_given                   false
% 7.03/1.49  --inst_activity_threshold               500
% 7.03/1.49  --inst_out_proof                        true
% 7.03/1.49  
% 7.03/1.49  ------ Resolution Options
% 7.03/1.49  
% 7.03/1.49  --resolution_flag                       true
% 7.03/1.49  --res_lit_sel                           adaptive
% 7.03/1.49  --res_lit_sel_side                      none
% 7.03/1.49  --res_ordering                          kbo
% 7.03/1.49  --res_to_prop_solver                    active
% 7.03/1.49  --res_prop_simpl_new                    false
% 7.03/1.49  --res_prop_simpl_given                  true
% 7.03/1.49  --res_passive_queue_type                priority_queues
% 7.03/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.03/1.49  --res_passive_queues_freq               [15;5]
% 7.03/1.49  --res_forward_subs                      full
% 7.03/1.49  --res_backward_subs                     full
% 7.03/1.49  --res_forward_subs_resolution           true
% 7.03/1.49  --res_backward_subs_resolution          true
% 7.03/1.49  --res_orphan_elimination                true
% 7.03/1.49  --res_time_limit                        2.
% 7.03/1.49  --res_out_proof                         true
% 7.03/1.49  
% 7.03/1.49  ------ Superposition Options
% 7.03/1.49  
% 7.03/1.49  --superposition_flag                    true
% 7.03/1.49  --sup_passive_queue_type                priority_queues
% 7.03/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.03/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.03/1.49  --demod_completeness_check              fast
% 7.03/1.49  --demod_use_ground                      true
% 7.03/1.49  --sup_to_prop_solver                    passive
% 7.03/1.49  --sup_prop_simpl_new                    true
% 7.03/1.49  --sup_prop_simpl_given                  true
% 7.03/1.49  --sup_fun_splitting                     false
% 7.03/1.49  --sup_smt_interval                      50000
% 7.03/1.49  
% 7.03/1.49  ------ Superposition Simplification Setup
% 7.03/1.49  
% 7.03/1.49  --sup_indices_passive                   []
% 7.03/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.03/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_full_bw                           [BwDemod]
% 7.03/1.49  --sup_immed_triv                        [TrivRules]
% 7.03/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.03/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_immed_bw_main                     []
% 7.03/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.03/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.03/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.03/1.49  
% 7.03/1.49  ------ Combination Options
% 7.03/1.49  
% 7.03/1.49  --comb_res_mult                         3
% 7.03/1.49  --comb_sup_mult                         2
% 7.03/1.49  --comb_inst_mult                        10
% 7.03/1.49  
% 7.03/1.49  ------ Debug Options
% 7.03/1.49  
% 7.03/1.49  --dbg_backtrace                         false
% 7.03/1.49  --dbg_dump_prop_clauses                 false
% 7.03/1.49  --dbg_dump_prop_clauses_file            -
% 7.03/1.49  --dbg_out_stat                          false
% 7.03/1.49  ------ Parsing...
% 7.03/1.49  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.03/1.49  
% 7.03/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 7.03/1.49  
% 7.03/1.49  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.03/1.49  
% 7.03/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.03/1.49  ------ Proving...
% 7.03/1.49  ------ Problem Properties 
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  clauses                                 32
% 7.03/1.49  conjectures                             3
% 7.03/1.49  EPR                                     11
% 7.03/1.49  Horn                                    25
% 7.03/1.49  unary                                   9
% 7.03/1.49  binary                                  8
% 7.03/1.49  lits                                    78
% 7.03/1.49  lits eq                                 8
% 7.03/1.49  fd_pure                                 0
% 7.03/1.49  fd_pseudo                               0
% 7.03/1.49  fd_cond                                 3
% 7.03/1.49  fd_pseudo_cond                          1
% 7.03/1.49  AC symbols                              0
% 7.03/1.49  
% 7.03/1.49  ------ Schedule dynamic 5 is on 
% 7.03/1.49  
% 7.03/1.49  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  ------ 
% 7.03/1.49  Current options:
% 7.03/1.49  ------ 
% 7.03/1.49  
% 7.03/1.49  ------ Input Options
% 7.03/1.49  
% 7.03/1.49  --out_options                           all
% 7.03/1.49  --tptp_safe_out                         true
% 7.03/1.49  --problem_path                          ""
% 7.03/1.49  --include_path                          ""
% 7.03/1.49  --clausifier                            res/vclausify_rel
% 7.03/1.49  --clausifier_options                    --mode clausify
% 7.03/1.49  --stdin                                 false
% 7.03/1.49  --stats_out                             all
% 7.03/1.49  
% 7.03/1.49  ------ General Options
% 7.03/1.49  
% 7.03/1.49  --fof                                   false
% 7.03/1.49  --time_out_real                         305.
% 7.03/1.49  --time_out_virtual                      -1.
% 7.03/1.49  --symbol_type_check                     false
% 7.03/1.49  --clausify_out                          false
% 7.03/1.49  --sig_cnt_out                           false
% 7.03/1.49  --trig_cnt_out                          false
% 7.03/1.49  --trig_cnt_out_tolerance                1.
% 7.03/1.49  --trig_cnt_out_sk_spl                   false
% 7.03/1.49  --abstr_cl_out                          false
% 7.03/1.49  
% 7.03/1.49  ------ Global Options
% 7.03/1.49  
% 7.03/1.49  --schedule                              default
% 7.03/1.49  --add_important_lit                     false
% 7.03/1.49  --prop_solver_per_cl                    1000
% 7.03/1.49  --min_unsat_core                        false
% 7.03/1.49  --soft_assumptions                      false
% 7.03/1.49  --soft_lemma_size                       3
% 7.03/1.49  --prop_impl_unit_size                   0
% 7.03/1.49  --prop_impl_unit                        []
% 7.03/1.49  --share_sel_clauses                     true
% 7.03/1.49  --reset_solvers                         false
% 7.03/1.49  --bc_imp_inh                            [conj_cone]
% 7.03/1.49  --conj_cone_tolerance                   3.
% 7.03/1.49  --extra_neg_conj                        none
% 7.03/1.49  --large_theory_mode                     true
% 7.03/1.49  --prolific_symb_bound                   200
% 7.03/1.49  --lt_threshold                          2000
% 7.03/1.49  --clause_weak_htbl                      true
% 7.03/1.49  --gc_record_bc_elim                     false
% 7.03/1.49  
% 7.03/1.49  ------ Preprocessing Options
% 7.03/1.49  
% 7.03/1.49  --preprocessing_flag                    true
% 7.03/1.49  --time_out_prep_mult                    0.1
% 7.03/1.49  --splitting_mode                        input
% 7.03/1.49  --splitting_grd                         true
% 7.03/1.49  --splitting_cvd                         false
% 7.03/1.49  --splitting_cvd_svl                     false
% 7.03/1.49  --splitting_nvd                         32
% 7.03/1.49  --sub_typing                            true
% 7.03/1.49  --prep_gs_sim                           true
% 7.03/1.49  --prep_unflatten                        true
% 7.03/1.49  --prep_res_sim                          true
% 7.03/1.49  --prep_upred                            true
% 7.03/1.49  --prep_sem_filter                       exhaustive
% 7.03/1.49  --prep_sem_filter_out                   false
% 7.03/1.49  --pred_elim                             true
% 7.03/1.49  --res_sim_input                         true
% 7.03/1.49  --eq_ax_congr_red                       true
% 7.03/1.49  --pure_diseq_elim                       true
% 7.03/1.49  --brand_transform                       false
% 7.03/1.49  --non_eq_to_eq                          false
% 7.03/1.49  --prep_def_merge                        true
% 7.03/1.49  --prep_def_merge_prop_impl              false
% 7.03/1.49  --prep_def_merge_mbd                    true
% 7.03/1.49  --prep_def_merge_tr_red                 false
% 7.03/1.49  --prep_def_merge_tr_cl                  false
% 7.03/1.49  --smt_preprocessing                     true
% 7.03/1.49  --smt_ac_axioms                         fast
% 7.03/1.49  --preprocessed_out                      false
% 7.03/1.49  --preprocessed_stats                    false
% 7.03/1.49  
% 7.03/1.49  ------ Abstraction refinement Options
% 7.03/1.49  
% 7.03/1.49  --abstr_ref                             []
% 7.03/1.49  --abstr_ref_prep                        false
% 7.03/1.49  --abstr_ref_until_sat                   false
% 7.03/1.49  --abstr_ref_sig_restrict                funpre
% 7.03/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.03/1.49  --abstr_ref_under                       []
% 7.03/1.49  
% 7.03/1.49  ------ SAT Options
% 7.03/1.49  
% 7.03/1.49  --sat_mode                              false
% 7.03/1.49  --sat_fm_restart_options                ""
% 7.03/1.49  --sat_gr_def                            false
% 7.03/1.49  --sat_epr_types                         true
% 7.03/1.49  --sat_non_cyclic_types                  false
% 7.03/1.49  --sat_finite_models                     false
% 7.03/1.49  --sat_fm_lemmas                         false
% 7.03/1.49  --sat_fm_prep                           false
% 7.03/1.49  --sat_fm_uc_incr                        true
% 7.03/1.49  --sat_out_model                         small
% 7.03/1.49  --sat_out_clauses                       false
% 7.03/1.49  
% 7.03/1.49  ------ QBF Options
% 7.03/1.49  
% 7.03/1.49  --qbf_mode                              false
% 7.03/1.49  --qbf_elim_univ                         false
% 7.03/1.49  --qbf_dom_inst                          none
% 7.03/1.49  --qbf_dom_pre_inst                      false
% 7.03/1.49  --qbf_sk_in                             false
% 7.03/1.49  --qbf_pred_elim                         true
% 7.03/1.49  --qbf_split                             512
% 7.03/1.49  
% 7.03/1.49  ------ BMC1 Options
% 7.03/1.49  
% 7.03/1.49  --bmc1_incremental                      false
% 7.03/1.49  --bmc1_axioms                           reachable_all
% 7.03/1.49  --bmc1_min_bound                        0
% 7.03/1.49  --bmc1_max_bound                        -1
% 7.03/1.49  --bmc1_max_bound_default                -1
% 7.03/1.49  --bmc1_symbol_reachability              true
% 7.03/1.49  --bmc1_property_lemmas                  false
% 7.03/1.49  --bmc1_k_induction                      false
% 7.03/1.49  --bmc1_non_equiv_states                 false
% 7.03/1.49  --bmc1_deadlock                         false
% 7.03/1.49  --bmc1_ucm                              false
% 7.03/1.49  --bmc1_add_unsat_core                   none
% 7.03/1.49  --bmc1_unsat_core_children              false
% 7.03/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.03/1.49  --bmc1_out_stat                         full
% 7.03/1.49  --bmc1_ground_init                      false
% 7.03/1.49  --bmc1_pre_inst_next_state              false
% 7.03/1.49  --bmc1_pre_inst_state                   false
% 7.03/1.49  --bmc1_pre_inst_reach_state             false
% 7.03/1.49  --bmc1_out_unsat_core                   false
% 7.03/1.49  --bmc1_aig_witness_out                  false
% 7.03/1.49  --bmc1_verbose                          false
% 7.03/1.49  --bmc1_dump_clauses_tptp                false
% 7.03/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.03/1.49  --bmc1_dump_file                        -
% 7.03/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.03/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.03/1.49  --bmc1_ucm_extend_mode                  1
% 7.03/1.49  --bmc1_ucm_init_mode                    2
% 7.03/1.49  --bmc1_ucm_cone_mode                    none
% 7.03/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.03/1.49  --bmc1_ucm_relax_model                  4
% 7.03/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.03/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.03/1.49  --bmc1_ucm_layered_model                none
% 7.03/1.49  --bmc1_ucm_max_lemma_size               10
% 7.03/1.49  
% 7.03/1.49  ------ AIG Options
% 7.03/1.49  
% 7.03/1.49  --aig_mode                              false
% 7.03/1.49  
% 7.03/1.49  ------ Instantiation Options
% 7.03/1.49  
% 7.03/1.49  --instantiation_flag                    true
% 7.03/1.49  --inst_sos_flag                         false
% 7.03/1.49  --inst_sos_phase                        true
% 7.03/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.03/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.03/1.49  --inst_lit_sel_side                     none
% 7.03/1.49  --inst_solver_per_active                1400
% 7.03/1.49  --inst_solver_calls_frac                1.
% 7.03/1.49  --inst_passive_queue_type               priority_queues
% 7.03/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.03/1.49  --inst_passive_queues_freq              [25;2]
% 7.03/1.49  --inst_dismatching                      true
% 7.03/1.49  --inst_eager_unprocessed_to_passive     true
% 7.03/1.49  --inst_prop_sim_given                   true
% 7.03/1.49  --inst_prop_sim_new                     false
% 7.03/1.49  --inst_subs_new                         false
% 7.03/1.49  --inst_eq_res_simp                      false
% 7.03/1.49  --inst_subs_given                       false
% 7.03/1.49  --inst_orphan_elimination               true
% 7.03/1.49  --inst_learning_loop_flag               true
% 7.03/1.49  --inst_learning_start                   3000
% 7.03/1.49  --inst_learning_factor                  2
% 7.03/1.49  --inst_start_prop_sim_after_learn       3
% 7.03/1.49  --inst_sel_renew                        solver
% 7.03/1.49  --inst_lit_activity_flag                true
% 7.03/1.49  --inst_restr_to_given                   false
% 7.03/1.49  --inst_activity_threshold               500
% 7.03/1.49  --inst_out_proof                        true
% 7.03/1.49  
% 7.03/1.49  ------ Resolution Options
% 7.03/1.49  
% 7.03/1.49  --resolution_flag                       false
% 7.03/1.49  --res_lit_sel                           adaptive
% 7.03/1.49  --res_lit_sel_side                      none
% 7.03/1.49  --res_ordering                          kbo
% 7.03/1.49  --res_to_prop_solver                    active
% 7.03/1.49  --res_prop_simpl_new                    false
% 7.03/1.49  --res_prop_simpl_given                  true
% 7.03/1.49  --res_passive_queue_type                priority_queues
% 7.03/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.03/1.49  --res_passive_queues_freq               [15;5]
% 7.03/1.49  --res_forward_subs                      full
% 7.03/1.49  --res_backward_subs                     full
% 7.03/1.49  --res_forward_subs_resolution           true
% 7.03/1.49  --res_backward_subs_resolution          true
% 7.03/1.49  --res_orphan_elimination                true
% 7.03/1.49  --res_time_limit                        2.
% 7.03/1.49  --res_out_proof                         true
% 7.03/1.49  
% 7.03/1.49  ------ Superposition Options
% 7.03/1.49  
% 7.03/1.49  --superposition_flag                    true
% 7.03/1.49  --sup_passive_queue_type                priority_queues
% 7.03/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.03/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.03/1.49  --demod_completeness_check              fast
% 7.03/1.49  --demod_use_ground                      true
% 7.03/1.49  --sup_to_prop_solver                    passive
% 7.03/1.49  --sup_prop_simpl_new                    true
% 7.03/1.49  --sup_prop_simpl_given                  true
% 7.03/1.49  --sup_fun_splitting                     false
% 7.03/1.49  --sup_smt_interval                      50000
% 7.03/1.49  
% 7.03/1.49  ------ Superposition Simplification Setup
% 7.03/1.49  
% 7.03/1.49  --sup_indices_passive                   []
% 7.03/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.03/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.03/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_full_bw                           [BwDemod]
% 7.03/1.49  --sup_immed_triv                        [TrivRules]
% 7.03/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.03/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_immed_bw_main                     []
% 7.03/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.03/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.03/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.03/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.03/1.49  
% 7.03/1.49  ------ Combination Options
% 7.03/1.49  
% 7.03/1.49  --comb_res_mult                         3
% 7.03/1.49  --comb_sup_mult                         2
% 7.03/1.49  --comb_inst_mult                        10
% 7.03/1.49  
% 7.03/1.49  ------ Debug Options
% 7.03/1.49  
% 7.03/1.49  --dbg_backtrace                         false
% 7.03/1.49  --dbg_dump_prop_clauses                 false
% 7.03/1.49  --dbg_dump_prop_clauses_file            -
% 7.03/1.49  --dbg_out_stat                          false
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  ------ Proving...
% 7.03/1.49  
% 7.03/1.49  
% 7.03/1.49  % SZS status Theorem for theBenchmark.p
% 7.03/1.49  
% 7.03/1.49  % SZS output start CNFRefutation for theBenchmark.p
% 7.03/1.49  
% 7.03/1.49  fof(f2,axiom,(
% 7.03/1.49    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f20,plain,(
% 7.03/1.49    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 7.03/1.49    inference(ennf_transformation,[],[f2])).
% 7.03/1.49  
% 7.03/1.49  fof(f42,plain,(
% 7.03/1.49    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 7.03/1.49    inference(nnf_transformation,[],[f20])).
% 7.03/1.49  
% 7.03/1.49  fof(f43,plain,(
% 7.03/1.49    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 7.03/1.49    inference(rectify,[],[f42])).
% 7.03/1.49  
% 7.03/1.49  fof(f44,plain,(
% 7.03/1.49    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 7.03/1.49    introduced(choice_axiom,[])).
% 7.03/1.49  
% 7.03/1.49  fof(f45,plain,(
% 7.03/1.49    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 7.03/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f43,f44])).
% 7.03/1.49  
% 7.03/1.49  fof(f59,plain,(
% 7.03/1.49    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f45])).
% 7.03/1.49  
% 7.03/1.49  fof(f10,axiom,(
% 7.03/1.49    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f75,plain,(
% 7.03/1.49    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 7.03/1.49    inference(cnf_transformation,[],[f10])).
% 7.03/1.49  
% 7.03/1.49  fof(f17,axiom,(
% 7.03/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : (r2_hidden(X3,k5_partfun1(X0,X1,X2)) => (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f34,plain,(
% 7.03/1.49    ! [X0,X1,X2] : (! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) | ~r2_hidden(X3,k5_partfun1(X0,X1,X2))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 7.03/1.49    inference(ennf_transformation,[],[f17])).
% 7.03/1.49  
% 7.03/1.49  fof(f35,plain,(
% 7.03/1.49    ! [X0,X1,X2] : (! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) | ~r2_hidden(X3,k5_partfun1(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 7.03/1.49    inference(flattening,[],[f34])).
% 7.03/1.49  
% 7.03/1.49  fof(f85,plain,(
% 7.03/1.49    ( ! [X2,X0,X3,X1] : (v1_funct_2(X3,X0,X1) | ~r2_hidden(X3,k5_partfun1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f35])).
% 7.03/1.49  
% 7.03/1.49  fof(f16,axiom,(
% 7.03/1.49    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => r2_hidden(X1,k1_funct_2(X0,X0)))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f32,plain,(
% 7.03/1.49    ! [X0,X1] : (r2_hidden(X1,k1_funct_2(X0,X0)) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 7.03/1.49    inference(ennf_transformation,[],[f16])).
% 7.03/1.49  
% 7.03/1.49  fof(f33,plain,(
% 7.03/1.49    ! [X0,X1] : (r2_hidden(X1,k1_funct_2(X0,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 7.03/1.49    inference(flattening,[],[f32])).
% 7.03/1.49  
% 7.03/1.49  fof(f83,plain,(
% 7.03/1.49    ( ! [X0,X1] : (r2_hidden(X1,k1_funct_2(X0,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f33])).
% 7.03/1.49  
% 7.03/1.49  fof(f84,plain,(
% 7.03/1.49    ( ! [X2,X0,X3,X1] : (v1_funct_1(X3) | ~r2_hidden(X3,k5_partfun1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f35])).
% 7.03/1.49  
% 7.03/1.49  fof(f86,plain,(
% 7.03/1.49    ( ! [X2,X0,X3,X1] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r2_hidden(X3,k5_partfun1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f35])).
% 7.03/1.49  
% 7.03/1.49  fof(f18,conjecture,(
% 7.03/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f19,negated_conjecture,(
% 7.03/1.49    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)))),
% 7.03/1.49    inference(negated_conjecture,[],[f18])).
% 7.03/1.49  
% 7.03/1.49  fof(f36,plain,(
% 7.03/1.49    ? [X0,X1,X2] : (~r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)))),
% 7.03/1.49    inference(ennf_transformation,[],[f19])).
% 7.03/1.49  
% 7.03/1.49  fof(f37,plain,(
% 7.03/1.49    ? [X0,X1,X2] : (~r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2))),
% 7.03/1.49    inference(flattening,[],[f36])).
% 7.03/1.49  
% 7.03/1.49  fof(f54,plain,(
% 7.03/1.49    ? [X0,X1,X2] : (~r1_tarski(k5_partfun1(X0,X1,X2),k1_funct_2(X0,X1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => (~r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_1(sK5))),
% 7.03/1.49    introduced(choice_axiom,[])).
% 7.03/1.49  
% 7.03/1.49  fof(f55,plain,(
% 7.03/1.49    ~r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_1(sK5)),
% 7.03/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f37,f54])).
% 7.03/1.49  
% 7.03/1.49  fof(f87,plain,(
% 7.03/1.49    v1_funct_1(sK5)),
% 7.03/1.49    inference(cnf_transformation,[],[f55])).
% 7.03/1.49  
% 7.03/1.49  fof(f7,axiom,(
% 7.03/1.49    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f50,plain,(
% 7.03/1.49    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 7.03/1.49    inference(nnf_transformation,[],[f7])).
% 7.03/1.49  
% 7.03/1.49  fof(f51,plain,(
% 7.03/1.49    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 7.03/1.49    inference(flattening,[],[f50])).
% 7.03/1.49  
% 7.03/1.49  fof(f67,plain,(
% 7.03/1.49    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f51])).
% 7.03/1.49  
% 7.03/1.49  fof(f68,plain,(
% 7.03/1.49    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 7.03/1.49    inference(cnf_transformation,[],[f51])).
% 7.03/1.49  
% 7.03/1.49  fof(f93,plain,(
% 7.03/1.49    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 7.03/1.49    inference(equality_resolution,[],[f68])).
% 7.03/1.49  
% 7.03/1.49  fof(f3,axiom,(
% 7.03/1.49    v1_xboole_0(k1_xboole_0)),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f61,plain,(
% 7.03/1.49    v1_xboole_0(k1_xboole_0)),
% 7.03/1.49    inference(cnf_transformation,[],[f3])).
% 7.03/1.49  
% 7.03/1.49  fof(f4,axiom,(
% 7.03/1.49    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f21,plain,(
% 7.03/1.49    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 7.03/1.49    inference(ennf_transformation,[],[f4])).
% 7.03/1.49  
% 7.03/1.49  fof(f46,plain,(
% 7.03/1.49    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 7.03/1.49    introduced(choice_axiom,[])).
% 7.03/1.49  
% 7.03/1.49  fof(f47,plain,(
% 7.03/1.49    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 7.03/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f21,f46])).
% 7.03/1.49  
% 7.03/1.49  fof(f62,plain,(
% 7.03/1.49    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 7.03/1.49    inference(cnf_transformation,[],[f47])).
% 7.03/1.49  
% 7.03/1.49  fof(f88,plain,(
% 7.03/1.49    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 7.03/1.49    inference(cnf_transformation,[],[f55])).
% 7.03/1.49  
% 7.03/1.49  fof(f15,axiom,(
% 7.03/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => r2_hidden(X2,k1_funct_2(X0,X1))))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f30,plain,(
% 7.03/1.49    ! [X0,X1,X2] : ((r2_hidden(X2,k1_funct_2(X0,X1)) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 7.03/1.49    inference(ennf_transformation,[],[f15])).
% 7.03/1.49  
% 7.03/1.49  fof(f31,plain,(
% 7.03/1.49    ! [X0,X1,X2] : (r2_hidden(X2,k1_funct_2(X0,X1)) | (k1_xboole_0 != X0 & k1_xboole_0 = X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 7.03/1.49    inference(flattening,[],[f30])).
% 7.03/1.49  
% 7.03/1.49  fof(f81,plain,(
% 7.03/1.49    ( ! [X2,X0,X1] : (r2_hidden(X2,k1_funct_2(X0,X1)) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f31])).
% 7.03/1.49  
% 7.03/1.49  fof(f89,plain,(
% 7.03/1.49    ~r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4))),
% 7.03/1.49    inference(cnf_transformation,[],[f55])).
% 7.03/1.49  
% 7.03/1.49  fof(f1,axiom,(
% 7.03/1.49    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f38,plain,(
% 7.03/1.49    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 7.03/1.49    inference(nnf_transformation,[],[f1])).
% 7.03/1.49  
% 7.03/1.49  fof(f39,plain,(
% 7.03/1.49    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 7.03/1.49    inference(rectify,[],[f38])).
% 7.03/1.49  
% 7.03/1.49  fof(f40,plain,(
% 7.03/1.49    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 7.03/1.49    introduced(choice_axiom,[])).
% 7.03/1.49  
% 7.03/1.49  fof(f41,plain,(
% 7.03/1.49    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 7.03/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f39,f40])).
% 7.03/1.49  
% 7.03/1.49  fof(f56,plain,(
% 7.03/1.49    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f41])).
% 7.03/1.49  
% 7.03/1.49  fof(f60,plain,(
% 7.03/1.49    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK1(X0,X1),X1)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f45])).
% 7.03/1.49  
% 7.03/1.49  fof(f11,axiom,(
% 7.03/1.49    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f53,plain,(
% 7.03/1.49    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 7.03/1.49    inference(nnf_transformation,[],[f11])).
% 7.03/1.49  
% 7.03/1.49  fof(f76,plain,(
% 7.03/1.49    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 7.03/1.49    inference(cnf_transformation,[],[f53])).
% 7.03/1.49  
% 7.03/1.49  fof(f5,axiom,(
% 7.03/1.49    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f48,plain,(
% 7.03/1.49    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.03/1.49    inference(nnf_transformation,[],[f5])).
% 7.03/1.49  
% 7.03/1.49  fof(f49,plain,(
% 7.03/1.49    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.03/1.49    inference(flattening,[],[f48])).
% 7.03/1.49  
% 7.03/1.49  fof(f65,plain,(
% 7.03/1.49    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 7.03/1.49    inference(cnf_transformation,[],[f49])).
% 7.03/1.49  
% 7.03/1.49  fof(f69,plain,(
% 7.03/1.49    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 7.03/1.49    inference(cnf_transformation,[],[f51])).
% 7.03/1.49  
% 7.03/1.49  fof(f92,plain,(
% 7.03/1.49    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 7.03/1.49    inference(equality_resolution,[],[f69])).
% 7.03/1.49  
% 7.03/1.49  fof(f14,axiom,(
% 7.03/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2) & v1_xboole_0(X1) & ~v1_xboole_0(X0)) => v1_xboole_0(k5_partfun1(X0,X1,X2)))),
% 7.03/1.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.03/1.49  
% 7.03/1.49  fof(f28,plain,(
% 7.03/1.49    ! [X0,X1,X2] : (v1_xboole_0(k5_partfun1(X0,X1,X2)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2) | ~v1_xboole_0(X1) | v1_xboole_0(X0)))),
% 7.03/1.50    inference(ennf_transformation,[],[f14])).
% 7.03/1.50  
% 7.03/1.50  fof(f29,plain,(
% 7.03/1.50    ! [X0,X1,X2] : (v1_xboole_0(k5_partfun1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2) | ~v1_xboole_0(X1) | v1_xboole_0(X0))),
% 7.03/1.50    inference(flattening,[],[f28])).
% 7.03/1.50  
% 7.03/1.50  fof(f80,plain,(
% 7.03/1.50    ( ! [X2,X0,X1] : (v1_xboole_0(k5_partfun1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2) | ~v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 7.03/1.50    inference(cnf_transformation,[],[f29])).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3,plain,
% 7.03/1.50      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 7.03/1.50      inference(cnf_transformation,[],[f59]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1416,plain,
% 7.03/1.50      ( r1_tarski(X0,X1) = iProver_top
% 7.03/1.50      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_19,plain,
% 7.03/1.50      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 7.03/1.50      inference(cnf_transformation,[],[f75]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1405,plain,
% 7.03/1.50      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_29,plain,
% 7.03/1.50      ( v1_funct_2(X0,X1,X2)
% 7.03/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ r2_hidden(X0,k5_partfun1(X1,X2,X3))
% 7.03/1.50      | ~ v1_funct_1(X3) ),
% 7.03/1.50      inference(cnf_transformation,[],[f85]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_27,plain,
% 7.03/1.50      ( ~ v1_funct_2(X0,X1,X1)
% 7.03/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(X1,X1))
% 7.03/1.50      | ~ v1_funct_1(X0) ),
% 7.03/1.50      inference(cnf_transformation,[],[f83]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_444,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X4)))
% 7.03/1.50      | ~ r2_hidden(X5,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | r2_hidden(X3,k1_funct_2(X4,X4))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | ~ v1_funct_1(X3)
% 7.03/1.50      | X4 != X2
% 7.03/1.50      | X4 != X1
% 7.03/1.50      | X3 != X5 ),
% 7.03/1.50      inference(resolution_lifted,[status(thm)],[c_29,c_27]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_445,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 7.03/1.50      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 7.03/1.50      | ~ r2_hidden(X2,k5_partfun1(X1,X1,X0))
% 7.03/1.50      | r2_hidden(X2,k1_funct_2(X1,X1))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | ~ v1_funct_1(X2) ),
% 7.03/1.50      inference(unflattening,[status(thm)],[c_444]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_30,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | v1_funct_1(X3) ),
% 7.03/1.50      inference(cnf_transformation,[],[f84]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_28,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | ~ v1_funct_1(X0) ),
% 7.03/1.50      inference(cnf_transformation,[],[f86]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_459,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 7.03/1.50      | ~ r2_hidden(X2,k5_partfun1(X1,X1,X0))
% 7.03/1.50      | r2_hidden(X2,k1_funct_2(X1,X1))
% 7.03/1.50      | ~ v1_funct_1(X0) ),
% 7.03/1.50      inference(forward_subsumption_resolution,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_445,c_30,c_28]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1391,plain,
% 7.03/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
% 7.03/1.50      | r2_hidden(X2,k5_partfun1(X1,X1,X0)) != iProver_top
% 7.03/1.50      | r2_hidden(X2,k1_funct_2(X1,X1)) = iProver_top
% 7.03/1.50      | v1_funct_1(X0) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_459]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2425,plain,
% 7.03/1.50      ( r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top
% 7.03/1.50      | v1_funct_1(k1_xboole_0) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1405,c_1391]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_33,negated_conjecture,
% 7.03/1.50      ( v1_funct_1(sK5) ),
% 7.03/1.50      inference(cnf_transformation,[],[f87]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_34,plain,
% 7.03/1.50      ( v1_funct_1(sK5) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_13,plain,
% 7.03/1.50      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 7.03/1.50      | k1_xboole_0 = X0
% 7.03/1.50      | k1_xboole_0 = X1 ),
% 7.03/1.50      inference(cnf_transformation,[],[f67]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_74,plain,
% 7.03/1.50      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 7.03/1.50      | k1_xboole_0 = k1_xboole_0 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_13]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_12,plain,
% 7.03/1.50      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 7.03/1.50      inference(cnf_transformation,[],[f93]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_75,plain,
% 7.03/1.50      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_12]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_5,plain,
% 7.03/1.50      ( v1_xboole_0(k1_xboole_0) ),
% 7.03/1.50      inference(cnf_transformation,[],[f61]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_87,plain,
% 7.03/1.50      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_742,plain,
% 7.03/1.50      ( ~ v1_funct_1(X0) | v1_funct_1(X1) | X1 != X0 ),
% 7.03/1.50      theory(equality) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1654,plain,
% 7.03/1.50      ( v1_funct_1(X0) | ~ v1_funct_1(sK5) | X0 != sK5 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_742]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1655,plain,
% 7.03/1.50      ( X0 != sK5
% 7.03/1.50      | v1_funct_1(X0) = iProver_top
% 7.03/1.50      | v1_funct_1(sK5) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_1654]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1657,plain,
% 7.03/1.50      ( k1_xboole_0 != sK5
% 7.03/1.50      | v1_funct_1(sK5) != iProver_top
% 7.03/1.50      | v1_funct_1(k1_xboole_0) = iProver_top ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_1655]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_734,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1765,plain,
% 7.03/1.50      ( X0 != X1 | X0 = sK5 | sK5 != X1 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_734]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1766,plain,
% 7.03/1.50      ( sK5 != k1_xboole_0
% 7.03/1.50      | k1_xboole_0 = sK5
% 7.03/1.50      | k1_xboole_0 != k1_xboole_0 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_1765]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_6,plain,
% 7.03/1.50      ( r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0 ),
% 7.03/1.50      inference(cnf_transformation,[],[f62]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1413,plain,
% 7.03/1.50      ( k1_xboole_0 = X0 | r2_hidden(sK2(X0),X0) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_32,negated_conjecture,
% 7.03/1.50      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 7.03/1.50      inference(cnf_transformation,[],[f88]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1396,plain,
% 7.03/1.50      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_26,plain,
% 7.03/1.50      ( ~ v1_funct_2(X0,X1,X2)
% 7.03/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(X1,X2))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | k1_xboole_0 = X2 ),
% 7.03/1.50      inference(cnf_transformation,[],[f81]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_397,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | r2_hidden(X3,k1_funct_2(X1,X2))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | ~ v1_funct_1(X3)
% 7.03/1.50      | k1_xboole_0 = X2 ),
% 7.03/1.50      inference(resolution,[status(thm)],[c_29,c_26]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_401,plain,
% 7.03/1.50      ( ~ v1_funct_1(X0)
% 7.03/1.50      | r2_hidden(X3,k1_funct_2(X1,X2))
% 7.03/1.50      | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | k1_xboole_0 = X2 ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_397,c_30,c_28]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_402,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ r2_hidden(X3,k5_partfun1(X1,X2,X0))
% 7.03/1.50      | r2_hidden(X3,k1_funct_2(X1,X2))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | k1_xboole_0 = X2 ),
% 7.03/1.50      inference(renaming,[status(thm)],[c_401]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1393,plain,
% 7.03/1.50      ( k1_xboole_0 = X0
% 7.03/1.50      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) != iProver_top
% 7.03/1.50      | r2_hidden(X3,k5_partfun1(X2,X0,X1)) != iProver_top
% 7.03/1.50      | r2_hidden(X3,k1_funct_2(X2,X0)) = iProver_top
% 7.03/1.50      | v1_funct_1(X1) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_402]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3090,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top
% 7.03/1.50      | v1_funct_1(sK5) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1396,c_1393]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3625,plain,
% 7.03/1.50      ( r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top
% 7.03/1.50      | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
% 7.03/1.50      | sK4 = k1_xboole_0 ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_3090,c_34]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3626,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | r2_hidden(X0,k5_partfun1(sK3,sK4,sK5)) != iProver_top
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(renaming,[status(thm)],[c_3625]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3636,plain,
% 7.03/1.50      ( k5_partfun1(sK3,sK4,sK5) = k1_xboole_0
% 7.03/1.50      | sK4 = k1_xboole_0
% 7.03/1.50      | r2_hidden(sK2(k5_partfun1(sK3,sK4,sK5)),k1_funct_2(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1413,c_3626]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_31,negated_conjecture,
% 7.03/1.50      ( ~ r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) ),
% 7.03/1.50      inference(cnf_transformation,[],[f89]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1662,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4))
% 7.03/1.50      | r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)),k5_partfun1(sK3,sK4,sK5)) ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_3]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1,plain,
% 7.03/1.50      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 7.03/1.50      inference(cnf_transformation,[],[f56]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1746,plain,
% 7.03/1.50      ( ~ r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)),k5_partfun1(sK3,sK4,sK5))
% 7.03/1.50      | ~ v1_xboole_0(k5_partfun1(sK3,sK4,sK5)) ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_1]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_735,plain,
% 7.03/1.50      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 7.03/1.50      theory(equality) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1926,plain,
% 7.03/1.50      ( ~ v1_xboole_0(X0)
% 7.03/1.50      | v1_xboole_0(k5_partfun1(sK3,sK4,sK5))
% 7.03/1.50      | k5_partfun1(sK3,sK4,sK5) != X0 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_735]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1938,plain,
% 7.03/1.50      ( v1_xboole_0(k5_partfun1(sK3,sK4,sK5))
% 7.03/1.50      | ~ v1_xboole_0(k1_xboole_0)
% 7.03/1.50      | k5_partfun1(sK3,sK4,sK5) != k1_xboole_0 ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_1926]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4073,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | r2_hidden(sK2(k5_partfun1(sK3,sK4,sK5)),k1_funct_2(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_3636,c_31,c_5,c_1662,c_1746,c_1938]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1418,plain,
% 7.03/1.50      ( r2_hidden(X0,X1) != iProver_top
% 7.03/1.50      | v1_xboole_0(X1) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4079,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | v1_xboole_0(k1_funct_2(sK3,sK4)) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_4073,c_1418]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_36,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_3635,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | r1_tarski(k5_partfun1(sK3,sK4,sK5),X0) = iProver_top
% 7.03/1.50      | r2_hidden(sK1(k5_partfun1(sK3,sK4,sK5),X0),k1_funct_2(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1416,c_3626]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2,plain,
% 7.03/1.50      ( r1_tarski(X0,X1) | ~ r2_hidden(sK1(X0,X1),X1) ),
% 7.03/1.50      inference(cnf_transformation,[],[f60]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1417,plain,
% 7.03/1.50      ( r1_tarski(X0,X1) = iProver_top
% 7.03/1.50      | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4194,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0
% 7.03/1.50      | r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_3635,c_1417]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4217,plain,
% 7.03/1.50      ( sK4 = k1_xboole_0 ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_4079,c_36,c_4194]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2556,plain,
% 7.03/1.50      ( r1_tarski(X0,X1) = iProver_top | v1_xboole_0(X0) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1416,c_1418]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_21,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 7.03/1.50      inference(cnf_transformation,[],[f76]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1403,plain,
% 7.03/1.50      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 7.03/1.50      | r1_tarski(X0,X1) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2176,plain,
% 7.03/1.50      ( r1_tarski(sK5,k2_zfmisc_1(sK3,sK4)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1396,c_1403]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_7,plain,
% 7.03/1.50      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 7.03/1.50      inference(cnf_transformation,[],[f65]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1412,plain,
% 7.03/1.50      ( X0 = X1
% 7.03/1.50      | r1_tarski(X1,X0) != iProver_top
% 7.03/1.50      | r1_tarski(X0,X1) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2966,plain,
% 7.03/1.50      ( k2_zfmisc_1(sK3,sK4) = sK5
% 7.03/1.50      | r1_tarski(k2_zfmisc_1(sK3,sK4),sK5) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_2176,c_1412]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2987,plain,
% 7.03/1.50      ( k2_zfmisc_1(sK3,sK4) = sK5
% 7.03/1.50      | v1_xboole_0(k2_zfmisc_1(sK3,sK4)) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_2556,c_2966]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4223,plain,
% 7.03/1.50      ( k2_zfmisc_1(sK3,k1_xboole_0) = sK5
% 7.03/1.50      | v1_xboole_0(k2_zfmisc_1(sK3,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(demodulation,[status(thm)],[c_4217,c_2987]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_11,plain,
% 7.03/1.50      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 7.03/1.50      inference(cnf_transformation,[],[f92]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4250,plain,
% 7.03/1.50      ( sK5 = k1_xboole_0 | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 7.03/1.50      inference(demodulation,[status(thm)],[c_4223,c_11]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_8423,plain,
% 7.03/1.50      ( r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top
% 7.03/1.50      | r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_2425,c_34,c_74,c_75,c_87,c_1657,c_1766,c_4250]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_8424,plain,
% 7.03/1.50      ( r2_hidden(X0,k5_partfun1(X1,X1,k1_xboole_0)) != iProver_top
% 7.03/1.50      | r2_hidden(X0,k1_funct_2(X1,X1)) = iProver_top ),
% 7.03/1.50      inference(renaming,[status(thm)],[c_8423]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_8432,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(X0,X0,k1_xboole_0),X1) = iProver_top
% 7.03/1.50      | r2_hidden(sK1(k5_partfun1(X0,X0,k1_xboole_0),X1),k1_funct_2(X0,X0)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1416,c_8424]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_37099,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(X0,X0,k1_xboole_0),k1_funct_2(X0,X0)) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_8432,c_1417]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_37129,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(k1_xboole_0,k1_xboole_0,k1_xboole_0),k1_funct_2(k1_xboole_0,k1_xboole_0)) = iProver_top ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_37099]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_24,plain,
% 7.03/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.03/1.50      | ~ v1_funct_1(X0)
% 7.03/1.50      | ~ v1_xboole_0(X2)
% 7.03/1.50      | v1_xboole_0(X1)
% 7.03/1.50      | v1_xboole_0(k5_partfun1(X1,X2,X0)) ),
% 7.03/1.50      inference(cnf_transformation,[],[f80]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1400,plain,
% 7.03/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 7.03/1.50      | v1_funct_1(X0) != iProver_top
% 7.03/1.50      | v1_xboole_0(X2) != iProver_top
% 7.03/1.50      | v1_xboole_0(X1) = iProver_top
% 7.03/1.50      | v1_xboole_0(k5_partfun1(X1,X2,X0)) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4880,plain,
% 7.03/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 7.03/1.50      | v1_funct_1(X0) != iProver_top
% 7.03/1.50      | v1_xboole_0(X1) = iProver_top
% 7.03/1.50      | v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top
% 7.03/1.50      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_11,c_1400]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_5806,plain,
% 7.03/1.50      ( v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top
% 7.03/1.50      | v1_xboole_0(X1) = iProver_top
% 7.03/1.50      | v1_funct_1(X0) != iProver_top
% 7.03/1.50      | m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_4880,c_87]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_5807,plain,
% 7.03/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 7.03/1.50      | v1_funct_1(X0) != iProver_top
% 7.03/1.50      | v1_xboole_0(X1) = iProver_top
% 7.03/1.50      | v1_xboole_0(k5_partfun1(X1,k1_xboole_0,X0)) = iProver_top ),
% 7.03/1.50      inference(renaming,[status(thm)],[c_5806]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_1397,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(sK3,sK4,sK5),k1_funct_2(sK3,sK4)) != iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4228,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(sK3,k1_xboole_0,sK5),k1_funct_2(sK3,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(demodulation,[status(thm)],[c_4217,c_1397]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4559,plain,
% 7.03/1.50      ( sK5 = k1_xboole_0 ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_4250,c_87]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4600,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(sK3,k1_xboole_0,k1_xboole_0),k1_funct_2(sK3,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(light_normalisation,[status(thm)],[c_4228,c_4559]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_4603,plain,
% 7.03/1.50      ( v1_xboole_0(k5_partfun1(sK3,k1_xboole_0,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_2556,c_4600]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_5816,plain,
% 7.03/1.50      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 7.03/1.50      | v1_funct_1(k1_xboole_0) != iProver_top
% 7.03/1.50      | v1_xboole_0(sK3) = iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_5807,c_4603]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_58,plain,
% 7.03/1.50      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 7.03/1.50      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_60,plain,
% 7.03/1.50      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 7.03/1.50      inference(instantiation,[status(thm)],[c_58]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_6046,plain,
% 7.03/1.50      ( v1_xboole_0(sK3) = iProver_top ),
% 7.03/1.50      inference(global_propositional_subsumption,
% 7.03/1.50                [status(thm)],
% 7.03/1.50                [c_5816,c_34,c_60,c_74,c_75,c_87,c_1657,c_1766,c_4250]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_2008,plain,
% 7.03/1.50      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_1413,c_1418]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_6051,plain,
% 7.03/1.50      ( sK3 = k1_xboole_0 ),
% 7.03/1.50      inference(superposition,[status(thm)],[c_6046,c_2008]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(c_6156,plain,
% 7.03/1.50      ( r1_tarski(k5_partfun1(k1_xboole_0,k1_xboole_0,k1_xboole_0),k1_funct_2(k1_xboole_0,k1_xboole_0)) != iProver_top ),
% 7.03/1.50      inference(demodulation,[status(thm)],[c_6051,c_4600]) ).
% 7.03/1.50  
% 7.03/1.50  cnf(contradiction,plain,
% 7.03/1.50      ( $false ),
% 7.03/1.50      inference(minisat,[status(thm)],[c_37129,c_6156]) ).
% 7.03/1.50  
% 7.03/1.50  
% 7.03/1.50  % SZS output end CNFRefutation for theBenchmark.p
% 7.03/1.50  
% 7.03/1.50  ------                               Statistics
% 7.03/1.50  
% 7.03/1.50  ------ General
% 7.03/1.50  
% 7.03/1.50  abstr_ref_over_cycles:                  0
% 7.03/1.50  abstr_ref_under_cycles:                 0
% 7.03/1.50  gc_basic_clause_elim:                   0
% 7.03/1.50  forced_gc_time:                         0
% 7.03/1.50  parsing_time:                           0.012
% 7.03/1.50  unif_index_cands_time:                  0.
% 7.03/1.50  unif_index_add_time:                    0.
% 7.03/1.50  orderings_time:                         0.
% 7.03/1.50  out_proof_time:                         0.016
% 7.03/1.50  total_time:                             0.834
% 7.03/1.50  num_of_symbols:                         48
% 7.03/1.50  num_of_terms:                           27087
% 7.03/1.50  
% 7.03/1.50  ------ Preprocessing
% 7.03/1.50  
% 7.03/1.50  num_of_splits:                          0
% 7.03/1.50  num_of_split_atoms:                     0
% 7.03/1.50  num_of_reused_defs:                     0
% 7.03/1.50  num_eq_ax_congr_red:                    14
% 7.03/1.50  num_of_sem_filtered_clauses:            1
% 7.03/1.50  num_of_subtypes:                        0
% 7.03/1.50  monotx_restored_types:                  0
% 7.03/1.50  sat_num_of_epr_types:                   0
% 7.03/1.50  sat_num_of_non_cyclic_types:            0
% 7.03/1.50  sat_guarded_non_collapsed_types:        0
% 7.03/1.50  num_pure_diseq_elim:                    0
% 7.03/1.50  simp_replaced_by:                       0
% 7.03/1.50  res_preprocessed:                       152
% 7.03/1.50  prep_upred:                             0
% 7.03/1.50  prep_unflattend:                        6
% 7.03/1.50  smt_new_axioms:                         0
% 7.03/1.50  pred_elim_cands:                        5
% 7.03/1.50  pred_elim:                              1
% 7.03/1.50  pred_elim_cl:                           1
% 7.03/1.50  pred_elim_cycles:                       3
% 7.03/1.50  merged_defs:                            8
% 7.03/1.50  merged_defs_ncl:                        0
% 7.03/1.50  bin_hyper_res:                          8
% 7.03/1.50  prep_cycles:                            4
% 7.03/1.50  pred_elim_time:                         0.003
% 7.03/1.50  splitting_time:                         0.
% 7.03/1.50  sem_filter_time:                        0.
% 7.03/1.50  monotx_time:                            0.001
% 7.03/1.50  subtype_inf_time:                       0.
% 7.03/1.50  
% 7.03/1.50  ------ Problem properties
% 7.03/1.50  
% 7.03/1.50  clauses:                                32
% 7.03/1.50  conjectures:                            3
% 7.03/1.50  epr:                                    11
% 7.03/1.50  horn:                                   25
% 7.03/1.50  ground:                                 4
% 7.03/1.50  unary:                                  9
% 7.03/1.50  binary:                                 8
% 7.03/1.50  lits:                                   78
% 7.03/1.50  lits_eq:                                8
% 7.03/1.50  fd_pure:                                0
% 7.03/1.50  fd_pseudo:                              0
% 7.03/1.50  fd_cond:                                3
% 7.03/1.50  fd_pseudo_cond:                         1
% 7.03/1.50  ac_symbols:                             0
% 7.03/1.50  
% 7.03/1.50  ------ Propositional Solver
% 7.03/1.50  
% 7.03/1.50  prop_solver_calls:                      28
% 7.03/1.50  prop_fast_solver_calls:                 1511
% 7.03/1.50  smt_solver_calls:                       0
% 7.03/1.50  smt_fast_solver_calls:                  0
% 7.03/1.50  prop_num_of_clauses:                    11717
% 7.03/1.50  prop_preprocess_simplified:             19478
% 7.03/1.50  prop_fo_subsumed:                       28
% 7.03/1.50  prop_solver_time:                       0.
% 7.03/1.50  smt_solver_time:                        0.
% 7.03/1.50  smt_fast_solver_time:                   0.
% 7.03/1.50  prop_fast_solver_time:                  0.
% 7.03/1.50  prop_unsat_core_time:                   0.001
% 7.03/1.50  
% 7.03/1.50  ------ QBF
% 7.03/1.50  
% 7.03/1.50  qbf_q_res:                              0
% 7.03/1.50  qbf_num_tautologies:                    0
% 7.03/1.50  qbf_prep_cycles:                        0
% 7.03/1.50  
% 7.03/1.50  ------ BMC1
% 7.03/1.50  
% 7.03/1.50  bmc1_current_bound:                     -1
% 7.03/1.50  bmc1_last_solved_bound:                 -1
% 7.03/1.50  bmc1_unsat_core_size:                   -1
% 7.03/1.50  bmc1_unsat_core_parents_size:           -1
% 7.03/1.50  bmc1_merge_next_fun:                    0
% 7.03/1.50  bmc1_unsat_core_clauses_time:           0.
% 7.03/1.50  
% 7.03/1.50  ------ Instantiation
% 7.03/1.50  
% 7.03/1.50  inst_num_of_clauses:                    2464
% 7.03/1.50  inst_num_in_passive:                    425
% 7.03/1.50  inst_num_in_active:                     1116
% 7.03/1.50  inst_num_in_unprocessed:                923
% 7.03/1.50  inst_num_of_loops:                      1360
% 7.03/1.50  inst_num_of_learning_restarts:          0
% 7.03/1.50  inst_num_moves_active_passive:          239
% 7.03/1.50  inst_lit_activity:                      0
% 7.03/1.50  inst_lit_activity_moves:                0
% 7.03/1.50  inst_num_tautologies:                   0
% 7.03/1.50  inst_num_prop_implied:                  0
% 7.03/1.50  inst_num_existing_simplified:           0
% 7.03/1.50  inst_num_eq_res_simplified:             0
% 7.03/1.50  inst_num_child_elim:                    0
% 7.03/1.50  inst_num_of_dismatching_blockings:      1893
% 7.03/1.50  inst_num_of_non_proper_insts:           3096
% 7.03/1.50  inst_num_of_duplicates:                 0
% 7.03/1.50  inst_inst_num_from_inst_to_res:         0
% 7.03/1.50  inst_dismatching_checking_time:         0.
% 7.03/1.50  
% 7.03/1.50  ------ Resolution
% 7.03/1.50  
% 7.03/1.50  res_num_of_clauses:                     0
% 7.03/1.50  res_num_in_passive:                     0
% 7.03/1.50  res_num_in_active:                      0
% 7.03/1.50  res_num_of_loops:                       156
% 7.03/1.50  res_forward_subset_subsumed:            423
% 7.03/1.50  res_backward_subset_subsumed:           8
% 7.03/1.50  res_forward_subsumed:                   0
% 7.03/1.50  res_backward_subsumed:                  0
% 7.03/1.50  res_forward_subsumption_resolution:     4
% 7.03/1.50  res_backward_subsumption_resolution:    0
% 7.03/1.50  res_clause_to_clause_subsumption:       8049
% 7.03/1.50  res_orphan_elimination:                 0
% 7.03/1.50  res_tautology_del:                      347
% 7.03/1.50  res_num_eq_res_simplified:              0
% 7.03/1.50  res_num_sel_changes:                    0
% 7.03/1.50  res_moves_from_active_to_pass:          0
% 7.03/1.50  
% 7.03/1.50  ------ Superposition
% 7.03/1.50  
% 7.03/1.50  sup_time_total:                         0.
% 7.03/1.50  sup_time_generating:                    0.
% 7.03/1.50  sup_time_sim_full:                      0.
% 7.03/1.50  sup_time_sim_immed:                     0.
% 7.03/1.50  
% 7.03/1.50  sup_num_of_clauses:                     1425
% 7.03/1.50  sup_num_in_active:                      246
% 7.03/1.50  sup_num_in_passive:                     1179
% 7.03/1.50  sup_num_of_loops:                       271
% 7.03/1.50  sup_fw_superposition:                   1118
% 7.03/1.50  sup_bw_superposition:                   877
% 7.03/1.50  sup_immediate_simplified:               252
% 7.03/1.50  sup_given_eliminated:                   6
% 7.03/1.50  comparisons_done:                       0
% 7.03/1.50  comparisons_avoided:                    0
% 7.03/1.50  
% 7.03/1.50  ------ Simplifications
% 7.03/1.50  
% 7.03/1.50  
% 7.03/1.50  sim_fw_subset_subsumed:                 56
% 7.03/1.50  sim_bw_subset_subsumed:                 15
% 7.03/1.50  sim_fw_subsumed:                        89
% 7.03/1.50  sim_bw_subsumed:                        7
% 7.03/1.50  sim_fw_subsumption_res:                 4
% 7.03/1.50  sim_bw_subsumption_res:                 0
% 7.03/1.50  sim_tautology_del:                      22
% 7.03/1.50  sim_eq_tautology_del:                   54
% 7.03/1.50  sim_eq_res_simp:                        0
% 7.03/1.50  sim_fw_demodulated:                     50
% 7.03/1.50  sim_bw_demodulated:                     29
% 7.03/1.50  sim_light_normalised:                   102
% 7.03/1.50  sim_joinable_taut:                      0
% 7.03/1.50  sim_joinable_simp:                      0
% 7.03/1.50  sim_ac_normalised:                      0
% 7.03/1.50  sim_smt_subsumption:                    0
% 7.03/1.50  
%------------------------------------------------------------------------------
