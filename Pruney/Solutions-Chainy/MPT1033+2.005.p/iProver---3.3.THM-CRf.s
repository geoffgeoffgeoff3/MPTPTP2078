%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:08:29 EST 2020

% Result     : Theorem 2.09s
% Output     : CNFRefutation 2.09s
% Verified   : 
% Statistics : Number of formulae       :  147 (1920 expanded)
%              Number of clauses        :   88 ( 586 expanded)
%              Number of leaves         :   17 ( 492 expanded)
%              Depth                    :   24
%              Number of atoms          :  496 (13439 expanded)
%              Number of equality atoms :  168 (3098 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f34])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f74,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f43])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f28])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
         => ( r1_partfun1(X2,X3)
           => ( r2_relset_1(X0,X1,X2,X3)
              | ( k1_xboole_0 != X0
                & k1_xboole_0 = X1 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              & v1_funct_2(X3,X0,X1)
              & v1_funct_1(X3) )
           => ( r1_partfun1(X2,X3)
             => ( r2_relset_1(X0,X1,X2,X3)
                | ( k1_xboole_0 != X0
                  & k1_xboole_0 = X1 ) ) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f32,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f33,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f32])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
     => ( ~ r2_relset_1(X0,X1,X2,sK4)
        & ( k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & r1_partfun1(X2,sK4)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(sK4,X0,X1)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ~ r2_relset_1(X0,X1,X2,X3)
            & ( k1_xboole_0 = X0
              | k1_xboole_0 != X1 )
            & r1_partfun1(X2,X3)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( ~ r2_relset_1(sK1,sK2,sK3,X3)
          & ( k1_xboole_0 = sK1
            | k1_xboole_0 != sK2 )
          & r1_partfun1(sK3,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
          & v1_funct_2(X3,sK1,sK2)
          & v1_funct_1(X3) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
      & v1_funct_2(sK3,sK1,sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ~ r2_relset_1(sK1,sK2,sK3,sK4)
    & ( k1_xboole_0 = sK1
      | k1_xboole_0 != sK2 )
    & r1_partfun1(sK3,sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK4,sK1,sK2)
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK3,sK1,sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f33,f41,f40])).

fof(f68,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f67,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f69,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f42])).

fof(f11,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3] :
                  ~ ( k4_tarski(X2,X3) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f11])).

fof(f38,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X3,X2] :
            ( k4_tarski(X2,X3) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0] :
      ( ( ! [X2,X3] :
            ( k4_tarski(X2,X3) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f38])).

fof(f58,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_1(X3) )
         => ( ( r1_partfun1(X2,X3)
              & v1_partfun1(X3,X0)
              & v1_partfun1(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f30])).

fof(f63,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r1_partfun1(X2,X3)
      | ~ v1_partfun1(X3,X0)
      | ~ v1_partfun1(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f70,plain,(
    r1_partfun1(sK3,sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f64,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f42])).

fof(f66,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f42])).

fof(f65,plain,(
    v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f42])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f25])).

fof(f57,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f72,plain,(
    ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f71,plain,
    ( k1_xboole_0 = sK1
    | k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f42])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f22,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f21])).

fof(f54,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1245,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1243,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_25,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_501,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_25])).

cnf(c_502,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_funct_1(sK4)
    | v1_xboole_0(sK2) ),
    inference(unflattening,[status(thm)],[c_501])).

cnf(c_26,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_504,plain,
    ( v1_partfun1(sK4,sK1)
    | v1_xboole_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_502,c_26,c_24])).

cnf(c_550,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_504])).

cnf(c_551,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(sK2)) ),
    inference(unflattening,[status(thm)],[c_550])).

cnf(c_17,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_573,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
    | X1 != X0
    | sK0(X1) != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_551,c_17])).

cnf(c_574,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_573])).

cnf(c_1233,plain,
    ( k1_xboole_0 = X0
    | v1_partfun1(sK4,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_574])).

cnf(c_1820,plain,
    ( k1_xboole_0 = X0
    | v1_partfun1(sK4,sK1) = iProver_top
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1243,c_1233])).

cnf(c_1238,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_20,plain,
    ( ~ r1_partfun1(X0,X1)
    | ~ v1_partfun1(X1,X2)
    | ~ v1_partfun1(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_23,negated_conjecture,
    ( r1_partfun1(sK3,sK4) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_468,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v1_partfun1(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X0)
    | X0 = X2
    | sK4 != X0
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_23])).

cnf(c_469,plain,
    ( ~ v1_partfun1(sK4,X0)
    | ~ v1_partfun1(sK3,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK4)
    | ~ v1_funct_1(sK3)
    | sK4 = sK3 ),
    inference(unflattening,[status(thm)],[c_468])).

cnf(c_29,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_473,plain,
    ( ~ v1_partfun1(sK4,X0)
    | ~ v1_partfun1(sK3,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | sK4 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_469,c_29,c_26])).

cnf(c_1234,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,X0) != iProver_top
    | v1_partfun1(sK3,X0) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_473])).

cnf(c_1454,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,sK1) != iProver_top
    | v1_partfun1(sK3,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1238,c_1234])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_32,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_1457,plain,
    ( v1_partfun1(sK3,sK1) != iProver_top
    | v1_partfun1(sK4,sK1) != iProver_top
    | sK4 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1454,c_32])).

cnf(c_1458,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,sK1) != iProver_top
    | v1_partfun1(sK3,sK1) != iProver_top ),
    inference(renaming,[status(thm)],[c_1457])).

cnf(c_834,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1432,plain,
    ( sK4 != X0
    | sK3 != X0
    | sK3 = sK4 ),
    inference(instantiation,[status(thm)],[c_834])).

cnf(c_1705,plain,
    ( sK4 != sK3
    | sK3 = sK4
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1432])).

cnf(c_833,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1803,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_833])).

cnf(c_28,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_515,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK3 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_28])).

cnf(c_516,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_funct_1(sK3)
    | v1_xboole_0(sK2) ),
    inference(unflattening,[status(thm)],[c_515])).

cnf(c_518,plain,
    ( v1_partfun1(sK3,sK1)
    | v1_xboole_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_516,c_29,c_27])).

cnf(c_535,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_518])).

cnf(c_536,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(sK2)) ),
    inference(unflattening,[status(thm)],[c_535])).

cnf(c_588,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
    | X1 != X0
    | sK0(X1) != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_536,c_17])).

cnf(c_589,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_588])).

cnf(c_1232,plain,
    ( k1_xboole_0 = X0
    | v1_partfun1(sK3,sK1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_589])).

cnf(c_1821,plain,
    ( k1_xboole_0 = X0
    | v1_partfun1(sK3,sK1) = iProver_top
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1243,c_1232])).

cnf(c_14,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_21,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_363,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | sK4 != X0
    | sK3 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_21])).

cnf(c_364,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | sK3 != sK4 ),
    inference(unflattening,[status(thm)],[c_363])).

cnf(c_368,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | sK3 != sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_364,c_24])).

cnf(c_1891,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | sK3 != sK4 ),
    inference(instantiation,[status(thm)],[c_368])).

cnf(c_2148,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1820,c_24,c_1458,c_1705,c_1803,c_1821,c_1891])).

cnf(c_2154,plain,
    ( sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1245,c_2148])).

cnf(c_1237,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2168,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2154,c_1237])).

cnf(c_22,negated_conjecture,
    ( k1_xboole_0 != sK2
    | k1_xboole_0 = sK1 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_2169,plain,
    ( sK1 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2154,c_22])).

cnf(c_2170,plain,
    ( sK1 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_2169])).

cnf(c_2173,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2168,c_2170])).

cnf(c_13,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_9,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_413,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_13,c_9])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_417,plain,
    ( r1_tarski(k2_relat_1(X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_413,c_12])).

cnf(c_418,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2) ),
    inference(renaming,[status(thm)],[c_417])).

cnf(c_1235,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_418])).

cnf(c_3272,plain,
    ( r1_tarski(k2_relat_1(sK3),k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2173,c_1235])).

cnf(c_2161,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2154,c_2148])).

cnf(c_3622,plain,
    ( k2_relat_1(sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3272,c_2161])).

cnf(c_10,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1241,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_3881,plain,
    ( sK3 = k1_xboole_0
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3622,c_1241])).

cnf(c_2167,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2154,c_1238])).

cnf(c_2176,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2167,c_2170])).

cnf(c_3271,plain,
    ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2176,c_1235])).

cnf(c_3612,plain,
    ( k2_relat_1(sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3271,c_2161])).

cnf(c_1559,plain,
    ( X0 != X1
    | sK4 != X1
    | sK4 = X0 ),
    inference(instantiation,[status(thm)],[c_834])).

cnf(c_2385,plain,
    ( X0 != sK4
    | sK4 = X0
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_1559])).

cnf(c_2386,plain,
    ( sK4 != sK4
    | sK4 = k1_xboole_0
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_2385])).

cnf(c_1767,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_833])).

cnf(c_1747,plain,
    ( ~ v1_relat_1(sK4)
    | k2_relat_1(sK4) != k1_xboole_0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1433,plain,
    ( sK4 != k1_xboole_0
    | sK3 = sK4
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1432])).

cnf(c_1398,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1399,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1398])).

cnf(c_1395,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3881,c_3612,c_2386,c_1891,c_1767,c_1747,c_1433,c_1399,c_1395,c_24,c_32])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n019.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:22:37 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  % Running in FOF mode
% 2.09/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.09/0.98  
% 2.09/0.98  ------  iProver source info
% 2.09/0.98  
% 2.09/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.09/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.09/0.98  git: non_committed_changes: false
% 2.09/0.98  git: last_make_outside_of_git: false
% 2.09/0.98  
% 2.09/0.98  ------ 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options
% 2.09/0.98  
% 2.09/0.98  --out_options                           all
% 2.09/0.98  --tptp_safe_out                         true
% 2.09/0.98  --problem_path                          ""
% 2.09/0.98  --include_path                          ""
% 2.09/0.98  --clausifier                            res/vclausify_rel
% 2.09/0.98  --clausifier_options                    --mode clausify
% 2.09/0.98  --stdin                                 false
% 2.09/0.98  --stats_out                             all
% 2.09/0.98  
% 2.09/0.98  ------ General Options
% 2.09/0.98  
% 2.09/0.98  --fof                                   false
% 2.09/0.98  --time_out_real                         305.
% 2.09/0.98  --time_out_virtual                      -1.
% 2.09/0.98  --symbol_type_check                     false
% 2.09/0.98  --clausify_out                          false
% 2.09/0.98  --sig_cnt_out                           false
% 2.09/0.98  --trig_cnt_out                          false
% 2.09/0.98  --trig_cnt_out_tolerance                1.
% 2.09/0.98  --trig_cnt_out_sk_spl                   false
% 2.09/0.98  --abstr_cl_out                          false
% 2.09/0.98  
% 2.09/0.98  ------ Global Options
% 2.09/0.98  
% 2.09/0.98  --schedule                              default
% 2.09/0.98  --add_important_lit                     false
% 2.09/0.98  --prop_solver_per_cl                    1000
% 2.09/0.98  --min_unsat_core                        false
% 2.09/0.98  --soft_assumptions                      false
% 2.09/0.98  --soft_lemma_size                       3
% 2.09/0.98  --prop_impl_unit_size                   0
% 2.09/0.98  --prop_impl_unit                        []
% 2.09/0.98  --share_sel_clauses                     true
% 2.09/0.98  --reset_solvers                         false
% 2.09/0.98  --bc_imp_inh                            [conj_cone]
% 2.09/0.98  --conj_cone_tolerance                   3.
% 2.09/0.98  --extra_neg_conj                        none
% 2.09/0.98  --large_theory_mode                     true
% 2.09/0.98  --prolific_symb_bound                   200
% 2.09/0.98  --lt_threshold                          2000
% 2.09/0.98  --clause_weak_htbl                      true
% 2.09/0.98  --gc_record_bc_elim                     false
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing Options
% 2.09/0.98  
% 2.09/0.98  --preprocessing_flag                    true
% 2.09/0.98  --time_out_prep_mult                    0.1
% 2.09/0.98  --splitting_mode                        input
% 2.09/0.98  --splitting_grd                         true
% 2.09/0.98  --splitting_cvd                         false
% 2.09/0.98  --splitting_cvd_svl                     false
% 2.09/0.98  --splitting_nvd                         32
% 2.09/0.98  --sub_typing                            true
% 2.09/0.98  --prep_gs_sim                           true
% 2.09/0.98  --prep_unflatten                        true
% 2.09/0.98  --prep_res_sim                          true
% 2.09/0.98  --prep_upred                            true
% 2.09/0.98  --prep_sem_filter                       exhaustive
% 2.09/0.98  --prep_sem_filter_out                   false
% 2.09/0.98  --pred_elim                             true
% 2.09/0.98  --res_sim_input                         true
% 2.09/0.98  --eq_ax_congr_red                       true
% 2.09/0.98  --pure_diseq_elim                       true
% 2.09/0.98  --brand_transform                       false
% 2.09/0.98  --non_eq_to_eq                          false
% 2.09/0.98  --prep_def_merge                        true
% 2.09/0.98  --prep_def_merge_prop_impl              false
% 2.09/0.98  --prep_def_merge_mbd                    true
% 2.09/0.98  --prep_def_merge_tr_red                 false
% 2.09/0.98  --prep_def_merge_tr_cl                  false
% 2.09/0.98  --smt_preprocessing                     true
% 2.09/0.98  --smt_ac_axioms                         fast
% 2.09/0.98  --preprocessed_out                      false
% 2.09/0.98  --preprocessed_stats                    false
% 2.09/0.98  
% 2.09/0.98  ------ Abstraction refinement Options
% 2.09/0.98  
% 2.09/0.98  --abstr_ref                             []
% 2.09/0.98  --abstr_ref_prep                        false
% 2.09/0.98  --abstr_ref_until_sat                   false
% 2.09/0.98  --abstr_ref_sig_restrict                funpre
% 2.09/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.09/0.98  --abstr_ref_under                       []
% 2.09/0.98  
% 2.09/0.98  ------ SAT Options
% 2.09/0.98  
% 2.09/0.98  --sat_mode                              false
% 2.09/0.98  --sat_fm_restart_options                ""
% 2.09/0.98  --sat_gr_def                            false
% 2.09/0.98  --sat_epr_types                         true
% 2.09/0.98  --sat_non_cyclic_types                  false
% 2.09/0.98  --sat_finite_models                     false
% 2.09/0.98  --sat_fm_lemmas                         false
% 2.09/0.98  --sat_fm_prep                           false
% 2.09/0.98  --sat_fm_uc_incr                        true
% 2.09/0.98  --sat_out_model                         small
% 2.09/0.98  --sat_out_clauses                       false
% 2.09/0.98  
% 2.09/0.98  ------ QBF Options
% 2.09/0.98  
% 2.09/0.98  --qbf_mode                              false
% 2.09/0.98  --qbf_elim_univ                         false
% 2.09/0.98  --qbf_dom_inst                          none
% 2.09/0.98  --qbf_dom_pre_inst                      false
% 2.09/0.98  --qbf_sk_in                             false
% 2.09/0.98  --qbf_pred_elim                         true
% 2.09/0.98  --qbf_split                             512
% 2.09/0.98  
% 2.09/0.98  ------ BMC1 Options
% 2.09/0.98  
% 2.09/0.98  --bmc1_incremental                      false
% 2.09/0.98  --bmc1_axioms                           reachable_all
% 2.09/0.98  --bmc1_min_bound                        0
% 2.09/0.98  --bmc1_max_bound                        -1
% 2.09/0.98  --bmc1_max_bound_default                -1
% 2.09/0.98  --bmc1_symbol_reachability              true
% 2.09/0.98  --bmc1_property_lemmas                  false
% 2.09/0.98  --bmc1_k_induction                      false
% 2.09/0.98  --bmc1_non_equiv_states                 false
% 2.09/0.98  --bmc1_deadlock                         false
% 2.09/0.98  --bmc1_ucm                              false
% 2.09/0.98  --bmc1_add_unsat_core                   none
% 2.09/0.98  --bmc1_unsat_core_children              false
% 2.09/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.09/0.98  --bmc1_out_stat                         full
% 2.09/0.98  --bmc1_ground_init                      false
% 2.09/0.98  --bmc1_pre_inst_next_state              false
% 2.09/0.98  --bmc1_pre_inst_state                   false
% 2.09/0.98  --bmc1_pre_inst_reach_state             false
% 2.09/0.98  --bmc1_out_unsat_core                   false
% 2.09/0.98  --bmc1_aig_witness_out                  false
% 2.09/0.98  --bmc1_verbose                          false
% 2.09/0.98  --bmc1_dump_clauses_tptp                false
% 2.09/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.09/0.98  --bmc1_dump_file                        -
% 2.09/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.09/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.09/0.98  --bmc1_ucm_extend_mode                  1
% 2.09/0.98  --bmc1_ucm_init_mode                    2
% 2.09/0.98  --bmc1_ucm_cone_mode                    none
% 2.09/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.09/0.98  --bmc1_ucm_relax_model                  4
% 2.09/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.09/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.09/0.98  --bmc1_ucm_layered_model                none
% 2.09/0.98  --bmc1_ucm_max_lemma_size               10
% 2.09/0.98  
% 2.09/0.98  ------ AIG Options
% 2.09/0.98  
% 2.09/0.98  --aig_mode                              false
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation Options
% 2.09/0.98  
% 2.09/0.98  --instantiation_flag                    true
% 2.09/0.98  --inst_sos_flag                         false
% 2.09/0.98  --inst_sos_phase                        true
% 2.09/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel_side                     num_symb
% 2.09/0.98  --inst_solver_per_active                1400
% 2.09/0.98  --inst_solver_calls_frac                1.
% 2.09/0.98  --inst_passive_queue_type               priority_queues
% 2.09/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.09/0.98  --inst_passive_queues_freq              [25;2]
% 2.09/0.98  --inst_dismatching                      true
% 2.09/0.98  --inst_eager_unprocessed_to_passive     true
% 2.09/0.98  --inst_prop_sim_given                   true
% 2.09/0.98  --inst_prop_sim_new                     false
% 2.09/0.98  --inst_subs_new                         false
% 2.09/0.98  --inst_eq_res_simp                      false
% 2.09/0.98  --inst_subs_given                       false
% 2.09/0.98  --inst_orphan_elimination               true
% 2.09/0.98  --inst_learning_loop_flag               true
% 2.09/0.98  --inst_learning_start                   3000
% 2.09/0.98  --inst_learning_factor                  2
% 2.09/0.98  --inst_start_prop_sim_after_learn       3
% 2.09/0.98  --inst_sel_renew                        solver
% 2.09/0.98  --inst_lit_activity_flag                true
% 2.09/0.98  --inst_restr_to_given                   false
% 2.09/0.98  --inst_activity_threshold               500
% 2.09/0.98  --inst_out_proof                        true
% 2.09/0.98  
% 2.09/0.98  ------ Resolution Options
% 2.09/0.98  
% 2.09/0.98  --resolution_flag                       true
% 2.09/0.98  --res_lit_sel                           adaptive
% 2.09/0.98  --res_lit_sel_side                      none
% 2.09/0.98  --res_ordering                          kbo
% 2.09/0.98  --res_to_prop_solver                    active
% 2.09/0.98  --res_prop_simpl_new                    false
% 2.09/0.98  --res_prop_simpl_given                  true
% 2.09/0.98  --res_passive_queue_type                priority_queues
% 2.09/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.09/0.98  --res_passive_queues_freq               [15;5]
% 2.09/0.98  --res_forward_subs                      full
% 2.09/0.98  --res_backward_subs                     full
% 2.09/0.98  --res_forward_subs_resolution           true
% 2.09/0.98  --res_backward_subs_resolution          true
% 2.09/0.98  --res_orphan_elimination                true
% 2.09/0.98  --res_time_limit                        2.
% 2.09/0.98  --res_out_proof                         true
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Options
% 2.09/0.98  
% 2.09/0.98  --superposition_flag                    true
% 2.09/0.98  --sup_passive_queue_type                priority_queues
% 2.09/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.09/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.09/0.98  --demod_completeness_check              fast
% 2.09/0.98  --demod_use_ground                      true
% 2.09/0.98  --sup_to_prop_solver                    passive
% 2.09/0.98  --sup_prop_simpl_new                    true
% 2.09/0.98  --sup_prop_simpl_given                  true
% 2.09/0.98  --sup_fun_splitting                     false
% 2.09/0.98  --sup_smt_interval                      50000
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Simplification Setup
% 2.09/0.98  
% 2.09/0.98  --sup_indices_passive                   []
% 2.09/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.09/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_full_bw                           [BwDemod]
% 2.09/0.98  --sup_immed_triv                        [TrivRules]
% 2.09/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.09/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_immed_bw_main                     []
% 2.09/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.09/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  
% 2.09/0.98  ------ Combination Options
% 2.09/0.98  
% 2.09/0.98  --comb_res_mult                         3
% 2.09/0.98  --comb_sup_mult                         2
% 2.09/0.98  --comb_inst_mult                        10
% 2.09/0.98  
% 2.09/0.98  ------ Debug Options
% 2.09/0.98  
% 2.09/0.98  --dbg_backtrace                         false
% 2.09/0.98  --dbg_dump_prop_clauses                 false
% 2.09/0.98  --dbg_dump_prop_clauses_file            -
% 2.09/0.98  --dbg_out_stat                          false
% 2.09/0.98  ------ Parsing...
% 2.09/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.09/0.98  ------ Proving...
% 2.09/0.98  ------ Problem Properties 
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  clauses                                 19
% 2.09/0.98  conjectures                             3
% 2.09/0.98  EPR                                     3
% 2.09/0.98  Horn                                    16
% 2.09/0.98  unary                                   4
% 2.09/0.98  binary                                  8
% 2.09/0.98  lits                                    43
% 2.09/0.98  lits eq                                 16
% 2.09/0.98  fd_pure                                 0
% 2.09/0.98  fd_pseudo                               0
% 2.09/0.98  fd_cond                                 7
% 2.09/0.98  fd_pseudo_cond                          1
% 2.09/0.98  AC symbols                              0
% 2.09/0.98  
% 2.09/0.98  ------ Schedule dynamic 5 is on 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  ------ 
% 2.09/0.98  Current options:
% 2.09/0.98  ------ 
% 2.09/0.98  
% 2.09/0.98  ------ Input Options
% 2.09/0.98  
% 2.09/0.98  --out_options                           all
% 2.09/0.98  --tptp_safe_out                         true
% 2.09/0.98  --problem_path                          ""
% 2.09/0.98  --include_path                          ""
% 2.09/0.98  --clausifier                            res/vclausify_rel
% 2.09/0.98  --clausifier_options                    --mode clausify
% 2.09/0.98  --stdin                                 false
% 2.09/0.98  --stats_out                             all
% 2.09/0.98  
% 2.09/0.98  ------ General Options
% 2.09/0.98  
% 2.09/0.98  --fof                                   false
% 2.09/0.98  --time_out_real                         305.
% 2.09/0.98  --time_out_virtual                      -1.
% 2.09/0.98  --symbol_type_check                     false
% 2.09/0.98  --clausify_out                          false
% 2.09/0.98  --sig_cnt_out                           false
% 2.09/0.98  --trig_cnt_out                          false
% 2.09/0.98  --trig_cnt_out_tolerance                1.
% 2.09/0.98  --trig_cnt_out_sk_spl                   false
% 2.09/0.98  --abstr_cl_out                          false
% 2.09/0.98  
% 2.09/0.98  ------ Global Options
% 2.09/0.98  
% 2.09/0.98  --schedule                              default
% 2.09/0.98  --add_important_lit                     false
% 2.09/0.98  --prop_solver_per_cl                    1000
% 2.09/0.98  --min_unsat_core                        false
% 2.09/0.98  --soft_assumptions                      false
% 2.09/0.98  --soft_lemma_size                       3
% 2.09/0.98  --prop_impl_unit_size                   0
% 2.09/0.98  --prop_impl_unit                        []
% 2.09/0.98  --share_sel_clauses                     true
% 2.09/0.98  --reset_solvers                         false
% 2.09/0.98  --bc_imp_inh                            [conj_cone]
% 2.09/0.98  --conj_cone_tolerance                   3.
% 2.09/0.98  --extra_neg_conj                        none
% 2.09/0.98  --large_theory_mode                     true
% 2.09/0.98  --prolific_symb_bound                   200
% 2.09/0.98  --lt_threshold                          2000
% 2.09/0.98  --clause_weak_htbl                      true
% 2.09/0.98  --gc_record_bc_elim                     false
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing Options
% 2.09/0.98  
% 2.09/0.98  --preprocessing_flag                    true
% 2.09/0.98  --time_out_prep_mult                    0.1
% 2.09/0.98  --splitting_mode                        input
% 2.09/0.98  --splitting_grd                         true
% 2.09/0.98  --splitting_cvd                         false
% 2.09/0.98  --splitting_cvd_svl                     false
% 2.09/0.98  --splitting_nvd                         32
% 2.09/0.98  --sub_typing                            true
% 2.09/0.98  --prep_gs_sim                           true
% 2.09/0.98  --prep_unflatten                        true
% 2.09/0.98  --prep_res_sim                          true
% 2.09/0.98  --prep_upred                            true
% 2.09/0.98  --prep_sem_filter                       exhaustive
% 2.09/0.98  --prep_sem_filter_out                   false
% 2.09/0.98  --pred_elim                             true
% 2.09/0.98  --res_sim_input                         true
% 2.09/0.98  --eq_ax_congr_red                       true
% 2.09/0.98  --pure_diseq_elim                       true
% 2.09/0.98  --brand_transform                       false
% 2.09/0.98  --non_eq_to_eq                          false
% 2.09/0.98  --prep_def_merge                        true
% 2.09/0.98  --prep_def_merge_prop_impl              false
% 2.09/0.98  --prep_def_merge_mbd                    true
% 2.09/0.98  --prep_def_merge_tr_red                 false
% 2.09/0.98  --prep_def_merge_tr_cl                  false
% 2.09/0.98  --smt_preprocessing                     true
% 2.09/0.98  --smt_ac_axioms                         fast
% 2.09/0.98  --preprocessed_out                      false
% 2.09/0.98  --preprocessed_stats                    false
% 2.09/0.98  
% 2.09/0.98  ------ Abstraction refinement Options
% 2.09/0.98  
% 2.09/0.98  --abstr_ref                             []
% 2.09/0.98  --abstr_ref_prep                        false
% 2.09/0.98  --abstr_ref_until_sat                   false
% 2.09/0.98  --abstr_ref_sig_restrict                funpre
% 2.09/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.09/0.98  --abstr_ref_under                       []
% 2.09/0.98  
% 2.09/0.98  ------ SAT Options
% 2.09/0.98  
% 2.09/0.98  --sat_mode                              false
% 2.09/0.98  --sat_fm_restart_options                ""
% 2.09/0.98  --sat_gr_def                            false
% 2.09/0.98  --sat_epr_types                         true
% 2.09/0.98  --sat_non_cyclic_types                  false
% 2.09/0.98  --sat_finite_models                     false
% 2.09/0.98  --sat_fm_lemmas                         false
% 2.09/0.98  --sat_fm_prep                           false
% 2.09/0.98  --sat_fm_uc_incr                        true
% 2.09/0.98  --sat_out_model                         small
% 2.09/0.98  --sat_out_clauses                       false
% 2.09/0.98  
% 2.09/0.98  ------ QBF Options
% 2.09/0.98  
% 2.09/0.98  --qbf_mode                              false
% 2.09/0.98  --qbf_elim_univ                         false
% 2.09/0.98  --qbf_dom_inst                          none
% 2.09/0.98  --qbf_dom_pre_inst                      false
% 2.09/0.98  --qbf_sk_in                             false
% 2.09/0.98  --qbf_pred_elim                         true
% 2.09/0.98  --qbf_split                             512
% 2.09/0.98  
% 2.09/0.98  ------ BMC1 Options
% 2.09/0.98  
% 2.09/0.98  --bmc1_incremental                      false
% 2.09/0.98  --bmc1_axioms                           reachable_all
% 2.09/0.98  --bmc1_min_bound                        0
% 2.09/0.98  --bmc1_max_bound                        -1
% 2.09/0.98  --bmc1_max_bound_default                -1
% 2.09/0.98  --bmc1_symbol_reachability              true
% 2.09/0.98  --bmc1_property_lemmas                  false
% 2.09/0.98  --bmc1_k_induction                      false
% 2.09/0.98  --bmc1_non_equiv_states                 false
% 2.09/0.98  --bmc1_deadlock                         false
% 2.09/0.98  --bmc1_ucm                              false
% 2.09/0.98  --bmc1_add_unsat_core                   none
% 2.09/0.98  --bmc1_unsat_core_children              false
% 2.09/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.09/0.98  --bmc1_out_stat                         full
% 2.09/0.98  --bmc1_ground_init                      false
% 2.09/0.98  --bmc1_pre_inst_next_state              false
% 2.09/0.98  --bmc1_pre_inst_state                   false
% 2.09/0.98  --bmc1_pre_inst_reach_state             false
% 2.09/0.98  --bmc1_out_unsat_core                   false
% 2.09/0.98  --bmc1_aig_witness_out                  false
% 2.09/0.98  --bmc1_verbose                          false
% 2.09/0.98  --bmc1_dump_clauses_tptp                false
% 2.09/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.09/0.98  --bmc1_dump_file                        -
% 2.09/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.09/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.09/0.98  --bmc1_ucm_extend_mode                  1
% 2.09/0.98  --bmc1_ucm_init_mode                    2
% 2.09/0.98  --bmc1_ucm_cone_mode                    none
% 2.09/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.09/0.98  --bmc1_ucm_relax_model                  4
% 2.09/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.09/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.09/0.98  --bmc1_ucm_layered_model                none
% 2.09/0.98  --bmc1_ucm_max_lemma_size               10
% 2.09/0.98  
% 2.09/0.98  ------ AIG Options
% 2.09/0.98  
% 2.09/0.98  --aig_mode                              false
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation Options
% 2.09/0.98  
% 2.09/0.98  --instantiation_flag                    true
% 2.09/0.98  --inst_sos_flag                         false
% 2.09/0.98  --inst_sos_phase                        true
% 2.09/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.09/0.98  --inst_lit_sel_side                     none
% 2.09/0.98  --inst_solver_per_active                1400
% 2.09/0.98  --inst_solver_calls_frac                1.
% 2.09/0.98  --inst_passive_queue_type               priority_queues
% 2.09/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.09/0.98  --inst_passive_queues_freq              [25;2]
% 2.09/0.98  --inst_dismatching                      true
% 2.09/0.98  --inst_eager_unprocessed_to_passive     true
% 2.09/0.98  --inst_prop_sim_given                   true
% 2.09/0.98  --inst_prop_sim_new                     false
% 2.09/0.98  --inst_subs_new                         false
% 2.09/0.98  --inst_eq_res_simp                      false
% 2.09/0.98  --inst_subs_given                       false
% 2.09/0.98  --inst_orphan_elimination               true
% 2.09/0.98  --inst_learning_loop_flag               true
% 2.09/0.98  --inst_learning_start                   3000
% 2.09/0.98  --inst_learning_factor                  2
% 2.09/0.98  --inst_start_prop_sim_after_learn       3
% 2.09/0.98  --inst_sel_renew                        solver
% 2.09/0.98  --inst_lit_activity_flag                true
% 2.09/0.98  --inst_restr_to_given                   false
% 2.09/0.98  --inst_activity_threshold               500
% 2.09/0.98  --inst_out_proof                        true
% 2.09/0.98  
% 2.09/0.98  ------ Resolution Options
% 2.09/0.98  
% 2.09/0.98  --resolution_flag                       false
% 2.09/0.98  --res_lit_sel                           adaptive
% 2.09/0.98  --res_lit_sel_side                      none
% 2.09/0.98  --res_ordering                          kbo
% 2.09/0.98  --res_to_prop_solver                    active
% 2.09/0.98  --res_prop_simpl_new                    false
% 2.09/0.98  --res_prop_simpl_given                  true
% 2.09/0.98  --res_passive_queue_type                priority_queues
% 2.09/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.09/0.98  --res_passive_queues_freq               [15;5]
% 2.09/0.98  --res_forward_subs                      full
% 2.09/0.98  --res_backward_subs                     full
% 2.09/0.98  --res_forward_subs_resolution           true
% 2.09/0.98  --res_backward_subs_resolution          true
% 2.09/0.98  --res_orphan_elimination                true
% 2.09/0.98  --res_time_limit                        2.
% 2.09/0.98  --res_out_proof                         true
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Options
% 2.09/0.98  
% 2.09/0.98  --superposition_flag                    true
% 2.09/0.98  --sup_passive_queue_type                priority_queues
% 2.09/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.09/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.09/0.98  --demod_completeness_check              fast
% 2.09/0.98  --demod_use_ground                      true
% 2.09/0.98  --sup_to_prop_solver                    passive
% 2.09/0.98  --sup_prop_simpl_new                    true
% 2.09/0.98  --sup_prop_simpl_given                  true
% 2.09/0.98  --sup_fun_splitting                     false
% 2.09/0.98  --sup_smt_interval                      50000
% 2.09/0.98  
% 2.09/0.98  ------ Superposition Simplification Setup
% 2.09/0.98  
% 2.09/0.98  --sup_indices_passive                   []
% 2.09/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.09/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.09/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_full_bw                           [BwDemod]
% 2.09/0.98  --sup_immed_triv                        [TrivRules]
% 2.09/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.09/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_immed_bw_main                     []
% 2.09/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.09/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.09/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.09/0.98  
% 2.09/0.98  ------ Combination Options
% 2.09/0.98  
% 2.09/0.98  --comb_res_mult                         3
% 2.09/0.98  --comb_sup_mult                         2
% 2.09/0.98  --comb_inst_mult                        10
% 2.09/0.98  
% 2.09/0.98  ------ Debug Options
% 2.09/0.98  
% 2.09/0.98  --dbg_backtrace                         false
% 2.09/0.98  --dbg_dump_prop_clauses                 false
% 2.09/0.98  --dbg_dump_prop_clauses_file            -
% 2.09/0.98  --dbg_out_stat                          false
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  ------ Proving...
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  % SZS status Theorem for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  fof(f1,axiom,(
% 2.09/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f34,plain,(
% 2.09/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.09/0.98    inference(nnf_transformation,[],[f1])).
% 2.09/0.98  
% 2.09/0.98  fof(f35,plain,(
% 2.09/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.09/0.98    inference(flattening,[],[f34])).
% 2.09/0.98  
% 2.09/0.98  fof(f43,plain,(
% 2.09/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.09/0.98    inference(cnf_transformation,[],[f35])).
% 2.09/0.98  
% 2.09/0.98  fof(f74,plain,(
% 2.09/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.09/0.98    inference(equality_resolution,[],[f43])).
% 2.09/0.98  
% 2.09/0.98  fof(f3,axiom,(
% 2.09/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f36,plain,(
% 2.09/0.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.09/0.98    inference(nnf_transformation,[],[f3])).
% 2.09/0.98  
% 2.09/0.98  fof(f48,plain,(
% 2.09/0.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f36])).
% 2.09/0.98  
% 2.09/0.98  fof(f5,axiom,(
% 2.09/0.98    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f19,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.09/0.98    inference(ennf_transformation,[],[f5])).
% 2.09/0.98  
% 2.09/0.98  fof(f50,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f19])).
% 2.09/0.98  
% 2.09/0.98  fof(f12,axiom,(
% 2.09/0.98    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f28,plain,(
% 2.09/0.98    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.09/0.98    inference(ennf_transformation,[],[f12])).
% 2.09/0.98  
% 2.09/0.98  fof(f29,plain,(
% 2.09/0.98    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 2.09/0.98    inference(flattening,[],[f28])).
% 2.09/0.98  
% 2.09/0.98  fof(f62,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f29])).
% 2.09/0.98  
% 2.09/0.98  fof(f14,conjecture,(
% 2.09/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f15,negated_conjecture,(
% 2.09/0.98    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 2.09/0.98    inference(negated_conjecture,[],[f14])).
% 2.09/0.98  
% 2.09/0.98  fof(f32,plain,(
% 2.09/0.98    ? [X0,X1,X2] : (? [X3] : (((~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_partfun1(X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 2.09/0.98    inference(ennf_transformation,[],[f15])).
% 2.09/0.98  
% 2.09/0.98  fof(f33,plain,(
% 2.09/0.98    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 2.09/0.98    inference(flattening,[],[f32])).
% 2.09/0.98  
% 2.09/0.98  fof(f41,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_relset_1(X0,X1,X2,sK4) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(sK4,X0,X1) & v1_funct_1(sK4))) )),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f40,plain,(
% 2.09/0.98    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (~r2_relset_1(sK1,sK2,sK3,X3) & (k1_xboole_0 = sK1 | k1_xboole_0 != sK2) & r1_partfun1(sK3,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X3,sK1,sK2) & v1_funct_1(X3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3))),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f42,plain,(
% 2.09/0.98    (~r2_relset_1(sK1,sK2,sK3,sK4) & (k1_xboole_0 = sK1 | k1_xboole_0 != sK2) & r1_partfun1(sK3,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3)),
% 2.09/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f33,f41,f40])).
% 2.09/0.98  
% 2.09/0.98  fof(f68,plain,(
% 2.09/0.98    v1_funct_2(sK4,sK1,sK2)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f67,plain,(
% 2.09/0.98    v1_funct_1(sK4)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f69,plain,(
% 2.09/0.98    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f11,axiom,(
% 2.09/0.98    ! [X0] : ~(! [X1] : ~(! [X2,X3] : ~(k4_tarski(X2,X3) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f27,plain,(
% 2.09/0.98    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 2.09/0.98    inference(ennf_transformation,[],[f11])).
% 2.09/0.98  
% 2.09/0.98  fof(f38,plain,(
% 2.09/0.98    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X3,X2] : (k4_tarski(X2,X3) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)))),
% 2.09/0.98    introduced(choice_axiom,[])).
% 2.09/0.98  
% 2.09/0.98  fof(f39,plain,(
% 2.09/0.98    ! [X0] : ((! [X2,X3] : (k4_tarski(X2,X3) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)) | k1_xboole_0 = X0)),
% 2.09/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f38])).
% 2.09/0.98  
% 2.09/0.98  fof(f58,plain,(
% 2.09/0.98    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 2.09/0.98    inference(cnf_transformation,[],[f39])).
% 2.09/0.98  
% 2.09/0.98  fof(f13,axiom,(
% 2.09/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ((r1_partfun1(X2,X3) & v1_partfun1(X3,X0) & v1_partfun1(X2,X0)) => X2 = X3)))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f30,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (! [X3] : ((X2 = X3 | (~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.09/0.98    inference(ennf_transformation,[],[f13])).
% 2.09/0.98  
% 2.09/0.98  fof(f31,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (! [X3] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.09/0.98    inference(flattening,[],[f30])).
% 2.09/0.98  
% 2.09/0.98  fof(f63,plain,(
% 2.09/0.98    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f31])).
% 2.09/0.98  
% 2.09/0.98  fof(f70,plain,(
% 2.09/0.98    r1_partfun1(sK3,sK4)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f64,plain,(
% 2.09/0.98    v1_funct_1(sK3)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f66,plain,(
% 2.09/0.98    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f65,plain,(
% 2.09/0.98    v1_funct_2(sK3,sK1,sK2)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f10,axiom,(
% 2.09/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f25,plain,(
% 2.09/0.98    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 2.09/0.98    inference(ennf_transformation,[],[f10])).
% 2.09/0.98  
% 2.09/0.98  fof(f26,plain,(
% 2.09/0.98    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.09/0.98    inference(flattening,[],[f25])).
% 2.09/0.98  
% 2.09/0.98  fof(f57,plain,(
% 2.09/0.98    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.09/0.98    inference(cnf_transformation,[],[f26])).
% 2.09/0.98  
% 2.09/0.98  fof(f72,plain,(
% 2.09/0.98    ~r2_relset_1(sK1,sK2,sK3,sK4)),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f71,plain,(
% 2.09/0.98    k1_xboole_0 = sK1 | k1_xboole_0 != sK2),
% 2.09/0.98    inference(cnf_transformation,[],[f42])).
% 2.09/0.98  
% 2.09/0.98  fof(f9,axiom,(
% 2.09/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f16,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 2.09/0.98    inference(pure_predicate_removal,[],[f9])).
% 2.09/0.98  
% 2.09/0.98  fof(f24,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.09/0.98    inference(ennf_transformation,[],[f16])).
% 2.09/0.98  
% 2.09/0.98  fof(f56,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.09/0.98    inference(cnf_transformation,[],[f24])).
% 2.09/0.98  
% 2.09/0.98  fof(f6,axiom,(
% 2.09/0.98    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f20,plain,(
% 2.09/0.98    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.09/0.98    inference(ennf_transformation,[],[f6])).
% 2.09/0.98  
% 2.09/0.98  fof(f37,plain,(
% 2.09/0.98    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.09/0.98    inference(nnf_transformation,[],[f20])).
% 2.09/0.98  
% 2.09/0.98  fof(f51,plain,(
% 2.09/0.98    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f37])).
% 2.09/0.98  
% 2.09/0.98  fof(f8,axiom,(
% 2.09/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f23,plain,(
% 2.09/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.09/0.98    inference(ennf_transformation,[],[f8])).
% 2.09/0.98  
% 2.09/0.98  fof(f55,plain,(
% 2.09/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.09/0.98    inference(cnf_transformation,[],[f23])).
% 2.09/0.98  
% 2.09/0.98  fof(f7,axiom,(
% 2.09/0.98    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 2.09/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.09/0.98  
% 2.09/0.98  fof(f21,plain,(
% 2.09/0.98    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.09/0.98    inference(ennf_transformation,[],[f7])).
% 2.09/0.98  
% 2.09/0.98  fof(f22,plain,(
% 2.09/0.98    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 2.09/0.98    inference(flattening,[],[f21])).
% 2.09/0.98  
% 2.09/0.98  fof(f54,plain,(
% 2.09/0.98    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 2.09/0.98    inference(cnf_transformation,[],[f22])).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2,plain,
% 2.09/0.98      ( r1_tarski(X0,X0) ),
% 2.09/0.98      inference(cnf_transformation,[],[f74]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1245,plain,
% 2.09/0.98      ( r1_tarski(X0,X0) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_4,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.09/0.98      inference(cnf_transformation,[],[f48]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1243,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 2.09/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_7,plain,
% 2.09/0.98      ( ~ r2_hidden(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 2.09/0.98      | ~ v1_xboole_0(X2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f50]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_18,plain,
% 2.09/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 2.09/0.98      | v1_partfun1(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | ~ v1_funct_1(X0)
% 2.09/0.98      | v1_xboole_0(X2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f62]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_25,negated_conjecture,
% 2.09/0.98      ( v1_funct_2(sK4,sK1,sK2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f68]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_501,plain,
% 2.09/0.98      ( v1_partfun1(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | ~ v1_funct_1(X0)
% 2.09/0.98      | v1_xboole_0(X2)
% 2.09/0.98      | sK4 != X0
% 2.09/0.98      | sK2 != X2
% 2.09/0.98      | sK1 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_18,c_25]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_502,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1)
% 2.09/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | ~ v1_funct_1(sK4)
% 2.09/0.98      | v1_xboole_0(sK2) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_501]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_26,negated_conjecture,
% 2.09/0.98      ( v1_funct_1(sK4) ),
% 2.09/0.98      inference(cnf_transformation,[],[f67]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_24,negated_conjecture,
% 2.09/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f69]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_504,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1) | v1_xboole_0(sK2) ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_502,c_26,c_24]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_550,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1)
% 2.09/0.98      | ~ r2_hidden(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 2.09/0.98      | sK2 != X2 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_504]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_551,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1)
% 2.09/0.98      | ~ r2_hidden(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(sK2)) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_550]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_17,plain,
% 2.09/0.98      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 2.09/0.98      inference(cnf_transformation,[],[f58]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_573,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
% 2.09/0.98      | X1 != X0
% 2.09/0.98      | sK0(X1) != X2
% 2.09/0.98      | k1_xboole_0 = X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_551,c_17]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_574,plain,
% 2.09/0.98      ( v1_partfun1(sK4,sK1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
% 2.09/0.98      | k1_xboole_0 = X0 ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_573]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1233,plain,
% 2.09/0.98      ( k1_xboole_0 = X0
% 2.09/0.98      | v1_partfun1(sK4,sK1) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_574]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1820,plain,
% 2.09/0.98      ( k1_xboole_0 = X0
% 2.09/0.98      | v1_partfun1(sK4,sK1) = iProver_top
% 2.09/0.98      | r1_tarski(X0,sK2) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1243,c_1233]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1238,plain,
% 2.09/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_20,plain,
% 2.09/0.98      ( ~ r1_partfun1(X0,X1)
% 2.09/0.98      | ~ v1_partfun1(X1,X2)
% 2.09/0.98      | ~ v1_partfun1(X0,X2)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.09/0.98      | ~ v1_funct_1(X0)
% 2.09/0.98      | ~ v1_funct_1(X1)
% 2.09/0.98      | X1 = X0 ),
% 2.09/0.98      inference(cnf_transformation,[],[f63]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_23,negated_conjecture,
% 2.09/0.98      ( r1_partfun1(sK3,sK4) ),
% 2.09/0.98      inference(cnf_transformation,[],[f70]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_468,plain,
% 2.09/0.98      ( ~ v1_partfun1(X0,X1)
% 2.09/0.98      | ~ v1_partfun1(X2,X1)
% 2.09/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 2.09/0.98      | ~ v1_funct_1(X2)
% 2.09/0.98      | ~ v1_funct_1(X0)
% 2.09/0.98      | X0 = X2
% 2.09/0.98      | sK4 != X0
% 2.09/0.98      | sK3 != X2 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_20,c_23]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_469,plain,
% 2.09/0.98      ( ~ v1_partfun1(sK4,X0)
% 2.09/0.98      | ~ v1_partfun1(sK3,X0)
% 2.09/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.09/0.98      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.09/0.98      | ~ v1_funct_1(sK4)
% 2.09/0.98      | ~ v1_funct_1(sK3)
% 2.09/0.98      | sK4 = sK3 ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_468]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_29,negated_conjecture,
% 2.09/0.98      ( v1_funct_1(sK3) ),
% 2.09/0.98      inference(cnf_transformation,[],[f64]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_473,plain,
% 2.09/0.98      ( ~ v1_partfun1(sK4,X0)
% 2.09/0.98      | ~ v1_partfun1(sK3,X0)
% 2.09/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.09/0.98      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.09/0.98      | sK4 = sK3 ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_469,c_29,c_26]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1234,plain,
% 2.09/0.98      ( sK4 = sK3
% 2.09/0.98      | v1_partfun1(sK4,X0) != iProver_top
% 2.09/0.98      | v1_partfun1(sK3,X0) != iProver_top
% 2.09/0.98      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 2.09/0.98      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_473]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1454,plain,
% 2.09/0.98      ( sK4 = sK3
% 2.09/0.98      | v1_partfun1(sK4,sK1) != iProver_top
% 2.09/0.98      | v1_partfun1(sK3,sK1) != iProver_top
% 2.09/0.98      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1238,c_1234]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_27,negated_conjecture,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f66]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_32,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1457,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1) != iProver_top
% 2.09/0.98      | v1_partfun1(sK4,sK1) != iProver_top
% 2.09/0.98      | sK4 = sK3 ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_1454,c_32]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1458,plain,
% 2.09/0.98      ( sK4 = sK3
% 2.09/0.98      | v1_partfun1(sK4,sK1) != iProver_top
% 2.09/0.98      | v1_partfun1(sK3,sK1) != iProver_top ),
% 2.09/0.98      inference(renaming,[status(thm)],[c_1457]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_834,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1432,plain,
% 2.09/0.98      ( sK4 != X0 | sK3 != X0 | sK3 = sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_834]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1705,plain,
% 2.09/0.98      ( sK4 != sK3 | sK3 = sK4 | sK3 != sK3 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_1432]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_833,plain,( X0 = X0 ),theory(equality) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1803,plain,
% 2.09/0.98      ( sK3 = sK3 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_833]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_28,negated_conjecture,
% 2.09/0.98      ( v1_funct_2(sK3,sK1,sK2) ),
% 2.09/0.98      inference(cnf_transformation,[],[f65]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_515,plain,
% 2.09/0.98      ( v1_partfun1(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | ~ v1_funct_1(X0)
% 2.09/0.98      | v1_xboole_0(X2)
% 2.09/0.98      | sK3 != X0
% 2.09/0.98      | sK2 != X2
% 2.09/0.98      | sK1 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_18,c_28]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_516,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1)
% 2.09/0.98      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | ~ v1_funct_1(sK3)
% 2.09/0.98      | v1_xboole_0(sK2) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_515]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_518,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1) | v1_xboole_0(sK2) ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_516,c_29,c_27]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_535,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1)
% 2.09/0.98      | ~ r2_hidden(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 2.09/0.98      | sK2 != X2 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_518]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_536,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1)
% 2.09/0.98      | ~ r2_hidden(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X1,k1_zfmisc_1(sK2)) ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_535]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_588,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
% 2.09/0.98      | X1 != X0
% 2.09/0.98      | sK0(X1) != X2
% 2.09/0.98      | k1_xboole_0 = X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_536,c_17]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_589,plain,
% 2.09/0.98      ( v1_partfun1(sK3,sK1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
% 2.09/0.98      | k1_xboole_0 = X0 ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_588]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1232,plain,
% 2.09/0.98      ( k1_xboole_0 = X0
% 2.09/0.98      | v1_partfun1(sK3,sK1) = iProver_top
% 2.09/0.98      | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_589]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1821,plain,
% 2.09/0.98      ( k1_xboole_0 = X0
% 2.09/0.98      | v1_partfun1(sK3,sK1) = iProver_top
% 2.09/0.98      | r1_tarski(X0,sK2) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1243,c_1232]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_14,plain,
% 2.09/0.98      ( r2_relset_1(X0,X1,X2,X2)
% 2.09/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.09/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f57]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_21,negated_conjecture,
% 2.09/0.98      ( ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
% 2.09/0.98      inference(cnf_transformation,[],[f72]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_363,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | sK4 != X0
% 2.09/0.98      | sK3 != X0
% 2.09/0.98      | sK2 != X2
% 2.09/0.98      | sK1 != X1 ),
% 2.09/0.98      inference(resolution_lifted,[status(thm)],[c_14,c_21]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_364,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | sK3 != sK4 ),
% 2.09/0.98      inference(unflattening,[status(thm)],[c_363]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_368,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | sK3 != sK4 ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_364,c_24]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1891,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | sK3 != sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_368]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2148,plain,
% 2.09/0.98      ( k1_xboole_0 = X0 | r1_tarski(X0,sK2) != iProver_top ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_1820,c_24,c_1458,c_1705,c_1803,c_1821,c_1891]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2154,plain,
% 2.09/0.98      ( sK2 = k1_xboole_0 ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_1245,c_2148]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1237,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2168,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
% 2.09/0.98      inference(demodulation,[status(thm)],[c_2154,c_1237]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_22,negated_conjecture,
% 2.09/0.98      ( k1_xboole_0 != sK2 | k1_xboole_0 = sK1 ),
% 2.09/0.98      inference(cnf_transformation,[],[f71]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2169,plain,
% 2.09/0.98      ( sK1 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 2.09/0.98      inference(demodulation,[status(thm)],[c_2154,c_22]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2170,plain,
% 2.09/0.98      ( sK1 = k1_xboole_0 ),
% 2.09/0.98      inference(equality_resolution_simp,[status(thm)],[c_2169]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2173,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
% 2.09/0.98      inference(light_normalisation,[status(thm)],[c_2168,c_2170]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_13,plain,
% 2.09/0.98      ( v5_relat_1(X0,X1)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 2.09/0.98      inference(cnf_transformation,[],[f56]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_9,plain,
% 2.09/0.98      ( ~ v5_relat_1(X0,X1)
% 2.09/0.98      | r1_tarski(k2_relat_1(X0),X1)
% 2.09/0.98      | ~ v1_relat_1(X0) ),
% 2.09/0.98      inference(cnf_transformation,[],[f51]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_413,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | r1_tarski(k2_relat_1(X0),X2)
% 2.09/0.98      | ~ v1_relat_1(X0) ),
% 2.09/0.98      inference(resolution,[status(thm)],[c_13,c_9]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_12,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | v1_relat_1(X0) ),
% 2.09/0.98      inference(cnf_transformation,[],[f55]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_417,plain,
% 2.09/0.98      ( r1_tarski(k2_relat_1(X0),X2)
% 2.09/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.09/0.98      inference(global_propositional_subsumption,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_413,c_12]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_418,plain,
% 2.09/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.09/0.98      | r1_tarski(k2_relat_1(X0),X2) ),
% 2.09/0.98      inference(renaming,[status(thm)],[c_417]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1235,plain,
% 2.09/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.09/0.98      | r1_tarski(k2_relat_1(X0),X2) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_418]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3272,plain,
% 2.09/0.98      ( r1_tarski(k2_relat_1(sK3),k1_xboole_0) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2173,c_1235]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2161,plain,
% 2.09/0.98      ( k1_xboole_0 = X0 | r1_tarski(X0,k1_xboole_0) != iProver_top ),
% 2.09/0.98      inference(demodulation,[status(thm)],[c_2154,c_2148]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3622,plain,
% 2.09/0.98      ( k2_relat_1(sK3) = k1_xboole_0 ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_3272,c_2161]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_10,plain,
% 2.09/0.98      ( ~ v1_relat_1(X0)
% 2.09/0.98      | k2_relat_1(X0) != k1_xboole_0
% 2.09/0.98      | k1_xboole_0 = X0 ),
% 2.09/0.98      inference(cnf_transformation,[],[f54]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1241,plain,
% 2.09/0.98      ( k2_relat_1(X0) != k1_xboole_0
% 2.09/0.98      | k1_xboole_0 = X0
% 2.09/0.98      | v1_relat_1(X0) != iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3881,plain,
% 2.09/0.98      ( sK3 = k1_xboole_0 | v1_relat_1(sK3) != iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_3622,c_1241]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2167,plain,
% 2.09/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
% 2.09/0.98      inference(demodulation,[status(thm)],[c_2154,c_1238]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2176,plain,
% 2.09/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
% 2.09/0.98      inference(light_normalisation,[status(thm)],[c_2167,c_2170]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3271,plain,
% 2.09/0.98      ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) = iProver_top ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_2176,c_1235]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_3612,plain,
% 2.09/0.98      ( k2_relat_1(sK4) = k1_xboole_0 ),
% 2.09/0.98      inference(superposition,[status(thm)],[c_3271,c_2161]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1559,plain,
% 2.09/0.98      ( X0 != X1 | sK4 != X1 | sK4 = X0 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_834]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2385,plain,
% 2.09/0.98      ( X0 != sK4 | sK4 = X0 | sK4 != sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_1559]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_2386,plain,
% 2.09/0.98      ( sK4 != sK4 | sK4 = k1_xboole_0 | k1_xboole_0 != sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_2385]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1767,plain,
% 2.09/0.98      ( sK4 = sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_833]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1747,plain,
% 2.09/0.98      ( ~ v1_relat_1(sK4)
% 2.09/0.98      | k2_relat_1(sK4) != k1_xboole_0
% 2.09/0.98      | k1_xboole_0 = sK4 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_10]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1433,plain,
% 2.09/0.98      ( sK4 != k1_xboole_0 | sK3 = sK4 | sK3 != k1_xboole_0 ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_1432]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1398,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | v1_relat_1(sK3) ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_12]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1399,plain,
% 2.09/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 2.09/0.98      | v1_relat_1(sK3) = iProver_top ),
% 2.09/0.98      inference(predicate_to_equality,[status(thm)],[c_1398]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(c_1395,plain,
% 2.09/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.09/0.98      | v1_relat_1(sK4) ),
% 2.09/0.98      inference(instantiation,[status(thm)],[c_12]) ).
% 2.09/0.98  
% 2.09/0.98  cnf(contradiction,plain,
% 2.09/0.98      ( $false ),
% 2.09/0.98      inference(minisat,
% 2.09/0.98                [status(thm)],
% 2.09/0.98                [c_3881,c_3612,c_2386,c_1891,c_1767,c_1747,c_1433,c_1399,
% 2.09/0.98                 c_1395,c_24,c_32]) ).
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 2.09/0.98  
% 2.09/0.98  ------                               Statistics
% 2.09/0.98  
% 2.09/0.98  ------ General
% 2.09/0.98  
% 2.09/0.98  abstr_ref_over_cycles:                  0
% 2.09/0.98  abstr_ref_under_cycles:                 0
% 2.09/0.98  gc_basic_clause_elim:                   0
% 2.09/0.98  forced_gc_time:                         0
% 2.09/0.98  parsing_time:                           0.008
% 2.09/0.98  unif_index_cands_time:                  0.
% 2.09/0.98  unif_index_add_time:                    0.
% 2.09/0.98  orderings_time:                         0.
% 2.09/0.98  out_proof_time:                         0.01
% 2.09/0.98  total_time:                             0.137
% 2.09/0.98  num_of_symbols:                         53
% 2.09/0.98  num_of_terms:                           3120
% 2.09/0.98  
% 2.09/0.98  ------ Preprocessing
% 2.09/0.98  
% 2.09/0.98  num_of_splits:                          0
% 2.09/0.98  num_of_split_atoms:                     0
% 2.09/0.98  num_of_reused_defs:                     0
% 2.09/0.98  num_eq_ax_congr_red:                    23
% 2.09/0.98  num_of_sem_filtered_clauses:            1
% 2.09/0.98  num_of_subtypes:                        0
% 2.09/0.98  monotx_restored_types:                  0
% 2.09/0.98  sat_num_of_epr_types:                   0
% 2.09/0.98  sat_num_of_non_cyclic_types:            0
% 2.09/0.98  sat_guarded_non_collapsed_types:        0
% 2.09/0.98  num_pure_diseq_elim:                    0
% 2.09/0.98  simp_replaced_by:                       0
% 2.09/0.98  res_preprocessed:                       102
% 2.09/0.98  prep_upred:                             0
% 2.09/0.98  prep_unflattend:                        23
% 2.09/0.98  smt_new_axioms:                         0
% 2.09/0.98  pred_elim_cands:                        4
% 2.09/0.98  pred_elim:                              7
% 2.09/0.98  pred_elim_cl:                           9
% 2.09/0.98  pred_elim_cycles:                       11
% 2.09/0.98  merged_defs:                            8
% 2.09/0.98  merged_defs_ncl:                        0
% 2.09/0.98  bin_hyper_res:                          9
% 2.09/0.98  prep_cycles:                            4
% 2.09/0.98  pred_elim_time:                         0.006
% 2.09/0.98  splitting_time:                         0.
% 2.09/0.98  sem_filter_time:                        0.
% 2.09/0.98  monotx_time:                            0.
% 2.09/0.98  subtype_inf_time:                       0.
% 2.09/0.98  
% 2.09/0.98  ------ Problem properties
% 2.09/0.98  
% 2.09/0.98  clauses:                                19
% 2.09/0.98  conjectures:                            3
% 2.09/0.98  epr:                                    3
% 2.09/0.98  horn:                                   16
% 2.09/0.98  ground:                                 3
% 2.09/0.98  unary:                                  4
% 2.09/0.98  binary:                                 8
% 2.09/0.98  lits:                                   43
% 2.09/0.98  lits_eq:                                16
% 2.09/0.98  fd_pure:                                0
% 2.09/0.98  fd_pseudo:                              0
% 2.09/0.98  fd_cond:                                7
% 2.09/0.98  fd_pseudo_cond:                         1
% 2.09/0.98  ac_symbols:                             0
% 2.09/0.98  
% 2.09/0.98  ------ Propositional Solver
% 2.09/0.98  
% 2.09/0.98  prop_solver_calls:                      28
% 2.09/0.98  prop_fast_solver_calls:                 681
% 2.09/0.98  smt_solver_calls:                       0
% 2.09/0.98  smt_fast_solver_calls:                  0
% 2.09/0.98  prop_num_of_clauses:                    1422
% 2.09/0.98  prop_preprocess_simplified:             4593
% 2.09/0.98  prop_fo_subsumed:                       16
% 2.09/0.98  prop_solver_time:                       0.
% 2.09/0.98  smt_solver_time:                        0.
% 2.09/0.98  smt_fast_solver_time:                   0.
% 2.09/0.98  prop_fast_solver_time:                  0.
% 2.09/0.98  prop_unsat_core_time:                   0.
% 2.09/0.98  
% 2.09/0.98  ------ QBF
% 2.09/0.98  
% 2.09/0.98  qbf_q_res:                              0
% 2.09/0.98  qbf_num_tautologies:                    0
% 2.09/0.98  qbf_prep_cycles:                        0
% 2.09/0.98  
% 2.09/0.98  ------ BMC1
% 2.09/0.98  
% 2.09/0.98  bmc1_current_bound:                     -1
% 2.09/0.98  bmc1_last_solved_bound:                 -1
% 2.09/0.98  bmc1_unsat_core_size:                   -1
% 2.09/0.98  bmc1_unsat_core_parents_size:           -1
% 2.09/0.98  bmc1_merge_next_fun:                    0
% 2.09/0.98  bmc1_unsat_core_clauses_time:           0.
% 2.09/0.98  
% 2.09/0.98  ------ Instantiation
% 2.09/0.98  
% 2.09/0.98  inst_num_of_clauses:                    481
% 2.09/0.98  inst_num_in_passive:                    46
% 2.09/0.98  inst_num_in_active:                     209
% 2.09/0.98  inst_num_in_unprocessed:                226
% 2.09/0.98  inst_num_of_loops:                      260
% 2.09/0.98  inst_num_of_learning_restarts:          0
% 2.09/0.98  inst_num_moves_active_passive:          48
% 2.09/0.98  inst_lit_activity:                      0
% 2.09/0.98  inst_lit_activity_moves:                0
% 2.09/0.98  inst_num_tautologies:                   0
% 2.09/0.98  inst_num_prop_implied:                  0
% 2.09/0.98  inst_num_existing_simplified:           0
% 2.09/0.98  inst_num_eq_res_simplified:             0
% 2.09/0.98  inst_num_child_elim:                    0
% 2.09/0.98  inst_num_of_dismatching_blockings:      86
% 2.09/0.98  inst_num_of_non_proper_insts:           398
% 2.09/0.98  inst_num_of_duplicates:                 0
% 2.09/0.98  inst_inst_num_from_inst_to_res:         0
% 2.09/0.98  inst_dismatching_checking_time:         0.
% 2.09/0.98  
% 2.09/0.98  ------ Resolution
% 2.09/0.98  
% 2.09/0.98  res_num_of_clauses:                     0
% 2.09/0.98  res_num_in_passive:                     0
% 2.09/0.98  res_num_in_active:                      0
% 2.09/0.98  res_num_of_loops:                       106
% 2.09/0.98  res_forward_subset_subsumed:            38
% 2.09/0.98  res_backward_subset_subsumed:           0
% 2.09/0.98  res_forward_subsumed:                   0
% 2.09/0.98  res_backward_subsumed:                  0
% 2.09/0.98  res_forward_subsumption_resolution:     0
% 2.09/0.98  res_backward_subsumption_resolution:    0
% 2.09/0.98  res_clause_to_clause_subsumption:       181
% 2.09/0.98  res_orphan_elimination:                 0
% 2.09/0.98  res_tautology_del:                      48
% 2.09/0.98  res_num_eq_res_simplified:              0
% 2.09/0.98  res_num_sel_changes:                    0
% 2.09/0.98  res_moves_from_active_to_pass:          0
% 2.09/0.98  
% 2.09/0.98  ------ Superposition
% 2.09/0.98  
% 2.09/0.98  sup_time_total:                         0.
% 2.09/0.98  sup_time_generating:                    0.
% 2.09/0.98  sup_time_sim_full:                      0.
% 2.09/0.98  sup_time_sim_immed:                     0.
% 2.09/0.98  
% 2.09/0.98  sup_num_of_clauses:                     50
% 2.09/0.98  sup_num_in_active:                      38
% 2.09/0.98  sup_num_in_passive:                     12
% 2.09/0.98  sup_num_of_loops:                       51
% 2.09/0.98  sup_fw_superposition:                   26
% 2.09/0.98  sup_bw_superposition:                   31
% 2.09/0.98  sup_immediate_simplified:               16
% 2.09/0.98  sup_given_eliminated:                   3
% 2.09/0.98  comparisons_done:                       0
% 2.09/0.98  comparisons_avoided:                    0
% 2.09/0.98  
% 2.09/0.98  ------ Simplifications
% 2.09/0.98  
% 2.09/0.98  
% 2.09/0.98  sim_fw_subset_subsumed:                 7
% 2.09/0.98  sim_bw_subset_subsumed:                 0
% 2.09/0.98  sim_fw_subsumed:                        1
% 2.09/0.98  sim_bw_subsumed:                        1
% 2.09/0.98  sim_fw_subsumption_res:                 0
% 2.09/0.98  sim_bw_subsumption_res:                 0
% 2.09/0.98  sim_tautology_del:                      1
% 2.09/0.98  sim_eq_tautology_del:                   6
% 2.09/0.98  sim_eq_res_simp:                        1
% 2.09/0.98  sim_fw_demodulated:                     0
% 2.09/0.98  sim_bw_demodulated:                     15
% 2.09/0.98  sim_light_normalised:                   7
% 2.09/0.98  sim_joinable_taut:                      0
% 2.09/0.98  sim_joinable_simp:                      0
% 2.09/0.98  sim_ac_normalised:                      0
% 2.09/0.98  sim_smt_subsumption:                    0
% 2.09/0.98  
%------------------------------------------------------------------------------
