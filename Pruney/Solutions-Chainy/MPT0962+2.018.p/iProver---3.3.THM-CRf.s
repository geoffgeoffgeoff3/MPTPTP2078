%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:00:12 EST 2020

% Result     : Theorem 2.20s
% Output     : CNFRefutation 2.20s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 246 expanded)
%              Number of clauses        :   48 (  80 expanded)
%              Number of leaves         :   13 (  47 expanded)
%              Depth                    :   18
%              Number of atoms          :  326 (1119 expanded)
%              Number of equality atoms :   82 ( 148 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,axiom,(
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

fof(f22,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f5])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f48,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK2(X0,X1),X1)
        & r2_hidden(sK2(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK2(X0,X1),X1)
          & r2_hidden(sK2(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f48])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f50])).

fof(f69,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f51])).

fof(f98,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f69])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(k2_relat_1(X2),X1)
          & r1_tarski(k1_relat_1(X2),X0) )
       => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f32])).

fof(f84,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f20,conjecture,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( v1_funct_1(X1)
          & v1_relat_1(X1) )
       => ( r1_tarski(k2_relat_1(X1),X0)
         => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
            & v1_funct_2(X1,k1_relat_1(X1),X0)
            & v1_funct_1(X1) ) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f38,plain,(
    ? [X0,X1] :
      ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
        | ~ v1_funct_1(X1) )
      & r1_tarski(k2_relat_1(X1),X0)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f39,plain,(
    ? [X0,X1] :
      ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
        | ~ v1_funct_1(X1) )
      & r1_tarski(k2_relat_1(X1),X0)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f38])).

fof(f56,plain,
    ( ? [X0,X1] :
        ( ( ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          | ~ v1_funct_2(X1,k1_relat_1(X1),X0)
          | ~ v1_funct_1(X1) )
        & r1_tarski(k2_relat_1(X1),X0)
        & v1_funct_1(X1)
        & v1_relat_1(X1) )
   => ( ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
        | ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
        | ~ v1_funct_1(sK4) )
      & r1_tarski(k2_relat_1(sK4),sK3)
      & v1_funct_1(sK4)
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f57,plain,
    ( ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
      | ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
      | ~ v1_funct_1(sK4) )
    & r1_tarski(k2_relat_1(sK4),sK3)
    & v1_funct_1(sK4)
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f39,f56])).

fof(f94,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f57])).

fof(f18,axiom,(
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

fof(f34,plain,(
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
    inference(ennf_transformation,[],[f18])).

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
    inference(flattening,[],[f34])).

fof(f55,plain,(
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
    inference(nnf_transformation,[],[f35])).

fof(f87,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | k1_relset_1(X0,X1,X2) != X0
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f97,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
    | ~ v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f57])).

fof(f95,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f57])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f96,plain,(
    r1_tarski(k2_relat_1(sK4),sK3) ),
    inference(cnf_transformation,[],[f57])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f44])).

fof(f46,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f45,f46])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f70,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f19,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f37,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f36])).

fof(f92,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f9,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f9])).

cnf(c_7,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r2_hidden(X2,X0)
    | ~ r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_3228,plain,
    ( ~ r1_xboole_0(k1_xboole_0,X0)
    | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),X0)
    | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_3233,plain,
    ( ~ r1_xboole_0(k1_xboole_0,k1_xboole_0)
    | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3228])).

cnf(c_11,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_1799,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_26,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_39,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_489,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_39])).

cnf(c_490,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r1_tarski(k2_relat_1(sK4),X1)
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(unflattening,[status(thm)],[c_489])).

cnf(c_1788,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
    | r1_tarski(k2_relat_1(sK4),X1) != iProver_top
    | r1_tarski(k1_relat_1(sK4),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_490])).

cnf(c_30,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_36,negated_conjecture,
    ( ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | ~ v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_38,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_199,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_36,c_38])).

cnf(c_200,negated_conjecture,
    ( ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) ),
    inference(renaming,[status(thm)],[c_199])).

cnf(c_686,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | k1_relset_1(X1,X2,X0) != X1
    | k1_relat_1(sK4) != X1
    | sK3 != X2
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_200])).

cnf(c_687,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | k1_relset_1(k1_relat_1(sK4),sK3,sK4) != k1_relat_1(sK4)
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_686])).

cnf(c_25,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_695,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | k1_xboole_0 = sK3 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_687,c_25])).

cnf(c_1783,plain,
    ( k1_xboole_0 = sK3
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_695])).

cnf(c_2090,plain,
    ( sK3 = k1_xboole_0
    | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top
    | r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1788,c_1783])).

cnf(c_37,negated_conjecture,
    ( r1_tarski(k2_relat_1(sK4),sK3) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_42,plain,
    ( r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_2115,plain,
    ( sK3 = k1_xboole_0
    | r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2090,c_42])).

cnf(c_2550,plain,
    ( sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1799,c_2115])).

cnf(c_1790,plain,
    ( r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_2779,plain,
    ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2550,c_1790])).

cnf(c_2786,plain,
    ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2779])).

cnf(c_4,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_2343,plain,
    ( r1_tarski(k1_xboole_0,k2_relat_1(sK4))
    | r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_2148,plain,
    ( r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_2023,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK3)))
    | ~ r1_tarski(k2_relat_1(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(instantiation,[status(thm)],[c_490])).

cnf(c_2147,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | ~ r1_tarski(k2_relat_1(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_2023])).

cnf(c_1102,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2124,plain,
    ( k2_relat_1(sK4) != X0
    | k2_relat_1(sK4) = sK3
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_1102])).

cnf(c_2125,plain,
    ( k2_relat_1(sK4) = sK3
    | k2_relat_1(sK4) != k1_xboole_0
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2124])).

cnf(c_2117,plain,
    ( ~ r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4))
    | sK3 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2115])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_2076,plain,
    ( ~ r1_tarski(k2_relat_1(sK4),k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,k2_relat_1(sK4))
    | k2_relat_1(sK4) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_34,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_463,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_34,c_38])).

cnf(c_464,plain,
    ( v1_funct_2(sK4,k1_relat_1(sK4),k2_relat_1(sK4))
    | ~ v1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_463])).

cnf(c_466,plain,
    ( v1_funct_2(sK4,k1_relat_1(sK4),k2_relat_1(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_464,c_39])).

cnf(c_710,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | k2_relat_1(sK4) != sK3
    | k1_relat_1(sK4) != k1_relat_1(sK4)
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_200,c_466])).

cnf(c_783,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
    | k2_relat_1(sK4) != sK3 ),
    inference(equality_resolution_simp,[status(thm)],[c_710])).

cnf(c_15,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_96,plain,
    ( r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3233,c_2786,c_2343,c_2148,c_2147,c_2125,c_2117,c_2076,c_783,c_96,c_37])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:47:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.20/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.20/1.00  
% 2.20/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.20/1.00  
% 2.20/1.00  ------  iProver source info
% 2.20/1.00  
% 2.20/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.20/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.20/1.00  git: non_committed_changes: false
% 2.20/1.00  git: last_make_outside_of_git: false
% 2.20/1.00  
% 2.20/1.00  ------ 
% 2.20/1.00  
% 2.20/1.00  ------ Input Options
% 2.20/1.00  
% 2.20/1.00  --out_options                           all
% 2.20/1.00  --tptp_safe_out                         true
% 2.20/1.00  --problem_path                          ""
% 2.20/1.00  --include_path                          ""
% 2.20/1.00  --clausifier                            res/vclausify_rel
% 2.20/1.00  --clausifier_options                    --mode clausify
% 2.20/1.00  --stdin                                 false
% 2.20/1.00  --stats_out                             all
% 2.20/1.00  
% 2.20/1.00  ------ General Options
% 2.20/1.00  
% 2.20/1.00  --fof                                   false
% 2.20/1.00  --time_out_real                         305.
% 2.20/1.00  --time_out_virtual                      -1.
% 2.20/1.00  --symbol_type_check                     false
% 2.20/1.00  --clausify_out                          false
% 2.20/1.00  --sig_cnt_out                           false
% 2.20/1.00  --trig_cnt_out                          false
% 2.20/1.00  --trig_cnt_out_tolerance                1.
% 2.20/1.00  --trig_cnt_out_sk_spl                   false
% 2.20/1.00  --abstr_cl_out                          false
% 2.20/1.00  
% 2.20/1.00  ------ Global Options
% 2.20/1.00  
% 2.20/1.00  --schedule                              default
% 2.20/1.00  --add_important_lit                     false
% 2.20/1.00  --prop_solver_per_cl                    1000
% 2.20/1.00  --min_unsat_core                        false
% 2.20/1.00  --soft_assumptions                      false
% 2.20/1.00  --soft_lemma_size                       3
% 2.20/1.00  --prop_impl_unit_size                   0
% 2.20/1.00  --prop_impl_unit                        []
% 2.20/1.00  --share_sel_clauses                     true
% 2.20/1.00  --reset_solvers                         false
% 2.20/1.00  --bc_imp_inh                            [conj_cone]
% 2.20/1.00  --conj_cone_tolerance                   3.
% 2.20/1.00  --extra_neg_conj                        none
% 2.20/1.00  --large_theory_mode                     true
% 2.20/1.00  --prolific_symb_bound                   200
% 2.20/1.00  --lt_threshold                          2000
% 2.20/1.00  --clause_weak_htbl                      true
% 2.20/1.00  --gc_record_bc_elim                     false
% 2.20/1.00  
% 2.20/1.00  ------ Preprocessing Options
% 2.20/1.00  
% 2.20/1.00  --preprocessing_flag                    true
% 2.20/1.00  --time_out_prep_mult                    0.1
% 2.20/1.00  --splitting_mode                        input
% 2.20/1.00  --splitting_grd                         true
% 2.20/1.00  --splitting_cvd                         false
% 2.20/1.00  --splitting_cvd_svl                     false
% 2.20/1.00  --splitting_nvd                         32
% 2.20/1.00  --sub_typing                            true
% 2.20/1.00  --prep_gs_sim                           true
% 2.20/1.00  --prep_unflatten                        true
% 2.20/1.00  --prep_res_sim                          true
% 2.20/1.00  --prep_upred                            true
% 2.20/1.00  --prep_sem_filter                       exhaustive
% 2.20/1.00  --prep_sem_filter_out                   false
% 2.20/1.00  --pred_elim                             true
% 2.20/1.00  --res_sim_input                         true
% 2.20/1.00  --eq_ax_congr_red                       true
% 2.20/1.00  --pure_diseq_elim                       true
% 2.20/1.00  --brand_transform                       false
% 2.20/1.00  --non_eq_to_eq                          false
% 2.20/1.00  --prep_def_merge                        true
% 2.20/1.00  --prep_def_merge_prop_impl              false
% 2.20/1.00  --prep_def_merge_mbd                    true
% 2.20/1.00  --prep_def_merge_tr_red                 false
% 2.20/1.00  --prep_def_merge_tr_cl                  false
% 2.20/1.00  --smt_preprocessing                     true
% 2.20/1.00  --smt_ac_axioms                         fast
% 2.20/1.00  --preprocessed_out                      false
% 2.20/1.00  --preprocessed_stats                    false
% 2.20/1.00  
% 2.20/1.00  ------ Abstraction refinement Options
% 2.20/1.00  
% 2.20/1.00  --abstr_ref                             []
% 2.20/1.00  --abstr_ref_prep                        false
% 2.20/1.00  --abstr_ref_until_sat                   false
% 2.20/1.00  --abstr_ref_sig_restrict                funpre
% 2.20/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/1.00  --abstr_ref_under                       []
% 2.20/1.00  
% 2.20/1.00  ------ SAT Options
% 2.20/1.00  
% 2.20/1.00  --sat_mode                              false
% 2.20/1.00  --sat_fm_restart_options                ""
% 2.20/1.00  --sat_gr_def                            false
% 2.20/1.00  --sat_epr_types                         true
% 2.20/1.00  --sat_non_cyclic_types                  false
% 2.20/1.00  --sat_finite_models                     false
% 2.20/1.00  --sat_fm_lemmas                         false
% 2.20/1.00  --sat_fm_prep                           false
% 2.20/1.00  --sat_fm_uc_incr                        true
% 2.20/1.00  --sat_out_model                         small
% 2.20/1.00  --sat_out_clauses                       false
% 2.20/1.00  
% 2.20/1.00  ------ QBF Options
% 2.20/1.00  
% 2.20/1.00  --qbf_mode                              false
% 2.20/1.00  --qbf_elim_univ                         false
% 2.20/1.00  --qbf_dom_inst                          none
% 2.20/1.00  --qbf_dom_pre_inst                      false
% 2.20/1.00  --qbf_sk_in                             false
% 2.20/1.00  --qbf_pred_elim                         true
% 2.20/1.00  --qbf_split                             512
% 2.20/1.00  
% 2.20/1.00  ------ BMC1 Options
% 2.20/1.00  
% 2.20/1.00  --bmc1_incremental                      false
% 2.20/1.00  --bmc1_axioms                           reachable_all
% 2.20/1.00  --bmc1_min_bound                        0
% 2.20/1.00  --bmc1_max_bound                        -1
% 2.20/1.00  --bmc1_max_bound_default                -1
% 2.20/1.00  --bmc1_symbol_reachability              true
% 2.20/1.00  --bmc1_property_lemmas                  false
% 2.20/1.00  --bmc1_k_induction                      false
% 2.20/1.00  --bmc1_non_equiv_states                 false
% 2.20/1.00  --bmc1_deadlock                         false
% 2.20/1.00  --bmc1_ucm                              false
% 2.20/1.00  --bmc1_add_unsat_core                   none
% 2.20/1.00  --bmc1_unsat_core_children              false
% 2.20/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/1.00  --bmc1_out_stat                         full
% 2.20/1.00  --bmc1_ground_init                      false
% 2.20/1.00  --bmc1_pre_inst_next_state              false
% 2.20/1.00  --bmc1_pre_inst_state                   false
% 2.20/1.00  --bmc1_pre_inst_reach_state             false
% 2.20/1.00  --bmc1_out_unsat_core                   false
% 2.20/1.00  --bmc1_aig_witness_out                  false
% 2.20/1.00  --bmc1_verbose                          false
% 2.20/1.00  --bmc1_dump_clauses_tptp                false
% 2.20/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.20/1.00  --bmc1_dump_file                        -
% 2.20/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.20/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.20/1.00  --bmc1_ucm_extend_mode                  1
% 2.20/1.00  --bmc1_ucm_init_mode                    2
% 2.20/1.00  --bmc1_ucm_cone_mode                    none
% 2.20/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.20/1.00  --bmc1_ucm_relax_model                  4
% 2.20/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.20/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/1.00  --bmc1_ucm_layered_model                none
% 2.20/1.00  --bmc1_ucm_max_lemma_size               10
% 2.20/1.00  
% 2.20/1.00  ------ AIG Options
% 2.20/1.00  
% 2.20/1.00  --aig_mode                              false
% 2.20/1.00  
% 2.20/1.00  ------ Instantiation Options
% 2.20/1.00  
% 2.20/1.00  --instantiation_flag                    true
% 2.20/1.00  --inst_sos_flag                         false
% 2.20/1.00  --inst_sos_phase                        true
% 2.20/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/1.00  --inst_lit_sel_side                     num_symb
% 2.20/1.00  --inst_solver_per_active                1400
% 2.20/1.00  --inst_solver_calls_frac                1.
% 2.20/1.00  --inst_passive_queue_type               priority_queues
% 2.20/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/1.00  --inst_passive_queues_freq              [25;2]
% 2.20/1.00  --inst_dismatching                      true
% 2.20/1.00  --inst_eager_unprocessed_to_passive     true
% 2.20/1.00  --inst_prop_sim_given                   true
% 2.20/1.00  --inst_prop_sim_new                     false
% 2.20/1.00  --inst_subs_new                         false
% 2.20/1.00  --inst_eq_res_simp                      false
% 2.20/1.00  --inst_subs_given                       false
% 2.20/1.00  --inst_orphan_elimination               true
% 2.20/1.00  --inst_learning_loop_flag               true
% 2.20/1.00  --inst_learning_start                   3000
% 2.20/1.00  --inst_learning_factor                  2
% 2.20/1.00  --inst_start_prop_sim_after_learn       3
% 2.20/1.00  --inst_sel_renew                        solver
% 2.20/1.00  --inst_lit_activity_flag                true
% 2.20/1.00  --inst_restr_to_given                   false
% 2.20/1.00  --inst_activity_threshold               500
% 2.20/1.00  --inst_out_proof                        true
% 2.20/1.00  
% 2.20/1.00  ------ Resolution Options
% 2.20/1.00  
% 2.20/1.00  --resolution_flag                       true
% 2.20/1.00  --res_lit_sel                           adaptive
% 2.20/1.00  --res_lit_sel_side                      none
% 2.20/1.00  --res_ordering                          kbo
% 2.20/1.00  --res_to_prop_solver                    active
% 2.20/1.00  --res_prop_simpl_new                    false
% 2.20/1.00  --res_prop_simpl_given                  true
% 2.20/1.00  --res_passive_queue_type                priority_queues
% 2.20/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/1.00  --res_passive_queues_freq               [15;5]
% 2.20/1.00  --res_forward_subs                      full
% 2.20/1.00  --res_backward_subs                     full
% 2.20/1.00  --res_forward_subs_resolution           true
% 2.20/1.00  --res_backward_subs_resolution          true
% 2.20/1.00  --res_orphan_elimination                true
% 2.20/1.00  --res_time_limit                        2.
% 2.20/1.00  --res_out_proof                         true
% 2.20/1.00  
% 2.20/1.00  ------ Superposition Options
% 2.20/1.00  
% 2.20/1.00  --superposition_flag                    true
% 2.20/1.00  --sup_passive_queue_type                priority_queues
% 2.20/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.20/1.00  --demod_completeness_check              fast
% 2.20/1.00  --demod_use_ground                      true
% 2.20/1.00  --sup_to_prop_solver                    passive
% 2.20/1.00  --sup_prop_simpl_new                    true
% 2.20/1.00  --sup_prop_simpl_given                  true
% 2.20/1.00  --sup_fun_splitting                     false
% 2.20/1.00  --sup_smt_interval                      50000
% 2.20/1.00  
% 2.20/1.00  ------ Superposition Simplification Setup
% 2.20/1.00  
% 2.20/1.00  --sup_indices_passive                   []
% 2.20/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.00  --sup_full_bw                           [BwDemod]
% 2.20/1.00  --sup_immed_triv                        [TrivRules]
% 2.20/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.00  --sup_immed_bw_main                     []
% 2.20/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.00  
% 2.20/1.00  ------ Combination Options
% 2.20/1.00  
% 2.20/1.00  --comb_res_mult                         3
% 2.20/1.00  --comb_sup_mult                         2
% 2.20/1.00  --comb_inst_mult                        10
% 2.20/1.00  
% 2.20/1.00  ------ Debug Options
% 2.20/1.00  
% 2.20/1.00  --dbg_backtrace                         false
% 2.20/1.00  --dbg_dump_prop_clauses                 false
% 2.20/1.00  --dbg_dump_prop_clauses_file            -
% 2.20/1.00  --dbg_out_stat                          false
% 2.20/1.00  ------ Parsing...
% 2.20/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.20/1.00  
% 2.20/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.20/1.00  
% 2.20/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.20/1.00  
% 2.20/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.20/1.00  ------ Proving...
% 2.20/1.00  ------ Problem Properties 
% 2.20/1.00  
% 2.20/1.00  
% 2.20/1.00  clauses                                 35
% 2.20/1.00  conjectures                             1
% 2.20/1.00  EPR                                     8
% 2.20/1.00  Horn                                    28
% 2.20/1.00  unary                                   10
% 2.20/1.00  binary                                  15
% 2.20/1.00  lits                                    74
% 2.20/1.00  lits eq                                 26
% 2.20/1.00  fd_pure                                 0
% 2.20/1.00  fd_pseudo                               0
% 2.20/1.00  fd_cond                                 2
% 2.20/1.00  fd_pseudo_cond                          1
% 2.20/1.00  AC symbols                              0
% 2.20/1.00  
% 2.20/1.00  ------ Schedule dynamic 5 is on 
% 2.20/1.00  
% 2.20/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.20/1.00  
% 2.20/1.00  
% 2.20/1.00  ------ 
% 2.20/1.00  Current options:
% 2.20/1.00  ------ 
% 2.20/1.00  
% 2.20/1.00  ------ Input Options
% 2.20/1.00  
% 2.20/1.00  --out_options                           all
% 2.20/1.00  --tptp_safe_out                         true
% 2.20/1.00  --problem_path                          ""
% 2.20/1.00  --include_path                          ""
% 2.20/1.00  --clausifier                            res/vclausify_rel
% 2.20/1.00  --clausifier_options                    --mode clausify
% 2.20/1.00  --stdin                                 false
% 2.20/1.00  --stats_out                             all
% 2.20/1.00  
% 2.20/1.00  ------ General Options
% 2.20/1.00  
% 2.20/1.00  --fof                                   false
% 2.20/1.00  --time_out_real                         305.
% 2.20/1.00  --time_out_virtual                      -1.
% 2.20/1.00  --symbol_type_check                     false
% 2.20/1.00  --clausify_out                          false
% 2.20/1.00  --sig_cnt_out                           false
% 2.20/1.00  --trig_cnt_out                          false
% 2.20/1.00  --trig_cnt_out_tolerance                1.
% 2.20/1.00  --trig_cnt_out_sk_spl                   false
% 2.20/1.00  --abstr_cl_out                          false
% 2.20/1.00  
% 2.20/1.00  ------ Global Options
% 2.20/1.00  
% 2.20/1.00  --schedule                              default
% 2.20/1.00  --add_important_lit                     false
% 2.20/1.00  --prop_solver_per_cl                    1000
% 2.20/1.00  --min_unsat_core                        false
% 2.20/1.00  --soft_assumptions                      false
% 2.20/1.00  --soft_lemma_size                       3
% 2.20/1.00  --prop_impl_unit_size                   0
% 2.20/1.00  --prop_impl_unit                        []
% 2.20/1.00  --share_sel_clauses                     true
% 2.20/1.00  --reset_solvers                         false
% 2.20/1.00  --bc_imp_inh                            [conj_cone]
% 2.20/1.00  --conj_cone_tolerance                   3.
% 2.20/1.00  --extra_neg_conj                        none
% 2.20/1.00  --large_theory_mode                     true
% 2.20/1.00  --prolific_symb_bound                   200
% 2.20/1.00  --lt_threshold                          2000
% 2.20/1.00  --clause_weak_htbl                      true
% 2.20/1.00  --gc_record_bc_elim                     false
% 2.20/1.00  
% 2.20/1.00  ------ Preprocessing Options
% 2.20/1.00  
% 2.20/1.00  --preprocessing_flag                    true
% 2.20/1.00  --time_out_prep_mult                    0.1
% 2.20/1.00  --splitting_mode                        input
% 2.20/1.00  --splitting_grd                         true
% 2.20/1.00  --splitting_cvd                         false
% 2.20/1.00  --splitting_cvd_svl                     false
% 2.20/1.00  --splitting_nvd                         32
% 2.20/1.00  --sub_typing                            true
% 2.20/1.00  --prep_gs_sim                           true
% 2.20/1.00  --prep_unflatten                        true
% 2.20/1.00  --prep_res_sim                          true
% 2.20/1.00  --prep_upred                            true
% 2.20/1.00  --prep_sem_filter                       exhaustive
% 2.20/1.00  --prep_sem_filter_out                   false
% 2.20/1.00  --pred_elim                             true
% 2.20/1.00  --res_sim_input                         true
% 2.20/1.00  --eq_ax_congr_red                       true
% 2.20/1.00  --pure_diseq_elim                       true
% 2.20/1.00  --brand_transform                       false
% 2.20/1.00  --non_eq_to_eq                          false
% 2.20/1.00  --prep_def_merge                        true
% 2.20/1.00  --prep_def_merge_prop_impl              false
% 2.20/1.00  --prep_def_merge_mbd                    true
% 2.20/1.00  --prep_def_merge_tr_red                 false
% 2.20/1.00  --prep_def_merge_tr_cl                  false
% 2.20/1.00  --smt_preprocessing                     true
% 2.20/1.00  --smt_ac_axioms                         fast
% 2.20/1.00  --preprocessed_out                      false
% 2.20/1.00  --preprocessed_stats                    false
% 2.20/1.00  
% 2.20/1.00  ------ Abstraction refinement Options
% 2.20/1.00  
% 2.20/1.00  --abstr_ref                             []
% 2.20/1.00  --abstr_ref_prep                        false
% 2.20/1.00  --abstr_ref_until_sat                   false
% 2.20/1.00  --abstr_ref_sig_restrict                funpre
% 2.20/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.20/1.00  --abstr_ref_under                       []
% 2.20/1.00  
% 2.20/1.00  ------ SAT Options
% 2.20/1.00  
% 2.20/1.00  --sat_mode                              false
% 2.20/1.00  --sat_fm_restart_options                ""
% 2.20/1.00  --sat_gr_def                            false
% 2.20/1.00  --sat_epr_types                         true
% 2.20/1.00  --sat_non_cyclic_types                  false
% 2.20/1.00  --sat_finite_models                     false
% 2.20/1.00  --sat_fm_lemmas                         false
% 2.20/1.00  --sat_fm_prep                           false
% 2.20/1.00  --sat_fm_uc_incr                        true
% 2.20/1.00  --sat_out_model                         small
% 2.20/1.00  --sat_out_clauses                       false
% 2.20/1.00  
% 2.20/1.00  ------ QBF Options
% 2.20/1.00  
% 2.20/1.00  --qbf_mode                              false
% 2.20/1.00  --qbf_elim_univ                         false
% 2.20/1.00  --qbf_dom_inst                          none
% 2.20/1.00  --qbf_dom_pre_inst                      false
% 2.20/1.00  --qbf_sk_in                             false
% 2.20/1.00  --qbf_pred_elim                         true
% 2.20/1.00  --qbf_split                             512
% 2.20/1.00  
% 2.20/1.00  ------ BMC1 Options
% 2.20/1.00  
% 2.20/1.00  --bmc1_incremental                      false
% 2.20/1.00  --bmc1_axioms                           reachable_all
% 2.20/1.00  --bmc1_min_bound                        0
% 2.20/1.00  --bmc1_max_bound                        -1
% 2.20/1.00  --bmc1_max_bound_default                -1
% 2.20/1.00  --bmc1_symbol_reachability              true
% 2.20/1.00  --bmc1_property_lemmas                  false
% 2.20/1.00  --bmc1_k_induction                      false
% 2.20/1.00  --bmc1_non_equiv_states                 false
% 2.20/1.00  --bmc1_deadlock                         false
% 2.20/1.00  --bmc1_ucm                              false
% 2.20/1.00  --bmc1_add_unsat_core                   none
% 2.20/1.00  --bmc1_unsat_core_children              false
% 2.20/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.20/1.00  --bmc1_out_stat                         full
% 2.20/1.00  --bmc1_ground_init                      false
% 2.20/1.00  --bmc1_pre_inst_next_state              false
% 2.20/1.00  --bmc1_pre_inst_state                   false
% 2.20/1.00  --bmc1_pre_inst_reach_state             false
% 2.20/1.00  --bmc1_out_unsat_core                   false
% 2.20/1.00  --bmc1_aig_witness_out                  false
% 2.20/1.00  --bmc1_verbose                          false
% 2.20/1.00  --bmc1_dump_clauses_tptp                false
% 2.20/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.20/1.00  --bmc1_dump_file                        -
% 2.20/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.20/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.20/1.00  --bmc1_ucm_extend_mode                  1
% 2.20/1.00  --bmc1_ucm_init_mode                    2
% 2.20/1.00  --bmc1_ucm_cone_mode                    none
% 2.20/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.20/1.00  --bmc1_ucm_relax_model                  4
% 2.20/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.20/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.20/1.00  --bmc1_ucm_layered_model                none
% 2.20/1.00  --bmc1_ucm_max_lemma_size               10
% 2.20/1.00  
% 2.20/1.00  ------ AIG Options
% 2.20/1.00  
% 2.20/1.00  --aig_mode                              false
% 2.20/1.00  
% 2.20/1.00  ------ Instantiation Options
% 2.20/1.00  
% 2.20/1.00  --instantiation_flag                    true
% 2.20/1.00  --inst_sos_flag                         false
% 2.20/1.00  --inst_sos_phase                        true
% 2.20/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.20/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.20/1.00  --inst_lit_sel_side                     none
% 2.20/1.00  --inst_solver_per_active                1400
% 2.20/1.00  --inst_solver_calls_frac                1.
% 2.20/1.00  --inst_passive_queue_type               priority_queues
% 2.20/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.20/1.01  --inst_passive_queues_freq              [25;2]
% 2.20/1.01  --inst_dismatching                      true
% 2.20/1.01  --inst_eager_unprocessed_to_passive     true
% 2.20/1.01  --inst_prop_sim_given                   true
% 2.20/1.01  --inst_prop_sim_new                     false
% 2.20/1.01  --inst_subs_new                         false
% 2.20/1.01  --inst_eq_res_simp                      false
% 2.20/1.01  --inst_subs_given                       false
% 2.20/1.01  --inst_orphan_elimination               true
% 2.20/1.01  --inst_learning_loop_flag               true
% 2.20/1.01  --inst_learning_start                   3000
% 2.20/1.01  --inst_learning_factor                  2
% 2.20/1.01  --inst_start_prop_sim_after_learn       3
% 2.20/1.01  --inst_sel_renew                        solver
% 2.20/1.01  --inst_lit_activity_flag                true
% 2.20/1.01  --inst_restr_to_given                   false
% 2.20/1.01  --inst_activity_threshold               500
% 2.20/1.01  --inst_out_proof                        true
% 2.20/1.01  
% 2.20/1.01  ------ Resolution Options
% 2.20/1.01  
% 2.20/1.01  --resolution_flag                       false
% 2.20/1.01  --res_lit_sel                           adaptive
% 2.20/1.01  --res_lit_sel_side                      none
% 2.20/1.01  --res_ordering                          kbo
% 2.20/1.01  --res_to_prop_solver                    active
% 2.20/1.01  --res_prop_simpl_new                    false
% 2.20/1.01  --res_prop_simpl_given                  true
% 2.20/1.01  --res_passive_queue_type                priority_queues
% 2.20/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.20/1.01  --res_passive_queues_freq               [15;5]
% 2.20/1.01  --res_forward_subs                      full
% 2.20/1.01  --res_backward_subs                     full
% 2.20/1.01  --res_forward_subs_resolution           true
% 2.20/1.01  --res_backward_subs_resolution          true
% 2.20/1.01  --res_orphan_elimination                true
% 2.20/1.01  --res_time_limit                        2.
% 2.20/1.01  --res_out_proof                         true
% 2.20/1.01  
% 2.20/1.01  ------ Superposition Options
% 2.20/1.01  
% 2.20/1.01  --superposition_flag                    true
% 2.20/1.01  --sup_passive_queue_type                priority_queues
% 2.20/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.20/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.20/1.01  --demod_completeness_check              fast
% 2.20/1.01  --demod_use_ground                      true
% 2.20/1.01  --sup_to_prop_solver                    passive
% 2.20/1.01  --sup_prop_simpl_new                    true
% 2.20/1.01  --sup_prop_simpl_given                  true
% 2.20/1.01  --sup_fun_splitting                     false
% 2.20/1.01  --sup_smt_interval                      50000
% 2.20/1.01  
% 2.20/1.01  ------ Superposition Simplification Setup
% 2.20/1.01  
% 2.20/1.01  --sup_indices_passive                   []
% 2.20/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.20/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.20/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.01  --sup_full_bw                           [BwDemod]
% 2.20/1.01  --sup_immed_triv                        [TrivRules]
% 2.20/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.20/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.01  --sup_immed_bw_main                     []
% 2.20/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.20/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.20/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.20/1.01  
% 2.20/1.01  ------ Combination Options
% 2.20/1.01  
% 2.20/1.01  --comb_res_mult                         3
% 2.20/1.01  --comb_sup_mult                         2
% 2.20/1.01  --comb_inst_mult                        10
% 2.20/1.01  
% 2.20/1.01  ------ Debug Options
% 2.20/1.01  
% 2.20/1.01  --dbg_backtrace                         false
% 2.20/1.01  --dbg_dump_prop_clauses                 false
% 2.20/1.01  --dbg_dump_prop_clauses_file            -
% 2.20/1.01  --dbg_out_stat                          false
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  ------ Proving...
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  % SZS status Theorem for theBenchmark.p
% 2.20/1.01  
% 2.20/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.20/1.01  
% 2.20/1.01  fof(f5,axiom,(
% 2.20/1.01    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f22,plain,(
% 2.20/1.01    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.20/1.01    inference(rectify,[],[f5])).
% 2.20/1.01  
% 2.20/1.01  fof(f25,plain,(
% 2.20/1.01    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.20/1.01    inference(ennf_transformation,[],[f22])).
% 2.20/1.01  
% 2.20/1.01  fof(f48,plain,(
% 2.20/1.01    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)))),
% 2.20/1.01    introduced(choice_axiom,[])).
% 2.20/1.01  
% 2.20/1.01  fof(f49,plain,(
% 2.20/1.01    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.20/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f48])).
% 2.20/1.01  
% 2.20/1.01  fof(f67,plain,(
% 2.20/1.01    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f49])).
% 2.20/1.01  
% 2.20/1.01  fof(f6,axiom,(
% 2.20/1.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f50,plain,(
% 2.20/1.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.20/1.01    inference(nnf_transformation,[],[f6])).
% 2.20/1.01  
% 2.20/1.01  fof(f51,plain,(
% 2.20/1.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.20/1.01    inference(flattening,[],[f50])).
% 2.20/1.01  
% 2.20/1.01  fof(f69,plain,(
% 2.20/1.01    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 2.20/1.01    inference(cnf_transformation,[],[f51])).
% 2.20/1.01  
% 2.20/1.01  fof(f98,plain,(
% 2.20/1.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.20/1.01    inference(equality_resolution,[],[f69])).
% 2.20/1.01  
% 2.20/1.01  fof(f17,axiom,(
% 2.20/1.01    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(k2_relat_1(X2),X1) & r1_tarski(k1_relat_1(X2),X0)) => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f32,plain,(
% 2.20/1.01    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | (~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0))) | ~v1_relat_1(X2))),
% 2.20/1.01    inference(ennf_transformation,[],[f17])).
% 2.20/1.01  
% 2.20/1.01  fof(f33,plain,(
% 2.20/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2))),
% 2.20/1.01    inference(flattening,[],[f32])).
% 2.20/1.01  
% 2.20/1.01  fof(f84,plain,(
% 2.20/1.01    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f33])).
% 2.20/1.01  
% 2.20/1.01  fof(f20,conjecture,(
% 2.20/1.01    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f21,negated_conjecture,(
% 2.20/1.01    ~! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 2.20/1.01    inference(negated_conjecture,[],[f20])).
% 2.20/1.01  
% 2.20/1.01  fof(f38,plain,(
% 2.20/1.01    ? [X0,X1] : (((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0)) & (v1_funct_1(X1) & v1_relat_1(X1)))),
% 2.20/1.01    inference(ennf_transformation,[],[f21])).
% 2.20/1.01  
% 2.20/1.01  fof(f39,plain,(
% 2.20/1.01    ? [X0,X1] : ((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0) & v1_funct_1(X1) & v1_relat_1(X1))),
% 2.20/1.01    inference(flattening,[],[f38])).
% 2.20/1.01  
% 2.20/1.01  fof(f56,plain,(
% 2.20/1.01    ? [X0,X1] : ((~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~v1_funct_2(X1,k1_relat_1(X1),X0) | ~v1_funct_1(X1)) & r1_tarski(k2_relat_1(X1),X0) & v1_funct_1(X1) & v1_relat_1(X1)) => ((~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) | ~v1_funct_2(sK4,k1_relat_1(sK4),sK3) | ~v1_funct_1(sK4)) & r1_tarski(k2_relat_1(sK4),sK3) & v1_funct_1(sK4) & v1_relat_1(sK4))),
% 2.20/1.01    introduced(choice_axiom,[])).
% 2.20/1.01  
% 2.20/1.01  fof(f57,plain,(
% 2.20/1.01    (~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) | ~v1_funct_2(sK4,k1_relat_1(sK4),sK3) | ~v1_funct_1(sK4)) & r1_tarski(k2_relat_1(sK4),sK3) & v1_funct_1(sK4) & v1_relat_1(sK4)),
% 2.20/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f39,f56])).
% 2.20/1.01  
% 2.20/1.01  fof(f94,plain,(
% 2.20/1.01    v1_relat_1(sK4)),
% 2.20/1.01    inference(cnf_transformation,[],[f57])).
% 2.20/1.01  
% 2.20/1.01  fof(f18,axiom,(
% 2.20/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f34,plain,(
% 2.20/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.01    inference(ennf_transformation,[],[f18])).
% 2.20/1.01  
% 2.20/1.01  fof(f35,plain,(
% 2.20/1.01    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.01    inference(flattening,[],[f34])).
% 2.20/1.01  
% 2.20/1.01  fof(f55,plain,(
% 2.20/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.01    inference(nnf_transformation,[],[f35])).
% 2.20/1.01  
% 2.20/1.01  fof(f87,plain,(
% 2.20/1.01    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0 | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/1.01    inference(cnf_transformation,[],[f55])).
% 2.20/1.01  
% 2.20/1.01  fof(f97,plain,(
% 2.20/1.01    ~m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) | ~v1_funct_2(sK4,k1_relat_1(sK4),sK3) | ~v1_funct_1(sK4)),
% 2.20/1.01    inference(cnf_transformation,[],[f57])).
% 2.20/1.01  
% 2.20/1.01  fof(f95,plain,(
% 2.20/1.01    v1_funct_1(sK4)),
% 2.20/1.01    inference(cnf_transformation,[],[f57])).
% 2.20/1.01  
% 2.20/1.01  fof(f16,axiom,(
% 2.20/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f31,plain,(
% 2.20/1.01    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.20/1.01    inference(ennf_transformation,[],[f16])).
% 2.20/1.01  
% 2.20/1.01  fof(f83,plain,(
% 2.20/1.01    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.20/1.01    inference(cnf_transformation,[],[f31])).
% 2.20/1.01  
% 2.20/1.01  fof(f96,plain,(
% 2.20/1.01    r1_tarski(k2_relat_1(sK4),sK3)),
% 2.20/1.01    inference(cnf_transformation,[],[f57])).
% 2.20/1.01  
% 2.20/1.01  fof(f3,axiom,(
% 2.20/1.01    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f23,plain,(
% 2.20/1.01    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.20/1.01    inference(ennf_transformation,[],[f3])).
% 2.20/1.01  
% 2.20/1.01  fof(f44,plain,(
% 2.20/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.20/1.01    inference(nnf_transformation,[],[f23])).
% 2.20/1.01  
% 2.20/1.01  fof(f45,plain,(
% 2.20/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.20/1.01    inference(rectify,[],[f44])).
% 2.20/1.01  
% 2.20/1.01  fof(f46,plain,(
% 2.20/1.01    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 2.20/1.01    introduced(choice_axiom,[])).
% 2.20/1.01  
% 2.20/1.01  fof(f47,plain,(
% 2.20/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.20/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f45,f46])).
% 2.20/1.01  
% 2.20/1.01  fof(f62,plain,(
% 2.20/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f47])).
% 2.20/1.01  
% 2.20/1.01  fof(f70,plain,(
% 2.20/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f51])).
% 2.20/1.01  
% 2.20/1.01  fof(f19,axiom,(
% 2.20/1.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f36,plain,(
% 2.20/1.01    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.20/1.01    inference(ennf_transformation,[],[f19])).
% 2.20/1.01  
% 2.20/1.01  fof(f37,plain,(
% 2.20/1.01    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.20/1.01    inference(flattening,[],[f36])).
% 2.20/1.01  
% 2.20/1.01  fof(f92,plain,(
% 2.20/1.01    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f37])).
% 2.20/1.01  
% 2.20/1.01  fof(f9,axiom,(
% 2.20/1.01    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 2.20/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.20/1.01  
% 2.20/1.01  fof(f73,plain,(
% 2.20/1.01    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 2.20/1.01    inference(cnf_transformation,[],[f9])).
% 2.20/1.01  
% 2.20/1.01  cnf(c_7,plain,
% 2.20/1.01      ( ~ r1_xboole_0(X0,X1) | ~ r2_hidden(X2,X0) | ~ r2_hidden(X2,X1) ),
% 2.20/1.01      inference(cnf_transformation,[],[f67]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_3228,plain,
% 2.20/1.01      ( ~ r1_xboole_0(k1_xboole_0,X0)
% 2.20/1.01      | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),X0)
% 2.20/1.01      | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_7]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_3233,plain,
% 2.20/1.01      ( ~ r1_xboole_0(k1_xboole_0,k1_xboole_0)
% 2.20/1.01      | ~ r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_3228]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_11,plain,
% 2.20/1.01      ( r1_tarski(X0,X0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f98]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_1799,plain,
% 2.20/1.01      ( r1_tarski(X0,X0) = iProver_top ),
% 2.20/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_26,plain,
% 2.20/1.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.01      | ~ r1_tarski(k2_relat_1(X0),X2)
% 2.20/1.01      | ~ r1_tarski(k1_relat_1(X0),X1)
% 2.20/1.01      | ~ v1_relat_1(X0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f84]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_39,negated_conjecture,
% 2.20/1.01      ( v1_relat_1(sK4) ),
% 2.20/1.01      inference(cnf_transformation,[],[f94]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_489,plain,
% 2.20/1.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.01      | ~ r1_tarski(k2_relat_1(X0),X2)
% 2.20/1.01      | ~ r1_tarski(k1_relat_1(X0),X1)
% 2.20/1.01      | sK4 != X0 ),
% 2.20/1.01      inference(resolution_lifted,[status(thm)],[c_26,c_39]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_490,plain,
% 2.20/1.01      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.20/1.01      | ~ r1_tarski(k2_relat_1(sK4),X1)
% 2.20/1.01      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 2.20/1.01      inference(unflattening,[status(thm)],[c_489]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_1788,plain,
% 2.20/1.01      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top
% 2.20/1.01      | r1_tarski(k2_relat_1(sK4),X1) != iProver_top
% 2.20/1.01      | r1_tarski(k1_relat_1(sK4),X0) != iProver_top ),
% 2.20/1.01      inference(predicate_to_equality,[status(thm)],[c_490]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_30,plain,
% 2.20/1.01      ( v1_funct_2(X0,X1,X2)
% 2.20/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.01      | k1_relset_1(X1,X2,X0) != X1
% 2.20/1.01      | k1_xboole_0 = X2 ),
% 2.20/1.01      inference(cnf_transformation,[],[f87]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_36,negated_conjecture,
% 2.20/1.01      ( ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
% 2.20/1.01      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | ~ v1_funct_1(sK4) ),
% 2.20/1.01      inference(cnf_transformation,[],[f97]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_38,negated_conjecture,
% 2.20/1.01      ( v1_funct_1(sK4) ),
% 2.20/1.01      inference(cnf_transformation,[],[f95]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_199,plain,
% 2.20/1.01      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3) ),
% 2.20/1.01      inference(global_propositional_subsumption,
% 2.20/1.01                [status(thm)],
% 2.20/1.01                [c_36,c_38]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_200,negated_conjecture,
% 2.20/1.01      ( ~ v1_funct_2(sK4,k1_relat_1(sK4),sK3)
% 2.20/1.01      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) ),
% 2.20/1.01      inference(renaming,[status(thm)],[c_199]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_686,plain,
% 2.20/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.01      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | k1_relset_1(X1,X2,X0) != X1
% 2.20/1.01      | k1_relat_1(sK4) != X1
% 2.20/1.01      | sK3 != X2
% 2.20/1.01      | sK4 != X0
% 2.20/1.01      | k1_xboole_0 = X2 ),
% 2.20/1.01      inference(resolution_lifted,[status(thm)],[c_30,c_200]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_687,plain,
% 2.20/1.01      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | k1_relset_1(k1_relat_1(sK4),sK3,sK4) != k1_relat_1(sK4)
% 2.20/1.01      | k1_xboole_0 = sK3 ),
% 2.20/1.01      inference(unflattening,[status(thm)],[c_686]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_25,plain,
% 2.20/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.20/1.01      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f83]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_695,plain,
% 2.20/1.01      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | k1_xboole_0 = sK3 ),
% 2.20/1.01      inference(forward_subsumption_resolution,
% 2.20/1.01                [status(thm)],
% 2.20/1.01                [c_687,c_25]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_1783,plain,
% 2.20/1.01      ( k1_xboole_0 = sK3
% 2.20/1.01      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3))) != iProver_top ),
% 2.20/1.01      inference(predicate_to_equality,[status(thm)],[c_695]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2090,plain,
% 2.20/1.01      ( sK3 = k1_xboole_0
% 2.20/1.01      | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top
% 2.20/1.01      | r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) != iProver_top ),
% 2.20/1.01      inference(superposition,[status(thm)],[c_1788,c_1783]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_37,negated_conjecture,
% 2.20/1.01      ( r1_tarski(k2_relat_1(sK4),sK3) ),
% 2.20/1.01      inference(cnf_transformation,[],[f96]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_42,plain,
% 2.20/1.01      ( r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
% 2.20/1.01      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2115,plain,
% 2.20/1.01      ( sK3 = k1_xboole_0
% 2.20/1.01      | r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) != iProver_top ),
% 2.20/1.01      inference(global_propositional_subsumption,
% 2.20/1.01                [status(thm)],
% 2.20/1.01                [c_2090,c_42]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2550,plain,
% 2.20/1.01      ( sK3 = k1_xboole_0 ),
% 2.20/1.01      inference(superposition,[status(thm)],[c_1799,c_2115]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_1790,plain,
% 2.20/1.01      ( r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
% 2.20/1.01      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2779,plain,
% 2.20/1.01      ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) = iProver_top ),
% 2.20/1.01      inference(demodulation,[status(thm)],[c_2550,c_1790]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2786,plain,
% 2.20/1.01      ( r1_tarski(k2_relat_1(sK4),k1_xboole_0) ),
% 2.20/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_2779]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_4,plain,
% 2.20/1.01      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f62]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2343,plain,
% 2.20/1.01      ( r1_tarski(k1_xboole_0,k2_relat_1(sK4))
% 2.20/1.01      | r2_hidden(sK1(k1_xboole_0,k2_relat_1(sK4)),k1_xboole_0) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_4]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2148,plain,
% 2.20/1.01      ( r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_11]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2023,plain,
% 2.20/1.01      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK3)))
% 2.20/1.01      | ~ r1_tarski(k2_relat_1(sK4),sK3)
% 2.20/1.01      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_490]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2147,plain,
% 2.20/1.01      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | ~ r1_tarski(k2_relat_1(sK4),sK3)
% 2.20/1.01      | ~ r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4)) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_2023]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_1102,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2124,plain,
% 2.20/1.01      ( k2_relat_1(sK4) != X0 | k2_relat_1(sK4) = sK3 | sK3 != X0 ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_1102]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2125,plain,
% 2.20/1.01      ( k2_relat_1(sK4) = sK3
% 2.20/1.01      | k2_relat_1(sK4) != k1_xboole_0
% 2.20/1.01      | sK3 != k1_xboole_0 ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_2124]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2117,plain,
% 2.20/1.01      ( ~ r1_tarski(k1_relat_1(sK4),k1_relat_1(sK4))
% 2.20/1.01      | sK3 = k1_xboole_0 ),
% 2.20/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_2115]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_10,plain,
% 2.20/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 2.20/1.01      inference(cnf_transformation,[],[f70]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_2076,plain,
% 2.20/1.01      ( ~ r1_tarski(k2_relat_1(sK4),k1_xboole_0)
% 2.20/1.01      | ~ r1_tarski(k1_xboole_0,k2_relat_1(sK4))
% 2.20/1.01      | k2_relat_1(sK4) = k1_xboole_0 ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_10]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_34,plain,
% 2.20/1.01      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 2.20/1.01      | ~ v1_funct_1(X0)
% 2.20/1.01      | ~ v1_relat_1(X0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f92]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_463,plain,
% 2.20/1.01      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 2.20/1.01      | ~ v1_relat_1(X0)
% 2.20/1.01      | sK4 != X0 ),
% 2.20/1.01      inference(resolution_lifted,[status(thm)],[c_34,c_38]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_464,plain,
% 2.20/1.01      ( v1_funct_2(sK4,k1_relat_1(sK4),k2_relat_1(sK4))
% 2.20/1.01      | ~ v1_relat_1(sK4) ),
% 2.20/1.01      inference(unflattening,[status(thm)],[c_463]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_466,plain,
% 2.20/1.01      ( v1_funct_2(sK4,k1_relat_1(sK4),k2_relat_1(sK4)) ),
% 2.20/1.01      inference(global_propositional_subsumption,
% 2.20/1.01                [status(thm)],
% 2.20/1.01                [c_464,c_39]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_710,plain,
% 2.20/1.01      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | k2_relat_1(sK4) != sK3
% 2.20/1.01      | k1_relat_1(sK4) != k1_relat_1(sK4)
% 2.20/1.01      | sK4 != sK4 ),
% 2.20/1.01      inference(resolution_lifted,[status(thm)],[c_200,c_466]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_783,plain,
% 2.20/1.01      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)))
% 2.20/1.01      | k2_relat_1(sK4) != sK3 ),
% 2.20/1.01      inference(equality_resolution_simp,[status(thm)],[c_710]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_15,plain,
% 2.20/1.01      ( r1_xboole_0(X0,k1_xboole_0) ),
% 2.20/1.01      inference(cnf_transformation,[],[f73]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(c_96,plain,
% 2.20/1.01      ( r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
% 2.20/1.01      inference(instantiation,[status(thm)],[c_15]) ).
% 2.20/1.01  
% 2.20/1.01  cnf(contradiction,plain,
% 2.20/1.01      ( $false ),
% 2.20/1.01      inference(minisat,
% 2.20/1.01                [status(thm)],
% 2.20/1.01                [c_3233,c_2786,c_2343,c_2148,c_2147,c_2125,c_2117,c_2076,
% 2.20/1.01                 c_783,c_96,c_37]) ).
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.20/1.01  
% 2.20/1.01  ------                               Statistics
% 2.20/1.01  
% 2.20/1.01  ------ General
% 2.20/1.01  
% 2.20/1.01  abstr_ref_over_cycles:                  0
% 2.20/1.01  abstr_ref_under_cycles:                 0
% 2.20/1.01  gc_basic_clause_elim:                   0
% 2.20/1.01  forced_gc_time:                         0
% 2.20/1.01  parsing_time:                           0.021
% 2.20/1.01  unif_index_cands_time:                  0.
% 2.20/1.01  unif_index_add_time:                    0.
% 2.20/1.01  orderings_time:                         0.
% 2.20/1.01  out_proof_time:                         0.013
% 2.20/1.01  total_time:                             0.151
% 2.20/1.01  num_of_symbols:                         52
% 2.20/1.01  num_of_terms:                           2429
% 2.20/1.01  
% 2.20/1.01  ------ Preprocessing
% 2.20/1.01  
% 2.20/1.01  num_of_splits:                          0
% 2.20/1.01  num_of_split_atoms:                     0
% 2.20/1.01  num_of_reused_defs:                     0
% 2.20/1.01  num_eq_ax_congr_red:                    24
% 2.20/1.01  num_of_sem_filtered_clauses:            1
% 2.20/1.01  num_of_subtypes:                        0
% 2.20/1.01  monotx_restored_types:                  0
% 2.20/1.01  sat_num_of_epr_types:                   0
% 2.20/1.01  sat_num_of_non_cyclic_types:            0
% 2.20/1.01  sat_guarded_non_collapsed_types:        0
% 2.20/1.01  num_pure_diseq_elim:                    0
% 2.20/1.01  simp_replaced_by:                       0
% 2.20/1.01  res_preprocessed:                       172
% 2.20/1.01  prep_upred:                             0
% 2.20/1.01  prep_unflattend:                        45
% 2.20/1.01  smt_new_axioms:                         0
% 2.20/1.01  pred_elim_cands:                        5
% 2.20/1.01  pred_elim:                              3
% 2.20/1.01  pred_elim_cl:                           3
% 2.20/1.01  pred_elim_cycles:                       6
% 2.20/1.01  merged_defs:                            8
% 2.20/1.01  merged_defs_ncl:                        0
% 2.20/1.01  bin_hyper_res:                          8
% 2.20/1.01  prep_cycles:                            4
% 2.20/1.01  pred_elim_time:                         0.011
% 2.20/1.01  splitting_time:                         0.
% 2.20/1.01  sem_filter_time:                        0.
% 2.20/1.01  monotx_time:                            0.001
% 2.20/1.01  subtype_inf_time:                       0.
% 2.20/1.01  
% 2.20/1.01  ------ Problem properties
% 2.20/1.01  
% 2.20/1.01  clauses:                                35
% 2.20/1.01  conjectures:                            1
% 2.20/1.01  epr:                                    8
% 2.20/1.01  horn:                                   28
% 2.20/1.01  ground:                                 10
% 2.20/1.01  unary:                                  10
% 2.20/1.01  binary:                                 15
% 2.20/1.01  lits:                                   74
% 2.20/1.01  lits_eq:                                26
% 2.20/1.01  fd_pure:                                0
% 2.20/1.01  fd_pseudo:                              0
% 2.20/1.01  fd_cond:                                2
% 2.20/1.01  fd_pseudo_cond:                         1
% 2.20/1.01  ac_symbols:                             0
% 2.20/1.01  
% 2.20/1.01  ------ Propositional Solver
% 2.20/1.01  
% 2.20/1.01  prop_solver_calls:                      26
% 2.20/1.01  prop_fast_solver_calls:                 926
% 2.20/1.01  smt_solver_calls:                       0
% 2.20/1.01  smt_fast_solver_calls:                  0
% 2.20/1.01  prop_num_of_clauses:                    896
% 2.20/1.01  prop_preprocess_simplified:             5447
% 2.20/1.01  prop_fo_subsumed:                       15
% 2.20/1.01  prop_solver_time:                       0.
% 2.20/1.01  smt_solver_time:                        0.
% 2.20/1.01  smt_fast_solver_time:                   0.
% 2.20/1.01  prop_fast_solver_time:                  0.
% 2.20/1.01  prop_unsat_core_time:                   0.
% 2.20/1.01  
% 2.20/1.01  ------ QBF
% 2.20/1.01  
% 2.20/1.01  qbf_q_res:                              0
% 2.20/1.01  qbf_num_tautologies:                    0
% 2.20/1.01  qbf_prep_cycles:                        0
% 2.20/1.01  
% 2.20/1.01  ------ BMC1
% 2.20/1.01  
% 2.20/1.01  bmc1_current_bound:                     -1
% 2.20/1.01  bmc1_last_solved_bound:                 -1
% 2.20/1.01  bmc1_unsat_core_size:                   -1
% 2.20/1.01  bmc1_unsat_core_parents_size:           -1
% 2.20/1.01  bmc1_merge_next_fun:                    0
% 2.20/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.20/1.01  
% 2.20/1.01  ------ Instantiation
% 2.20/1.01  
% 2.20/1.01  inst_num_of_clauses:                    281
% 2.20/1.01  inst_num_in_passive:                    50
% 2.20/1.01  inst_num_in_active:                     157
% 2.20/1.01  inst_num_in_unprocessed:                73
% 2.20/1.01  inst_num_of_loops:                      193
% 2.20/1.01  inst_num_of_learning_restarts:          0
% 2.20/1.01  inst_num_moves_active_passive:          33
% 2.20/1.01  inst_lit_activity:                      0
% 2.20/1.01  inst_lit_activity_moves:                0
% 2.20/1.01  inst_num_tautologies:                   0
% 2.20/1.01  inst_num_prop_implied:                  0
% 2.20/1.01  inst_num_existing_simplified:           0
% 2.20/1.01  inst_num_eq_res_simplified:             0
% 2.20/1.01  inst_num_child_elim:                    0
% 2.20/1.01  inst_num_of_dismatching_blockings:      28
% 2.20/1.01  inst_num_of_non_proper_insts:           168
% 2.20/1.01  inst_num_of_duplicates:                 0
% 2.20/1.01  inst_inst_num_from_inst_to_res:         0
% 2.20/1.01  inst_dismatching_checking_time:         0.
% 2.20/1.01  
% 2.20/1.01  ------ Resolution
% 2.20/1.01  
% 2.20/1.01  res_num_of_clauses:                     0
% 2.20/1.01  res_num_in_passive:                     0
% 2.20/1.01  res_num_in_active:                      0
% 2.20/1.01  res_num_of_loops:                       176
% 2.20/1.01  res_forward_subset_subsumed:            4
% 2.20/1.01  res_backward_subset_subsumed:           0
% 2.20/1.01  res_forward_subsumed:                   0
% 2.20/1.01  res_backward_subsumed:                  0
% 2.20/1.01  res_forward_subsumption_resolution:     1
% 2.20/1.01  res_backward_subsumption_resolution:    0
% 2.20/1.01  res_clause_to_clause_subsumption:       174
% 2.20/1.01  res_orphan_elimination:                 0
% 2.20/1.01  res_tautology_del:                      29
% 2.20/1.01  res_num_eq_res_simplified:              1
% 2.20/1.01  res_num_sel_changes:                    0
% 2.20/1.01  res_moves_from_active_to_pass:          0
% 2.20/1.01  
% 2.20/1.01  ------ Superposition
% 2.20/1.01  
% 2.20/1.01  sup_time_total:                         0.
% 2.20/1.01  sup_time_generating:                    0.
% 2.20/1.01  sup_time_sim_full:                      0.
% 2.20/1.01  sup_time_sim_immed:                     0.
% 2.20/1.01  
% 2.20/1.01  sup_num_of_clauses:                     53
% 2.20/1.01  sup_num_in_active:                      31
% 2.20/1.01  sup_num_in_passive:                     22
% 2.20/1.01  sup_num_of_loops:                       38
% 2.20/1.01  sup_fw_superposition:                   29
% 2.20/1.01  sup_bw_superposition:                   9
% 2.20/1.01  sup_immediate_simplified:               1
% 2.20/1.01  sup_given_eliminated:                   0
% 2.20/1.01  comparisons_done:                       0
% 2.20/1.01  comparisons_avoided:                    0
% 2.20/1.01  
% 2.20/1.01  ------ Simplifications
% 2.20/1.01  
% 2.20/1.01  
% 2.20/1.01  sim_fw_subset_subsumed:                 1
% 2.20/1.01  sim_bw_subset_subsumed:                 3
% 2.20/1.01  sim_fw_subsumed:                        0
% 2.20/1.01  sim_bw_subsumed:                        0
% 2.20/1.01  sim_fw_subsumption_res:                 0
% 2.20/1.01  sim_bw_subsumption_res:                 0
% 2.20/1.01  sim_tautology_del:                      0
% 2.20/1.01  sim_eq_tautology_del:                   2
% 2.20/1.01  sim_eq_res_simp:                        0
% 2.20/1.01  sim_fw_demodulated:                     4
% 2.20/1.01  sim_bw_demodulated:                     4
% 2.20/1.01  sim_light_normalised:                   0
% 2.20/1.01  sim_joinable_taut:                      0
% 2.20/1.01  sim_joinable_simp:                      0
% 2.20/1.01  sim_ac_normalised:                      0
% 2.20/1.01  sim_smt_subsumption:                    0
% 2.20/1.01  
%------------------------------------------------------------------------------
