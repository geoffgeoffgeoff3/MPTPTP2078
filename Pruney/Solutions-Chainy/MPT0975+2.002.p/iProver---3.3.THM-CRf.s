%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:23 EST 2020

% Result     : Theorem 1.58s
% Output     : CNFRefutation 1.58s
% Verified   : 
% Statistics : Number of formulae       :  153 (1162 expanded)
%              Number of clauses        :   89 ( 410 expanded)
%              Number of leaves         :   18 ( 271 expanded)
%              Depth                    :   30
%              Number of atoms          :  654 (6733 expanded)
%              Number of equality atoms :  277 (2051 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_relat_1(X4) )
         => ( r2_hidden(X2,X0)
           => ( k1_funct_1(X4,k1_funct_1(X3,X2)) = k1_funct_1(k5_relat_1(X3,X4),X2)
              | k1_xboole_0 = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_relat_1(X4) )
           => ( r2_hidden(X2,X0)
             => ( k1_funct_1(X4,k1_funct_1(X3,X2)) = k1_funct_1(k5_relat_1(X3,X4),X2)
                | k1_xboole_0 = X1 ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f29,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2)
          & k1_xboole_0 != X1
          & r2_hidden(X2,X0)
          & v1_funct_1(X4)
          & v1_relat_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2)
          & k1_xboole_0 != X1
          & r2_hidden(X2,X0)
          & v1_funct_1(X4)
          & v1_relat_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f29])).

fof(f43,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2)
          & k1_xboole_0 != X1
          & r2_hidden(X2,X0)
          & v1_funct_1(X4)
          & v1_relat_1(X4) )
     => ( k1_funct_1(k5_relat_1(X3,sK6),X2) != k1_funct_1(sK6,k1_funct_1(X3,X2))
        & k1_xboole_0 != X1
        & r2_hidden(X2,X0)
        & v1_funct_1(sK6)
        & v1_relat_1(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ? [X0,X1,X2,X3] :
        ( ? [X4] :
            ( k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2)
            & k1_xboole_0 != X1
            & r2_hidden(X2,X0)
            & v1_funct_1(X4)
            & v1_relat_1(X4) )
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ? [X4] :
          ( k1_funct_1(X4,k1_funct_1(sK5,sK4)) != k1_funct_1(k5_relat_1(sK5,X4),sK4)
          & k1_xboole_0 != sK3
          & r2_hidden(sK4,sK2)
          & v1_funct_1(X4)
          & v1_relat_1(X4) )
      & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
      & v1_funct_2(sK5,sK2,sK3)
      & v1_funct_1(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4))
    & k1_xboole_0 != sK3
    & r2_hidden(sK4,sK2)
    & v1_funct_1(sK6)
    & v1_relat_1(sK6)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))
    & v1_funct_2(sK5,sK2,sK3)
    & v1_funct_1(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f30,f43,f42])).

fof(f74,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f44])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1,X2] :
          ( ( ~ r2_hidden(X1,k1_relat_1(X0))
           => ( k1_funct_1(X0,X1) = X2
            <=> k1_xboole_0 = X2 ) )
          & ( r2_hidden(X1,k1_relat_1(X0))
           => ( k1_funct_1(X0,X1) = X2
            <=> r2_hidden(k4_tarski(X1,X2),X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k1_funct_1(X0,X1) = X2
            <=> k1_xboole_0 = X2 )
            | r2_hidden(X1,k1_relat_1(X0)) )
          & ( ( k1_funct_1(X0,X1) = X2
            <=> r2_hidden(k4_tarski(X1,X2),X0) )
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( k1_funct_1(X0,X1) = X2
            <=> k1_xboole_0 = X2 )
            | r2_hidden(X1,k1_relat_1(X0)) )
          & ( ( k1_funct_1(X0,X1) = X2
            <=> r2_hidden(k4_tarski(X1,X2),X0) )
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( ( k1_funct_1(X0,X1) = X2
                | k1_xboole_0 != X2 )
              & ( k1_xboole_0 = X2
                | k1_funct_1(X0,X1) != X2 ) )
            | r2_hidden(X1,k1_relat_1(X0)) )
          & ( ( ( k1_funct_1(X0,X1) = X2
                | ~ r2_hidden(k4_tarski(X1,X2),X0) )
              & ( r2_hidden(k4_tarski(X1,X2),X0)
                | k1_funct_1(X0,X1) != X2 ) )
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | k1_funct_1(X0,X1) != X2
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k1_funct_1(X0,X1) = k1_xboole_0
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f70,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f44])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( ( v1_funct_1(X2)
            & v1_relat_1(X2) )
         => ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f20])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
              | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              | ~ r2_hidden(X0,k1_relat_1(X2)) )
            & ( ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
                & r2_hidden(X0,k1_relat_1(X2)) )
              | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
              | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              | ~ r2_hidden(X0,k1_relat_1(X2)) )
            & ( ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
                & r2_hidden(X0,k1_relat_1(X2)) )
              | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
      | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( ( v1_funct_1(X2)
            & v1_relat_1(X2) )
         => ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
           => k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
          | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
          | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
      | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f73,plain,(
    v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f44])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f45,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f72,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f44])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f77,plain,(
    k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4)) ),
    inference(cnf_transformation,[],[f44])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k5_relat_1(X0,X1))
        & v1_relat_1(k5_relat_1(X0,X1)) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f53,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k5_relat_1(X0,X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f52,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f46,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f75,plain,(
    r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f71,plain,(
    v1_funct_2(sK5,sK2,sK3) ),
    inference(cnf_transformation,[],[f44])).

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
    inference(ennf_transformation,[],[f10])).

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
    inference(flattening,[],[f27])).

fof(f41,plain,(
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
    inference(nnf_transformation,[],[f28])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f76,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f44])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
     => ( ! [X3] :
            ~ ( ! [X4] : ~ r2_hidden(k4_tarski(X3,X4),X2)
              & r2_hidden(X3,X1) )
      <=> k1_relset_1(X1,X0,X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( ! [X3] :
            ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
            | ~ r2_hidden(X3,X1) )
      <=> k1_relset_1(X1,X0,X2) = X1 )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ? [X3] :
              ( ! [X4] : ~ r2_hidden(k4_tarski(X3,X4),X2)
              & r2_hidden(X3,X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ? [X5] :
              ( ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X2)
              & r2_hidden(X5,X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(rectify,[],[f36])).

fof(f39,plain,(
    ! [X2,X1] :
      ( ? [X5] :
          ( ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X2)
          & r2_hidden(X5,X1) )
     => ( ! [X6] : ~ r2_hidden(k4_tarski(sK1(X1,X2),X6),X2)
        & r2_hidden(sK1(X1,X2),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X3,X2] :
      ( ? [X4] : r2_hidden(k4_tarski(X3,X4),X2)
     => r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( ( ! [X3] :
              ( r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2)
              | ~ r2_hidden(X3,X1) )
          | k1_relset_1(X1,X0,X2) != X1 )
        & ( k1_relset_1(X1,X0,X2) = X1
          | ( ! [X6] : ~ r2_hidden(k4_tarski(sK1(X1,X2),X6),X2)
            & r2_hidden(sK1(X1,X2),X1) ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f37,f39,f38])).

fof(f63,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2)
      | ~ r2_hidden(X3,X1)
      | k1_relset_1(X1,X0,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> ( k1_funct_1(X2,X0) = X1
          & r2_hidden(X0,k1_relat_1(X2)) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | k1_funct_1(X2,X0) != X1
          | ~ r2_hidden(X0,k1_relat_1(X2)) )
        & ( ( k1_funct_1(X2,X0) = X1
            & r2_hidden(X0,k1_relat_1(X2)) )
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f34])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k1_relat_1(X2))
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_28,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1075,plain,
    ( v1_funct_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_4,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1085,plain,
    ( k1_funct_1(X0,X1) = k1_xboole_0
    | r2_hidden(X1,k1_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1073,plain,
    ( v1_funct_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
    | ~ r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1082,plain,
    ( r2_hidden(X0,k1_relat_1(X1)) != iProver_top
    | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2))) = iProver_top
    | r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2)) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2963,plain,
    ( k1_funct_1(X0,k1_funct_1(X1,X2)) = k1_xboole_0
    | r2_hidden(X2,k1_relat_1(X1)) != iProver_top
    | r2_hidden(X2,k1_relat_1(k5_relat_1(X1,X0))) = iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1085,c_1082])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | k1_funct_1(k5_relat_1(X1,X2),X0) = k1_funct_1(X2,k1_funct_1(X1,X0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1079,plain,
    ( k1_funct_1(k5_relat_1(X0,X1),X2) = k1_funct_1(X1,k1_funct_1(X0,X2))
    | r2_hidden(X2,k1_relat_1(k5_relat_1(X0,X1))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_5533,plain,
    ( k1_funct_1(X0,k1_funct_1(X1,X2)) = k1_xboole_0
    | k1_funct_1(k5_relat_1(X1,X0),X2) = k1_funct_1(X0,k1_funct_1(X1,X2))
    | r2_hidden(X2,k1_relat_1(X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2963,c_1079])).

cnf(c_5548,plain,
    ( k1_funct_1(X0,X1) = k1_xboole_0
    | k1_funct_1(X2,k1_funct_1(X0,X1)) = k1_funct_1(k5_relat_1(X0,X2),X1)
    | k1_funct_1(X2,k1_funct_1(X0,X1)) = k1_xboole_0
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1085,c_5533])).

cnf(c_5589,plain,
    ( k1_funct_1(X0,X1) = k1_xboole_0
    | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
    | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_1075,c_5548])).

cnf(c_29,negated_conjecture,
    ( v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_36,plain,
    ( v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_5601,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
    | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
    | k1_funct_1(X0,X1) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5589,c_36])).

cnf(c_5602,plain,
    ( k1_funct_1(X0,X1) = k1_xboole_0
    | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
    | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_5601])).

cnf(c_5609,plain,
    ( k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0)
    | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
    | k1_funct_1(sK5,X0) = k1_xboole_0
    | v1_relat_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1073,c_5602])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_334,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(X0)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_30])).

cnf(c_335,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_334])).

cnf(c_1139,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_335])).

cnf(c_1221,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(sK2,sK3))
    | v1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1139])).

cnf(c_1222,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | v1_relat_1(k2_zfmisc_1(sK2,sK3)) != iProver_top
    | v1_relat_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1221])).

cnf(c_739,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_1157,plain,
    ( k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK2,sK3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) = k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_739])).

cnf(c_1228,plain,
    ( k2_zfmisc_1(sK2,sK3) != k2_zfmisc_1(sK2,sK3)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) = k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1157])).

cnf(c_2,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1355,plain,
    ( v1_relat_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1356,plain,
    ( v1_relat_1(k2_zfmisc_1(sK2,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1355])).

cnf(c_736,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1358,plain,
    ( k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_736])).

cnf(c_5646,plain,
    ( k1_funct_1(sK5,X0) = k1_xboole_0
    | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
    | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5609,c_1222,c_1228,c_1356,c_1358])).

cnf(c_5647,plain,
    ( k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0)
    | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
    | k1_funct_1(sK5,X0) = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_5646])).

cnf(c_25,negated_conjecture,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_5651,plain,
    ( k1_funct_1(sK6,k1_funct_1(sK5,sK4)) = k1_xboole_0
    | k1_funct_1(sK5,sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5647,c_25])).

cnf(c_1115,plain,
    ( ~ r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,sK6)))
    | ~ v1_funct_1(sK6)
    | ~ v1_funct_1(sK5)
    | ~ v1_relat_1(sK6)
    | ~ v1_relat_1(sK5)
    | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4)) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_737,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1121,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != X0
    | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4))
    | k1_funct_1(sK6,k1_funct_1(sK5,sK4)) != X0 ),
    inference(instantiation,[status(thm)],[c_737])).

cnf(c_1122,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4))
    | k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_xboole_0
    | k1_funct_1(sK6,k1_funct_1(sK5,sK4)) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1121])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | v1_funct_1(k5_relat_1(X0,X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1172,plain,
    ( v1_funct_1(k5_relat_1(sK5,sK6))
    | ~ v1_funct_1(sK6)
    | ~ v1_funct_1(sK5)
    | ~ v1_relat_1(sK6)
    | ~ v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_191,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8,c_1])).

cnf(c_192,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0)) ),
    inference(renaming,[status(thm)],[c_191])).

cnf(c_1426,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k5_relat_1(X0,sK6))
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_192])).

cnf(c_1787,plain,
    ( v1_relat_1(k5_relat_1(sK5,sK6))
    | ~ v1_relat_1(sK6)
    | ~ v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_1426])).

cnf(c_1688,plain,
    ( r2_hidden(X0,k1_relat_1(k5_relat_1(sK5,sK6)))
    | ~ v1_funct_1(k5_relat_1(sK5,sK6))
    | ~ v1_relat_1(k5_relat_1(sK5,sK6))
    | k1_funct_1(k5_relat_1(sK5,sK6),X0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_2531,plain,
    ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,sK6)))
    | ~ v1_funct_1(k5_relat_1(sK5,sK6))
    | ~ v1_relat_1(k5_relat_1(sK5,sK6))
    | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1688])).

cnf(c_5670,plain,
    ( k1_funct_1(sK5,sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5651,c_32,c_29,c_28,c_25,c_1115,c_1122,c_1172,c_1221,c_1228,c_1355,c_1358,c_1787,c_2531])).

cnf(c_5676,plain,
    ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
    | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK5) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_5670,c_1082])).

cnf(c_33,plain,
    ( v1_funct_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_27,negated_conjecture,
    ( r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_38,plain,
    ( r2_hidden(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_31,negated_conjecture,
    ( v1_funct_2(sK5,sK2,sK3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_24,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_462,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | sK5 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_30])).

cnf(c_463,plain,
    ( ~ v1_funct_2(sK5,X0,X1)
    | k1_relset_1(X0,X1,sK5) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_462])).

cnf(c_572,plain,
    ( k1_relset_1(X0,X1,sK5) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | sK2 != X0
    | sK3 != X1
    | sK5 != sK5
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_463])).

cnf(c_573,plain,
    ( k1_relset_1(sK2,sK3,sK5) = sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_572])).

cnf(c_26,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f76])).

cnf(c_574,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | k1_relset_1(sK2,sK3,sK5) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_573,c_26])).

cnf(c_575,plain,
    ( k1_relset_1(sK2,sK3,sK5) = sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(renaming,[status(thm)],[c_574])).

cnf(c_619,plain,
    ( k1_relset_1(sK2,sK3,sK5) = sK2 ),
    inference(equality_resolution_simp,[status(thm)],[c_575])).

cnf(c_16,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k4_tarski(X0,sK0(X2,X0)),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | k1_relset_1(X1,X3,X2) != X1 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_349,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k4_tarski(X0,sK0(X2,X0)),X2)
    | k1_relset_1(X1,X3,X2) != X1
    | k1_zfmisc_1(k2_zfmisc_1(X1,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_30])).

cnf(c_350,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k4_tarski(X0,sK0(sK5,X0)),sK5)
    | k1_relset_1(X1,X2,sK5) != X1
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(unflattening,[status(thm)],[c_349])).

cnf(c_1192,plain,
    ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
    | ~ r2_hidden(sK4,sK2)
    | k1_relset_1(sK2,X0,sK5) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_350])).

cnf(c_1268,plain,
    ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
    | ~ r2_hidden(sK4,sK2)
    | k1_relset_1(sK2,sK3,sK5) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1192])).

cnf(c_1269,plain,
    ( k1_relset_1(sK2,sK3,sK5) != sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
    | r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5) = iProver_top
    | r2_hidden(sK4,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1268])).

cnf(c_15,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1875,plain,
    ( r2_hidden(X0,k1_relat_1(sK5))
    | ~ r2_hidden(k4_tarski(X0,X1),sK5)
    | ~ v1_funct_1(sK5)
    | ~ v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_2215,plain,
    ( ~ r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
    | r2_hidden(sK4,k1_relat_1(sK5))
    | ~ v1_funct_1(sK5)
    | ~ v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_1875])).

cnf(c_2216,plain,
    ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5) != iProver_top
    | r2_hidden(sK4,k1_relat_1(sK5)) = iProver_top
    | v1_funct_1(sK5) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2215])).

cnf(c_5768,plain,
    ( v1_relat_1(X0) != iProver_top
    | r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5676,c_33,c_38,c_619,c_1222,c_1228,c_1269,c_1356,c_1358,c_2216])).

cnf(c_5769,plain,
    ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_5768])).

cnf(c_5776,plain,
    ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_funct_1(sK5,sK4))
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK5) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_5769,c_1079])).

cnf(c_5778,plain,
    ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK5) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5776,c_5670])).

cnf(c_5948,plain,
    ( v1_relat_1(X0) != iProver_top
    | k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5778,c_33,c_1222,c_1228,c_1356,c_1358])).

cnf(c_5949,plain,
    ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
    | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_5948])).

cnf(c_5954,plain,
    ( k1_funct_1(X0,k1_xboole_0) = k1_xboole_0
    | k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1085,c_5949])).

cnf(c_6060,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_xboole_0)
    | k1_funct_1(sK6,k1_xboole_0) = k1_xboole_0
    | v1_relat_1(sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_1075,c_5954])).

cnf(c_5674,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_xboole_0) ),
    inference(demodulation,[status(thm)],[c_5670,c_25])).

cnf(c_6068,plain,
    ( k1_funct_1(sK6,k1_xboole_0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6060,c_36,c_5674])).

cnf(c_6070,plain,
    ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6068,c_5674])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6070,c_2531,c_1787,c_1358,c_1355,c_1228,c_1221,c_1172,c_1115,c_25,c_28,c_29,c_32])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:20:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.58/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.58/1.01  
% 1.58/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.58/1.01  
% 1.58/1.01  ------  iProver source info
% 1.58/1.01  
% 1.58/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.58/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.58/1.01  git: non_committed_changes: false
% 1.58/1.01  git: last_make_outside_of_git: false
% 1.58/1.01  
% 1.58/1.01  ------ 
% 1.58/1.01  
% 1.58/1.01  ------ Input Options
% 1.58/1.01  
% 1.58/1.01  --out_options                           all
% 1.58/1.01  --tptp_safe_out                         true
% 1.58/1.01  --problem_path                          ""
% 1.58/1.01  --include_path                          ""
% 1.58/1.01  --clausifier                            res/vclausify_rel
% 1.58/1.01  --clausifier_options                    ""
% 1.58/1.01  --stdin                                 false
% 1.58/1.01  --stats_out                             all
% 1.58/1.01  
% 1.58/1.01  ------ General Options
% 1.58/1.01  
% 1.58/1.01  --fof                                   false
% 1.58/1.01  --time_out_real                         305.
% 1.58/1.01  --time_out_virtual                      -1.
% 1.58/1.01  --symbol_type_check                     false
% 1.58/1.01  --clausify_out                          false
% 1.58/1.01  --sig_cnt_out                           false
% 1.58/1.01  --trig_cnt_out                          false
% 1.58/1.01  --trig_cnt_out_tolerance                1.
% 1.58/1.01  --trig_cnt_out_sk_spl                   false
% 1.58/1.01  --abstr_cl_out                          false
% 1.58/1.01  
% 1.58/1.01  ------ Global Options
% 1.58/1.01  
% 1.58/1.01  --schedule                              default
% 1.58/1.01  --add_important_lit                     false
% 1.58/1.01  --prop_solver_per_cl                    1000
% 1.58/1.01  --min_unsat_core                        false
% 1.58/1.01  --soft_assumptions                      false
% 1.58/1.01  --soft_lemma_size                       3
% 1.58/1.01  --prop_impl_unit_size                   0
% 1.58/1.01  --prop_impl_unit                        []
% 1.58/1.01  --share_sel_clauses                     true
% 1.58/1.01  --reset_solvers                         false
% 1.58/1.01  --bc_imp_inh                            [conj_cone]
% 1.58/1.01  --conj_cone_tolerance                   3.
% 1.58/1.01  --extra_neg_conj                        none
% 1.58/1.01  --large_theory_mode                     true
% 1.58/1.01  --prolific_symb_bound                   200
% 1.58/1.01  --lt_threshold                          2000
% 1.58/1.01  --clause_weak_htbl                      true
% 1.58/1.01  --gc_record_bc_elim                     false
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing Options
% 1.58/1.01  
% 1.58/1.01  --preprocessing_flag                    true
% 1.58/1.01  --time_out_prep_mult                    0.1
% 1.58/1.01  --splitting_mode                        input
% 1.58/1.01  --splitting_grd                         true
% 1.58/1.01  --splitting_cvd                         false
% 1.58/1.01  --splitting_cvd_svl                     false
% 1.58/1.01  --splitting_nvd                         32
% 1.58/1.01  --sub_typing                            true
% 1.58/1.01  --prep_gs_sim                           true
% 1.58/1.01  --prep_unflatten                        true
% 1.58/1.01  --prep_res_sim                          true
% 1.58/1.01  --prep_upred                            true
% 1.58/1.01  --prep_sem_filter                       exhaustive
% 1.58/1.01  --prep_sem_filter_out                   false
% 1.58/1.01  --pred_elim                             true
% 1.58/1.01  --res_sim_input                         true
% 1.58/1.01  --eq_ax_congr_red                       true
% 1.58/1.01  --pure_diseq_elim                       true
% 1.58/1.01  --brand_transform                       false
% 1.58/1.01  --non_eq_to_eq                          false
% 1.58/1.01  --prep_def_merge                        true
% 1.58/1.01  --prep_def_merge_prop_impl              false
% 1.58/1.01  --prep_def_merge_mbd                    true
% 1.58/1.01  --prep_def_merge_tr_red                 false
% 1.58/1.01  --prep_def_merge_tr_cl                  false
% 1.58/1.01  --smt_preprocessing                     true
% 1.58/1.01  --smt_ac_axioms                         fast
% 1.58/1.01  --preprocessed_out                      false
% 1.58/1.01  --preprocessed_stats                    false
% 1.58/1.01  
% 1.58/1.01  ------ Abstraction refinement Options
% 1.58/1.01  
% 1.58/1.01  --abstr_ref                             []
% 1.58/1.01  --abstr_ref_prep                        false
% 1.58/1.01  --abstr_ref_until_sat                   false
% 1.58/1.01  --abstr_ref_sig_restrict                funpre
% 1.58/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.58/1.01  --abstr_ref_under                       []
% 1.58/1.01  
% 1.58/1.01  ------ SAT Options
% 1.58/1.01  
% 1.58/1.01  --sat_mode                              false
% 1.58/1.01  --sat_fm_restart_options                ""
% 1.58/1.01  --sat_gr_def                            false
% 1.58/1.01  --sat_epr_types                         true
% 1.58/1.01  --sat_non_cyclic_types                  false
% 1.58/1.01  --sat_finite_models                     false
% 1.58/1.01  --sat_fm_lemmas                         false
% 1.58/1.01  --sat_fm_prep                           false
% 1.58/1.01  --sat_fm_uc_incr                        true
% 1.58/1.01  --sat_out_model                         small
% 1.58/1.01  --sat_out_clauses                       false
% 1.58/1.01  
% 1.58/1.01  ------ QBF Options
% 1.58/1.01  
% 1.58/1.01  --qbf_mode                              false
% 1.58/1.01  --qbf_elim_univ                         false
% 1.58/1.01  --qbf_dom_inst                          none
% 1.58/1.01  --qbf_dom_pre_inst                      false
% 1.58/1.01  --qbf_sk_in                             false
% 1.58/1.01  --qbf_pred_elim                         true
% 1.58/1.01  --qbf_split                             512
% 1.58/1.01  
% 1.58/1.01  ------ BMC1 Options
% 1.58/1.01  
% 1.58/1.01  --bmc1_incremental                      false
% 1.58/1.01  --bmc1_axioms                           reachable_all
% 1.58/1.01  --bmc1_min_bound                        0
% 1.58/1.01  --bmc1_max_bound                        -1
% 1.58/1.01  --bmc1_max_bound_default                -1
% 1.58/1.01  --bmc1_symbol_reachability              true
% 1.58/1.01  --bmc1_property_lemmas                  false
% 1.58/1.01  --bmc1_k_induction                      false
% 1.58/1.01  --bmc1_non_equiv_states                 false
% 1.58/1.01  --bmc1_deadlock                         false
% 1.58/1.01  --bmc1_ucm                              false
% 1.58/1.01  --bmc1_add_unsat_core                   none
% 1.58/1.01  --bmc1_unsat_core_children              false
% 1.58/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.58/1.01  --bmc1_out_stat                         full
% 1.58/1.01  --bmc1_ground_init                      false
% 1.58/1.01  --bmc1_pre_inst_next_state              false
% 1.58/1.01  --bmc1_pre_inst_state                   false
% 1.58/1.01  --bmc1_pre_inst_reach_state             false
% 1.58/1.01  --bmc1_out_unsat_core                   false
% 1.58/1.01  --bmc1_aig_witness_out                  false
% 1.58/1.01  --bmc1_verbose                          false
% 1.58/1.01  --bmc1_dump_clauses_tptp                false
% 1.58/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.58/1.01  --bmc1_dump_file                        -
% 1.58/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.58/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.58/1.01  --bmc1_ucm_extend_mode                  1
% 1.58/1.01  --bmc1_ucm_init_mode                    2
% 1.58/1.01  --bmc1_ucm_cone_mode                    none
% 1.58/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.58/1.01  --bmc1_ucm_relax_model                  4
% 1.58/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.58/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.58/1.01  --bmc1_ucm_layered_model                none
% 1.58/1.01  --bmc1_ucm_max_lemma_size               10
% 1.58/1.01  
% 1.58/1.01  ------ AIG Options
% 1.58/1.01  
% 1.58/1.01  --aig_mode                              false
% 1.58/1.01  
% 1.58/1.01  ------ Instantiation Options
% 1.58/1.01  
% 1.58/1.01  --instantiation_flag                    true
% 1.58/1.01  --inst_sos_flag                         true
% 1.58/1.01  --inst_sos_phase                        true
% 1.58/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.58/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.58/1.01  --inst_lit_sel_side                     num_symb
% 1.58/1.01  --inst_solver_per_active                1400
% 1.58/1.01  --inst_solver_calls_frac                1.
% 1.58/1.01  --inst_passive_queue_type               priority_queues
% 1.58/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.58/1.01  --inst_passive_queues_freq              [25;2]
% 1.58/1.01  --inst_dismatching                      true
% 1.58/1.01  --inst_eager_unprocessed_to_passive     true
% 1.58/1.01  --inst_prop_sim_given                   true
% 1.58/1.01  --inst_prop_sim_new                     false
% 1.58/1.01  --inst_subs_new                         false
% 1.58/1.01  --inst_eq_res_simp                      false
% 1.58/1.01  --inst_subs_given                       false
% 1.58/1.01  --inst_orphan_elimination               true
% 1.58/1.01  --inst_learning_loop_flag               true
% 1.58/1.01  --inst_learning_start                   3000
% 1.58/1.01  --inst_learning_factor                  2
% 1.58/1.01  --inst_start_prop_sim_after_learn       3
% 1.58/1.01  --inst_sel_renew                        solver
% 1.58/1.01  --inst_lit_activity_flag                true
% 1.58/1.01  --inst_restr_to_given                   false
% 1.58/1.01  --inst_activity_threshold               500
% 1.58/1.01  --inst_out_proof                        true
% 1.58/1.01  
% 1.58/1.01  ------ Resolution Options
% 1.58/1.01  
% 1.58/1.01  --resolution_flag                       true
% 1.58/1.01  --res_lit_sel                           adaptive
% 1.58/1.01  --res_lit_sel_side                      none
% 1.58/1.01  --res_ordering                          kbo
% 1.58/1.01  --res_to_prop_solver                    active
% 1.58/1.01  --res_prop_simpl_new                    false
% 1.58/1.01  --res_prop_simpl_given                  true
% 1.58/1.01  --res_passive_queue_type                priority_queues
% 1.58/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.58/1.01  --res_passive_queues_freq               [15;5]
% 1.58/1.01  --res_forward_subs                      full
% 1.58/1.01  --res_backward_subs                     full
% 1.58/1.01  --res_forward_subs_resolution           true
% 1.58/1.01  --res_backward_subs_resolution          true
% 1.58/1.01  --res_orphan_elimination                true
% 1.58/1.01  --res_time_limit                        2.
% 1.58/1.01  --res_out_proof                         true
% 1.58/1.01  
% 1.58/1.01  ------ Superposition Options
% 1.58/1.01  
% 1.58/1.01  --superposition_flag                    true
% 1.58/1.01  --sup_passive_queue_type                priority_queues
% 1.58/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.58/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.58/1.01  --demod_completeness_check              fast
% 1.58/1.01  --demod_use_ground                      true
% 1.58/1.01  --sup_to_prop_solver                    passive
% 1.58/1.01  --sup_prop_simpl_new                    true
% 1.58/1.01  --sup_prop_simpl_given                  true
% 1.58/1.01  --sup_fun_splitting                     true
% 1.58/1.01  --sup_smt_interval                      50000
% 1.58/1.01  
% 1.58/1.01  ------ Superposition Simplification Setup
% 1.58/1.01  
% 1.58/1.01  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 1.58/1.01  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 1.58/1.01  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 1.58/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 1.58/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.58/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 1.58/1.01  --sup_full_bw                           [BwDemod;BwSubsumption]
% 1.58/1.01  --sup_immed_triv                        [TrivRules]
% 1.58/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_immed_bw_main                     []
% 1.58/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 1.58/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.58/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_input_bw                          []
% 1.58/1.01  
% 1.58/1.01  ------ Combination Options
% 1.58/1.01  
% 1.58/1.01  --comb_res_mult                         3
% 1.58/1.01  --comb_sup_mult                         2
% 1.58/1.01  --comb_inst_mult                        10
% 1.58/1.01  
% 1.58/1.01  ------ Debug Options
% 1.58/1.01  
% 1.58/1.01  --dbg_backtrace                         false
% 1.58/1.01  --dbg_dump_prop_clauses                 false
% 1.58/1.01  --dbg_dump_prop_clauses_file            -
% 1.58/1.01  --dbg_out_stat                          false
% 1.58/1.01  ------ Parsing...
% 1.58/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.58/1.01  ------ Proving...
% 1.58/1.01  ------ Problem Properties 
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  clauses                                 25
% 1.58/1.01  conjectures                             6
% 1.58/1.01  EPR                                     5
% 1.58/1.01  Horn                                    22
% 1.58/1.01  unary                                   8
% 1.58/1.01  binary                                  0
% 1.58/1.01  lits                                    80
% 1.58/1.01  lits eq                                 20
% 1.58/1.01  fd_pure                                 0
% 1.58/1.01  fd_pseudo                               0
% 1.58/1.01  fd_cond                                 0
% 1.58/1.01  fd_pseudo_cond                          1
% 1.58/1.01  AC symbols                              0
% 1.58/1.01  
% 1.58/1.01  ------ Schedule dynamic 5 is on 
% 1.58/1.01  
% 1.58/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  ------ 
% 1.58/1.01  Current options:
% 1.58/1.01  ------ 
% 1.58/1.01  
% 1.58/1.01  ------ Input Options
% 1.58/1.01  
% 1.58/1.01  --out_options                           all
% 1.58/1.01  --tptp_safe_out                         true
% 1.58/1.01  --problem_path                          ""
% 1.58/1.01  --include_path                          ""
% 1.58/1.01  --clausifier                            res/vclausify_rel
% 1.58/1.01  --clausifier_options                    ""
% 1.58/1.01  --stdin                                 false
% 1.58/1.01  --stats_out                             all
% 1.58/1.01  
% 1.58/1.01  ------ General Options
% 1.58/1.01  
% 1.58/1.01  --fof                                   false
% 1.58/1.01  --time_out_real                         305.
% 1.58/1.01  --time_out_virtual                      -1.
% 1.58/1.01  --symbol_type_check                     false
% 1.58/1.01  --clausify_out                          false
% 1.58/1.01  --sig_cnt_out                           false
% 1.58/1.01  --trig_cnt_out                          false
% 1.58/1.01  --trig_cnt_out_tolerance                1.
% 1.58/1.01  --trig_cnt_out_sk_spl                   false
% 1.58/1.01  --abstr_cl_out                          false
% 1.58/1.01  
% 1.58/1.01  ------ Global Options
% 1.58/1.01  
% 1.58/1.01  --schedule                              default
% 1.58/1.01  --add_important_lit                     false
% 1.58/1.01  --prop_solver_per_cl                    1000
% 1.58/1.01  --min_unsat_core                        false
% 1.58/1.01  --soft_assumptions                      false
% 1.58/1.01  --soft_lemma_size                       3
% 1.58/1.01  --prop_impl_unit_size                   0
% 1.58/1.01  --prop_impl_unit                        []
% 1.58/1.01  --share_sel_clauses                     true
% 1.58/1.01  --reset_solvers                         false
% 1.58/1.01  --bc_imp_inh                            [conj_cone]
% 1.58/1.01  --conj_cone_tolerance                   3.
% 1.58/1.01  --extra_neg_conj                        none
% 1.58/1.01  --large_theory_mode                     true
% 1.58/1.01  --prolific_symb_bound                   200
% 1.58/1.01  --lt_threshold                          2000
% 1.58/1.01  --clause_weak_htbl                      true
% 1.58/1.01  --gc_record_bc_elim                     false
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing Options
% 1.58/1.01  
% 1.58/1.01  --preprocessing_flag                    true
% 1.58/1.01  --time_out_prep_mult                    0.1
% 1.58/1.01  --splitting_mode                        input
% 1.58/1.01  --splitting_grd                         true
% 1.58/1.01  --splitting_cvd                         false
% 1.58/1.01  --splitting_cvd_svl                     false
% 1.58/1.01  --splitting_nvd                         32
% 1.58/1.01  --sub_typing                            true
% 1.58/1.01  --prep_gs_sim                           true
% 1.58/1.01  --prep_unflatten                        true
% 1.58/1.01  --prep_res_sim                          true
% 1.58/1.01  --prep_upred                            true
% 1.58/1.01  --prep_sem_filter                       exhaustive
% 1.58/1.01  --prep_sem_filter_out                   false
% 1.58/1.01  --pred_elim                             true
% 1.58/1.01  --res_sim_input                         true
% 1.58/1.01  --eq_ax_congr_red                       true
% 1.58/1.01  --pure_diseq_elim                       true
% 1.58/1.01  --brand_transform                       false
% 1.58/1.01  --non_eq_to_eq                          false
% 1.58/1.01  --prep_def_merge                        true
% 1.58/1.01  --prep_def_merge_prop_impl              false
% 1.58/1.01  --prep_def_merge_mbd                    true
% 1.58/1.01  --prep_def_merge_tr_red                 false
% 1.58/1.01  --prep_def_merge_tr_cl                  false
% 1.58/1.01  --smt_preprocessing                     true
% 1.58/1.01  --smt_ac_axioms                         fast
% 1.58/1.01  --preprocessed_out                      false
% 1.58/1.01  --preprocessed_stats                    false
% 1.58/1.01  
% 1.58/1.01  ------ Abstraction refinement Options
% 1.58/1.01  
% 1.58/1.01  --abstr_ref                             []
% 1.58/1.01  --abstr_ref_prep                        false
% 1.58/1.01  --abstr_ref_until_sat                   false
% 1.58/1.01  --abstr_ref_sig_restrict                funpre
% 1.58/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.58/1.01  --abstr_ref_under                       []
% 1.58/1.01  
% 1.58/1.01  ------ SAT Options
% 1.58/1.01  
% 1.58/1.01  --sat_mode                              false
% 1.58/1.01  --sat_fm_restart_options                ""
% 1.58/1.01  --sat_gr_def                            false
% 1.58/1.01  --sat_epr_types                         true
% 1.58/1.01  --sat_non_cyclic_types                  false
% 1.58/1.01  --sat_finite_models                     false
% 1.58/1.01  --sat_fm_lemmas                         false
% 1.58/1.01  --sat_fm_prep                           false
% 1.58/1.01  --sat_fm_uc_incr                        true
% 1.58/1.01  --sat_out_model                         small
% 1.58/1.01  --sat_out_clauses                       false
% 1.58/1.01  
% 1.58/1.01  ------ QBF Options
% 1.58/1.01  
% 1.58/1.01  --qbf_mode                              false
% 1.58/1.01  --qbf_elim_univ                         false
% 1.58/1.01  --qbf_dom_inst                          none
% 1.58/1.01  --qbf_dom_pre_inst                      false
% 1.58/1.01  --qbf_sk_in                             false
% 1.58/1.01  --qbf_pred_elim                         true
% 1.58/1.01  --qbf_split                             512
% 1.58/1.01  
% 1.58/1.01  ------ BMC1 Options
% 1.58/1.01  
% 1.58/1.01  --bmc1_incremental                      false
% 1.58/1.01  --bmc1_axioms                           reachable_all
% 1.58/1.01  --bmc1_min_bound                        0
% 1.58/1.01  --bmc1_max_bound                        -1
% 1.58/1.01  --bmc1_max_bound_default                -1
% 1.58/1.01  --bmc1_symbol_reachability              true
% 1.58/1.01  --bmc1_property_lemmas                  false
% 1.58/1.01  --bmc1_k_induction                      false
% 1.58/1.01  --bmc1_non_equiv_states                 false
% 1.58/1.01  --bmc1_deadlock                         false
% 1.58/1.01  --bmc1_ucm                              false
% 1.58/1.01  --bmc1_add_unsat_core                   none
% 1.58/1.01  --bmc1_unsat_core_children              false
% 1.58/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.58/1.01  --bmc1_out_stat                         full
% 1.58/1.01  --bmc1_ground_init                      false
% 1.58/1.01  --bmc1_pre_inst_next_state              false
% 1.58/1.01  --bmc1_pre_inst_state                   false
% 1.58/1.01  --bmc1_pre_inst_reach_state             false
% 1.58/1.01  --bmc1_out_unsat_core                   false
% 1.58/1.01  --bmc1_aig_witness_out                  false
% 1.58/1.01  --bmc1_verbose                          false
% 1.58/1.01  --bmc1_dump_clauses_tptp                false
% 1.58/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.58/1.01  --bmc1_dump_file                        -
% 1.58/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.58/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.58/1.01  --bmc1_ucm_extend_mode                  1
% 1.58/1.01  --bmc1_ucm_init_mode                    2
% 1.58/1.01  --bmc1_ucm_cone_mode                    none
% 1.58/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.58/1.01  --bmc1_ucm_relax_model                  4
% 1.58/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.58/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.58/1.01  --bmc1_ucm_layered_model                none
% 1.58/1.01  --bmc1_ucm_max_lemma_size               10
% 1.58/1.01  
% 1.58/1.01  ------ AIG Options
% 1.58/1.01  
% 1.58/1.01  --aig_mode                              false
% 1.58/1.01  
% 1.58/1.01  ------ Instantiation Options
% 1.58/1.01  
% 1.58/1.01  --instantiation_flag                    true
% 1.58/1.01  --inst_sos_flag                         true
% 1.58/1.01  --inst_sos_phase                        true
% 1.58/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.58/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.58/1.01  --inst_lit_sel_side                     none
% 1.58/1.01  --inst_solver_per_active                1400
% 1.58/1.01  --inst_solver_calls_frac                1.
% 1.58/1.01  --inst_passive_queue_type               priority_queues
% 1.58/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.58/1.01  --inst_passive_queues_freq              [25;2]
% 1.58/1.01  --inst_dismatching                      true
% 1.58/1.01  --inst_eager_unprocessed_to_passive     true
% 1.58/1.01  --inst_prop_sim_given                   true
% 1.58/1.01  --inst_prop_sim_new                     false
% 1.58/1.01  --inst_subs_new                         false
% 1.58/1.01  --inst_eq_res_simp                      false
% 1.58/1.01  --inst_subs_given                       false
% 1.58/1.01  --inst_orphan_elimination               true
% 1.58/1.01  --inst_learning_loop_flag               true
% 1.58/1.01  --inst_learning_start                   3000
% 1.58/1.01  --inst_learning_factor                  2
% 1.58/1.01  --inst_start_prop_sim_after_learn       3
% 1.58/1.01  --inst_sel_renew                        solver
% 1.58/1.01  --inst_lit_activity_flag                true
% 1.58/1.01  --inst_restr_to_given                   false
% 1.58/1.01  --inst_activity_threshold               500
% 1.58/1.01  --inst_out_proof                        true
% 1.58/1.01  
% 1.58/1.01  ------ Resolution Options
% 1.58/1.01  
% 1.58/1.01  --resolution_flag                       false
% 1.58/1.01  --res_lit_sel                           adaptive
% 1.58/1.01  --res_lit_sel_side                      none
% 1.58/1.01  --res_ordering                          kbo
% 1.58/1.01  --res_to_prop_solver                    active
% 1.58/1.01  --res_prop_simpl_new                    false
% 1.58/1.01  --res_prop_simpl_given                  true
% 1.58/1.01  --res_passive_queue_type                priority_queues
% 1.58/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.58/1.01  --res_passive_queues_freq               [15;5]
% 1.58/1.01  --res_forward_subs                      full
% 1.58/1.01  --res_backward_subs                     full
% 1.58/1.01  --res_forward_subs_resolution           true
% 1.58/1.01  --res_backward_subs_resolution          true
% 1.58/1.01  --res_orphan_elimination                true
% 1.58/1.01  --res_time_limit                        2.
% 1.58/1.01  --res_out_proof                         true
% 1.58/1.01  
% 1.58/1.01  ------ Superposition Options
% 1.58/1.01  
% 1.58/1.01  --superposition_flag                    true
% 1.58/1.01  --sup_passive_queue_type                priority_queues
% 1.58/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.58/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.58/1.01  --demod_completeness_check              fast
% 1.58/1.01  --demod_use_ground                      true
% 1.58/1.01  --sup_to_prop_solver                    passive
% 1.58/1.01  --sup_prop_simpl_new                    true
% 1.58/1.01  --sup_prop_simpl_given                  true
% 1.58/1.01  --sup_fun_splitting                     true
% 1.58/1.01  --sup_smt_interval                      50000
% 1.58/1.01  
% 1.58/1.01  ------ Superposition Simplification Setup
% 1.58/1.01  
% 1.58/1.01  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 1.58/1.01  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 1.58/1.01  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 1.58/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 1.58/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.58/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 1.58/1.01  --sup_full_bw                           [BwDemod;BwSubsumption]
% 1.58/1.01  --sup_immed_triv                        [TrivRules]
% 1.58/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_immed_bw_main                     []
% 1.58/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 1.58/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.58/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/1.01  --sup_input_bw                          []
% 1.58/1.01  
% 1.58/1.01  ------ Combination Options
% 1.58/1.01  
% 1.58/1.01  --comb_res_mult                         3
% 1.58/1.01  --comb_sup_mult                         2
% 1.58/1.01  --comb_inst_mult                        10
% 1.58/1.01  
% 1.58/1.01  ------ Debug Options
% 1.58/1.01  
% 1.58/1.01  --dbg_backtrace                         false
% 1.58/1.01  --dbg_dump_prop_clauses                 false
% 1.58/1.01  --dbg_dump_prop_clauses_file            -
% 1.58/1.01  --dbg_out_stat                          false
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  ------ Proving...
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  % SZS status Theorem for theBenchmark.p
% 1.58/1.01  
% 1.58/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.58/1.01  
% 1.58/1.01  fof(f11,conjecture,(
% 1.58/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((v1_funct_1(X4) & v1_relat_1(X4)) => (r2_hidden(X2,X0) => (k1_funct_1(X4,k1_funct_1(X3,X2)) = k1_funct_1(k5_relat_1(X3,X4),X2) | k1_xboole_0 = X1))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f12,negated_conjecture,(
% 1.58/1.01    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((v1_funct_1(X4) & v1_relat_1(X4)) => (r2_hidden(X2,X0) => (k1_funct_1(X4,k1_funct_1(X3,X2)) = k1_funct_1(k5_relat_1(X3,X4),X2) | k1_xboole_0 = X1))))),
% 1.58/1.01    inference(negated_conjecture,[],[f11])).
% 1.58/1.01  
% 1.58/1.01  fof(f29,plain,(
% 1.58/1.01    ? [X0,X1,X2,X3] : (? [X4] : (((k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2) & k1_xboole_0 != X1) & r2_hidden(X2,X0)) & (v1_funct_1(X4) & v1_relat_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 1.58/1.01    inference(ennf_transformation,[],[f12])).
% 1.58/1.01  
% 1.58/1.01  fof(f30,plain,(
% 1.58/1.01    ? [X0,X1,X2,X3] : (? [X4] : (k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & v1_funct_1(X4) & v1_relat_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 1.58/1.01    inference(flattening,[],[f29])).
% 1.58/1.01  
% 1.58/1.01  fof(f43,plain,(
% 1.58/1.01    ( ! [X2,X0,X3,X1] : (? [X4] : (k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & v1_funct_1(X4) & v1_relat_1(X4)) => (k1_funct_1(k5_relat_1(X3,sK6),X2) != k1_funct_1(sK6,k1_funct_1(X3,X2)) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & v1_funct_1(sK6) & v1_relat_1(sK6))) )),
% 1.58/1.01    introduced(choice_axiom,[])).
% 1.58/1.01  
% 1.58/1.01  fof(f42,plain,(
% 1.58/1.01    ? [X0,X1,X2,X3] : (? [X4] : (k1_funct_1(X4,k1_funct_1(X3,X2)) != k1_funct_1(k5_relat_1(X3,X4),X2) & k1_xboole_0 != X1 & r2_hidden(X2,X0) & v1_funct_1(X4) & v1_relat_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (k1_funct_1(X4,k1_funct_1(sK5,sK4)) != k1_funct_1(k5_relat_1(sK5,X4),sK4) & k1_xboole_0 != sK3 & r2_hidden(sK4,sK2) & v1_funct_1(X4) & v1_relat_1(X4)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(sK5,sK2,sK3) & v1_funct_1(sK5))),
% 1.58/1.01    introduced(choice_axiom,[])).
% 1.58/1.01  
% 1.58/1.01  fof(f44,plain,(
% 1.58/1.01    (k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4)) & k1_xboole_0 != sK3 & r2_hidden(sK4,sK2) & v1_funct_1(sK6) & v1_relat_1(sK6)) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) & v1_funct_2(sK5,sK2,sK3) & v1_funct_1(sK5)),
% 1.58/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f30,f43,f42])).
% 1.58/1.01  
% 1.58/1.01  fof(f74,plain,(
% 1.58/1.01    v1_funct_1(sK6)),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f4,axiom,(
% 1.58/1.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1,X2] : ((~r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2)) & (r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f16,plain,(
% 1.58/1.01    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.58/1.01    inference(ennf_transformation,[],[f4])).
% 1.58/1.01  
% 1.58/1.01  fof(f17,plain,(
% 1.58/1.01    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.58/1.01    inference(flattening,[],[f16])).
% 1.58/1.01  
% 1.58/1.01  fof(f31,plain,(
% 1.58/1.01    ! [X0] : (! [X1,X2] : ((((k1_funct_1(X0,X1) = X2 | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | k1_funct_1(X0,X1) != X2)) | r2_hidden(X1,k1_relat_1(X0))) & (((k1_funct_1(X0,X1) = X2 | ~r2_hidden(k4_tarski(X1,X2),X0)) & (r2_hidden(k4_tarski(X1,X2),X0) | k1_funct_1(X0,X1) != X2)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.58/1.01    inference(nnf_transformation,[],[f17])).
% 1.58/1.01  
% 1.58/1.01  fof(f50,plain,(
% 1.58/1.01    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | k1_funct_1(X0,X1) != X2 | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f31])).
% 1.58/1.01  
% 1.58/1.01  fof(f79,plain,(
% 1.58/1.01    ( ! [X0,X1] : (k1_funct_1(X0,X1) = k1_xboole_0 | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(equality_resolution,[],[f50])).
% 1.58/1.01  
% 1.58/1.01  fof(f70,plain,(
% 1.58/1.01    v1_funct_1(sK5)),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f6,axiom,(
% 1.58/1.01    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f20,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : ((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.58/1.01    inference(ennf_transformation,[],[f6])).
% 1.58/1.01  
% 1.58/1.01  fof(f21,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : ((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.58/1.01    inference(flattening,[],[f20])).
% 1.58/1.01  
% 1.58/1.01  fof(f32,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : (((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | (~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2)))) & ((r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.58/1.01    inference(nnf_transformation,[],[f21])).
% 1.58/1.01  
% 1.58/1.01  fof(f33,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : (((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2))) & ((r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.58/1.01    inference(flattening,[],[f32])).
% 1.58/1.01  
% 1.58/1.01  fof(f56,plain,(
% 1.58/1.01    ( ! [X2,X0,X1] : (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f33])).
% 1.58/1.01  
% 1.58/1.01  fof(f7,axiom,(
% 1.58/1.01    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) => k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f22,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : ((k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.58/1.01    inference(ennf_transformation,[],[f7])).
% 1.58/1.01  
% 1.58/1.01  fof(f23,plain,(
% 1.58/1.01    ! [X0,X1] : (! [X2] : (k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.58/1.01    inference(flattening,[],[f22])).
% 1.58/1.01  
% 1.58/1.01  fof(f57,plain,(
% 1.58/1.01    ( ! [X2,X0,X1] : (k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f23])).
% 1.58/1.01  
% 1.58/1.01  fof(f73,plain,(
% 1.58/1.01    v1_relat_1(sK6)),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f1,axiom,(
% 1.58/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f13,plain,(
% 1.58/1.01    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.58/1.01    inference(ennf_transformation,[],[f1])).
% 1.58/1.01  
% 1.58/1.01  fof(f45,plain,(
% 1.58/1.01    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f13])).
% 1.58/1.01  
% 1.58/1.01  fof(f72,plain,(
% 1.58/1.01    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)))),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f3,axiom,(
% 1.58/1.01    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f47,plain,(
% 1.58/1.01    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.58/1.01    inference(cnf_transformation,[],[f3])).
% 1.58/1.01  
% 1.58/1.01  fof(f77,plain,(
% 1.58/1.01    k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4))),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f5,axiom,(
% 1.58/1.01    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1) & v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f18,plain,(
% 1.58/1.01    ! [X0,X1] : ((v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.58/1.01    inference(ennf_transformation,[],[f5])).
% 1.58/1.01  
% 1.58/1.01  fof(f19,plain,(
% 1.58/1.01    ! [X0,X1] : ((v1_funct_1(k5_relat_1(X0,X1)) & v1_relat_1(k5_relat_1(X0,X1))) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.58/1.01    inference(flattening,[],[f18])).
% 1.58/1.01  
% 1.58/1.01  fof(f53,plain,(
% 1.58/1.01    ( ! [X0,X1] : (v1_funct_1(k5_relat_1(X0,X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f19])).
% 1.58/1.01  
% 1.58/1.01  fof(f52,plain,(
% 1.58/1.01    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f19])).
% 1.58/1.01  
% 1.58/1.01  fof(f2,axiom,(
% 1.58/1.01    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f14,plain,(
% 1.58/1.01    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 1.58/1.01    inference(ennf_transformation,[],[f2])).
% 1.58/1.01  
% 1.58/1.01  fof(f15,plain,(
% 1.58/1.01    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 1.58/1.01    inference(flattening,[],[f14])).
% 1.58/1.01  
% 1.58/1.01  fof(f46,plain,(
% 1.58/1.01    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f15])).
% 1.58/1.01  
% 1.58/1.01  fof(f75,plain,(
% 1.58/1.01    r2_hidden(sK4,sK2)),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f71,plain,(
% 1.58/1.01    v1_funct_2(sK5,sK2,sK3)),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f10,axiom,(
% 1.58/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f27,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.58/1.01    inference(ennf_transformation,[],[f10])).
% 1.58/1.01  
% 1.58/1.01  fof(f28,plain,(
% 1.58/1.01    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.58/1.01    inference(flattening,[],[f27])).
% 1.58/1.01  
% 1.58/1.01  fof(f41,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.58/1.01    inference(nnf_transformation,[],[f28])).
% 1.58/1.01  
% 1.58/1.01  fof(f64,plain,(
% 1.58/1.01    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.58/1.01    inference(cnf_transformation,[],[f41])).
% 1.58/1.01  
% 1.58/1.01  fof(f76,plain,(
% 1.58/1.01    k1_xboole_0 != sK3),
% 1.58/1.01    inference(cnf_transformation,[],[f44])).
% 1.58/1.01  
% 1.58/1.01  fof(f9,axiom,(
% 1.58/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (! [X3] : ~(! [X4] : ~r2_hidden(k4_tarski(X3,X4),X2) & r2_hidden(X3,X1)) <=> k1_relset_1(X1,X0,X2) = X1))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f26,plain,(
% 1.58/1.01    ! [X0,X1,X2] : ((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) <=> k1_relset_1(X1,X0,X2) = X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.58/1.01    inference(ennf_transformation,[],[f9])).
% 1.58/1.01  
% 1.58/1.01  fof(f36,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | ? [X3] : (! [X4] : ~r2_hidden(k4_tarski(X3,X4),X2) & r2_hidden(X3,X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.58/1.01    inference(nnf_transformation,[],[f26])).
% 1.58/1.01  
% 1.58/1.01  fof(f37,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((! [X3] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | ? [X5] : (! [X6] : ~r2_hidden(k4_tarski(X5,X6),X2) & r2_hidden(X5,X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.58/1.01    inference(rectify,[],[f36])).
% 1.58/1.01  
% 1.58/1.01  fof(f39,plain,(
% 1.58/1.01    ! [X2,X1] : (? [X5] : (! [X6] : ~r2_hidden(k4_tarski(X5,X6),X2) & r2_hidden(X5,X1)) => (! [X6] : ~r2_hidden(k4_tarski(sK1(X1,X2),X6),X2) & r2_hidden(sK1(X1,X2),X1)))),
% 1.58/1.01    introduced(choice_axiom,[])).
% 1.58/1.01  
% 1.58/1.01  fof(f38,plain,(
% 1.58/1.01    ! [X3,X2] : (? [X4] : r2_hidden(k4_tarski(X3,X4),X2) => r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2))),
% 1.58/1.01    introduced(choice_axiom,[])).
% 1.58/1.01  
% 1.58/1.01  fof(f40,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((! [X3] : (r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2) | ~r2_hidden(X3,X1)) | k1_relset_1(X1,X0,X2) != X1) & (k1_relset_1(X1,X0,X2) = X1 | (! [X6] : ~r2_hidden(k4_tarski(sK1(X1,X2),X6),X2) & r2_hidden(sK1(X1,X2),X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.58/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f37,f39,f38])).
% 1.58/1.01  
% 1.58/1.01  fof(f63,plain,(
% 1.58/1.01    ( ! [X2,X0,X3,X1] : (r2_hidden(k4_tarski(X3,sK0(X2,X3)),X2) | ~r2_hidden(X3,X1) | k1_relset_1(X1,X0,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) )),
% 1.58/1.01    inference(cnf_transformation,[],[f40])).
% 1.58/1.01  
% 1.58/1.01  fof(f8,axiom,(
% 1.58/1.01    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))))),
% 1.58/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/1.01  
% 1.58/1.01  fof(f24,plain,(
% 1.58/1.01    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 1.58/1.01    inference(ennf_transformation,[],[f8])).
% 1.58/1.01  
% 1.58/1.01  fof(f25,plain,(
% 1.58/1.01    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> (k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.58/1.01    inference(flattening,[],[f24])).
% 1.58/1.01  
% 1.58/1.01  fof(f34,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | (k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2)))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.58/1.01    inference(nnf_transformation,[],[f25])).
% 1.58/1.01  
% 1.58/1.01  fof(f35,plain,(
% 1.58/1.01    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | k1_funct_1(X2,X0) != X1 | ~r2_hidden(X0,k1_relat_1(X2))) & ((k1_funct_1(X2,X0) = X1 & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 1.58/1.01    inference(flattening,[],[f34])).
% 1.58/1.01  
% 1.58/1.01  fof(f58,plain,(
% 1.58/1.01    ( ! [X2,X0,X1] : (r2_hidden(X0,k1_relat_1(X2)) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 1.58/1.01    inference(cnf_transformation,[],[f35])).
% 1.58/1.01  
% 1.58/1.01  cnf(c_28,negated_conjecture,
% 1.58/1.01      ( v1_funct_1(sK6) ),
% 1.58/1.01      inference(cnf_transformation,[],[f74]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1075,plain,
% 1.58/1.01      ( v1_funct_1(sK6) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_4,plain,
% 1.58/1.01      ( r2_hidden(X0,k1_relat_1(X1))
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | k1_funct_1(X1,X0) = k1_xboole_0 ),
% 1.58/1.01      inference(cnf_transformation,[],[f79]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1085,plain,
% 1.58/1.01      ( k1_funct_1(X0,X1) = k1_xboole_0
% 1.58/1.01      | r2_hidden(X1,k1_relat_1(X0)) = iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_32,negated_conjecture,
% 1.58/1.01      ( v1_funct_1(sK5) ),
% 1.58/1.01      inference(cnf_transformation,[],[f70]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1073,plain,
% 1.58/1.01      ( v1_funct_1(sK5) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_9,plain,
% 1.58/1.01      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.58/1.01      | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
% 1.58/1.01      | ~ r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2))
% 1.58/1.01      | ~ v1_funct_1(X2)
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | ~ v1_relat_1(X2)
% 1.58/1.01      | ~ v1_relat_1(X1) ),
% 1.58/1.01      inference(cnf_transformation,[],[f56]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1082,plain,
% 1.58/1.01      ( r2_hidden(X0,k1_relat_1(X1)) != iProver_top
% 1.58/1.01      | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2))) = iProver_top
% 1.58/1.01      | r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2)) != iProver_top
% 1.58/1.01      | v1_funct_1(X1) != iProver_top
% 1.58/1.01      | v1_funct_1(X2) != iProver_top
% 1.58/1.01      | v1_relat_1(X1) != iProver_top
% 1.58/1.01      | v1_relat_1(X2) != iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_2963,plain,
% 1.58/1.01      ( k1_funct_1(X0,k1_funct_1(X1,X2)) = k1_xboole_0
% 1.58/1.01      | r2_hidden(X2,k1_relat_1(X1)) != iProver_top
% 1.58/1.01      | r2_hidden(X2,k1_relat_1(k5_relat_1(X1,X0))) = iProver_top
% 1.58/1.01      | v1_funct_1(X1) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X1) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1085,c_1082]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_12,plain,
% 1.58/1.01      ( ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
% 1.58/1.01      | ~ v1_funct_1(X2)
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | ~ v1_relat_1(X2)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | k1_funct_1(k5_relat_1(X1,X2),X0) = k1_funct_1(X2,k1_funct_1(X1,X0)) ),
% 1.58/1.01      inference(cnf_transformation,[],[f57]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1079,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(X0,X1),X2) = k1_funct_1(X1,k1_funct_1(X0,X2))
% 1.58/1.01      | r2_hidden(X2,k1_relat_1(k5_relat_1(X0,X1))) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_funct_1(X1) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X1) != iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5533,plain,
% 1.58/1.01      ( k1_funct_1(X0,k1_funct_1(X1,X2)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(k5_relat_1(X1,X0),X2) = k1_funct_1(X0,k1_funct_1(X1,X2))
% 1.58/1.01      | r2_hidden(X2,k1_relat_1(X1)) != iProver_top
% 1.58/1.01      | v1_funct_1(X1) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X1) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_2963,c_1079]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5548,plain,
% 1.58/1.01      ( k1_funct_1(X0,X1) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(X2,k1_funct_1(X0,X1)) = k1_funct_1(k5_relat_1(X0,X2),X1)
% 1.58/1.01      | k1_funct_1(X2,k1_funct_1(X0,X1)) = k1_xboole_0
% 1.58/1.01      | v1_funct_1(X2) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X2) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1085,c_5533]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5589,plain,
% 1.58/1.01      ( k1_funct_1(X0,X1) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(sK6) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1075,c_5548]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_29,negated_conjecture,
% 1.58/1.01      ( v1_relat_1(sK6) ),
% 1.58/1.01      inference(cnf_transformation,[],[f73]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_36,plain,
% 1.58/1.01      ( v1_relat_1(sK6) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5601,plain,
% 1.58/1.01      ( v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
% 1.58/1.01      | k1_funct_1(X0,X1) = k1_xboole_0 ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_5589,c_36]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5602,plain,
% 1.58/1.01      ( k1_funct_1(X0,X1) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(k5_relat_1(X0,sK6),X1) = k1_funct_1(sK6,k1_funct_1(X0,X1))
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(X0,X1)) = k1_xboole_0
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_5601]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5609,plain,
% 1.58/1.01      ( k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0)
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK5,X0) = k1_xboole_0
% 1.58/1.01      | v1_relat_1(sK5) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1073,c_5602]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_0,plain,
% 1.58/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | v1_relat_1(X0) ),
% 1.58/1.01      inference(cnf_transformation,[],[f45]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_30,negated_conjecture,
% 1.58/1.01      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))) ),
% 1.58/1.01      inference(cnf_transformation,[],[f72]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_334,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | v1_relat_1(X1)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(X0)
% 1.58/1.01      | sK5 != X1 ),
% 1.58/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_30]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_335,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | v1_relat_1(sK5)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(X0) ),
% 1.58/1.01      inference(unflattening,[status(thm)],[c_334]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1139,plain,
% 1.58/1.01      ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 1.58/1.01      | v1_relat_1(sK5)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_335]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1221,plain,
% 1.58/1.01      ( ~ v1_relat_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | v1_relat_1(sK5)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1139]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1222,plain,
% 1.58/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | v1_relat_1(k2_zfmisc_1(sK2,sK3)) != iProver_top
% 1.58/1.01      | v1_relat_1(sK5) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_1221]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_739,plain,
% 1.58/1.01      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 1.58/1.01      theory(equality) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1157,plain,
% 1.58/1.01      ( k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK2,sK3)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) = k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_739]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1228,plain,
% 1.58/1.01      ( k2_zfmisc_1(sK2,sK3) != k2_zfmisc_1(sK2,sK3)
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) = k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1157]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_2,plain,
% 1.58/1.01      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.58/1.01      inference(cnf_transformation,[],[f47]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1355,plain,
% 1.58/1.01      ( v1_relat_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1356,plain,
% 1.58/1.01      ( v1_relat_1(k2_zfmisc_1(sK2,sK3)) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_1355]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_736,plain,( X0 = X0 ),theory(equality) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1358,plain,
% 1.58/1.01      ( k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK2,sK3) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_736]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5646,plain,
% 1.58/1.01      ( k1_funct_1(sK5,X0) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0) ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_5609,c_1222,c_1228,c_1356,c_1358]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5647,plain,
% 1.58/1.01      ( k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_funct_1(k5_relat_1(sK5,sK6),X0)
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,X0)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK5,X0) = k1_xboole_0 ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_5646]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_25,negated_conjecture,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_funct_1(sK5,sK4)) ),
% 1.58/1.01      inference(cnf_transformation,[],[f77]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5651,plain,
% 1.58/1.01      ( k1_funct_1(sK6,k1_funct_1(sK5,sK4)) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK5,sK4) = k1_xboole_0 ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_5647,c_25]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1115,plain,
% 1.58/1.01      ( ~ r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,sK6)))
% 1.58/1.01      | ~ v1_funct_1(sK6)
% 1.58/1.01      | ~ v1_funct_1(sK5)
% 1.58/1.01      | ~ v1_relat_1(sK6)
% 1.58/1.01      | ~ v1_relat_1(sK5)
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_12]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_737,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1121,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != X0
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4))
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,sK4)) != X0 ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_737]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1122,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_funct_1(sK5,sK4))
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_xboole_0
% 1.58/1.01      | k1_funct_1(sK6,k1_funct_1(sK5,sK4)) != k1_xboole_0 ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1121]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_7,plain,
% 1.58/1.01      ( ~ v1_funct_1(X0)
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | v1_funct_1(k5_relat_1(X0,X1))
% 1.58/1.01      | ~ v1_relat_1(X0)
% 1.58/1.01      | ~ v1_relat_1(X1) ),
% 1.58/1.01      inference(cnf_transformation,[],[f53]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1172,plain,
% 1.58/1.01      ( v1_funct_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | ~ v1_funct_1(sK6)
% 1.58/1.01      | ~ v1_funct_1(sK5)
% 1.58/1.01      | ~ v1_relat_1(sK6)
% 1.58/1.01      | ~ v1_relat_1(sK5) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_7]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_8,plain,
% 1.58/1.01      ( ~ v1_funct_1(X0)
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | ~ v1_relat_1(X0)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | v1_relat_1(k5_relat_1(X0,X1)) ),
% 1.58/1.01      inference(cnf_transformation,[],[f52]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | v1_relat_1(k5_relat_1(X0,X1)) ),
% 1.58/1.01      inference(cnf_transformation,[],[f46]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_191,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | v1_relat_1(k5_relat_1(X0,X1)) ),
% 1.58/1.01      inference(global_propositional_subsumption,[status(thm)],[c_8,c_1]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_192,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | ~ v1_relat_1(X1)
% 1.58/1.01      | v1_relat_1(k5_relat_1(X1,X0)) ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_191]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1426,plain,
% 1.58/1.01      ( ~ v1_relat_1(X0)
% 1.58/1.01      | v1_relat_1(k5_relat_1(X0,sK6))
% 1.58/1.01      | ~ v1_relat_1(sK6) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_192]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1787,plain,
% 1.58/1.01      ( v1_relat_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | ~ v1_relat_1(sK6)
% 1.58/1.01      | ~ v1_relat_1(sK5) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1426]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1688,plain,
% 1.58/1.01      ( r2_hidden(X0,k1_relat_1(k5_relat_1(sK5,sK6)))
% 1.58/1.01      | ~ v1_funct_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | ~ v1_relat_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,sK6),X0) = k1_xboole_0 ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_4]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_2531,plain,
% 1.58/1.01      ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,sK6)))
% 1.58/1.01      | ~ v1_funct_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | ~ v1_relat_1(k5_relat_1(sK5,sK6))
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_xboole_0 ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1688]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5670,plain,
% 1.58/1.01      ( k1_funct_1(sK5,sK4) = k1_xboole_0 ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_5651,c_32,c_29,c_28,c_25,c_1115,c_1122,c_1172,c_1221,
% 1.58/1.01                 c_1228,c_1355,c_1358,c_1787,c_2531]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5676,plain,
% 1.58/1.01      ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
% 1.58/1.01      | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_funct_1(sK5) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(sK5) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_5670,c_1082]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_33,plain,
% 1.58/1.01      ( v1_funct_1(sK5) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_27,negated_conjecture,
% 1.58/1.01      ( r2_hidden(sK4,sK2) ),
% 1.58/1.01      inference(cnf_transformation,[],[f75]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_38,plain,
% 1.58/1.01      ( r2_hidden(sK4,sK2) = iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_31,negated_conjecture,
% 1.58/1.01      ( v1_funct_2(sK5,sK2,sK3) ),
% 1.58/1.01      inference(cnf_transformation,[],[f71]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_24,plain,
% 1.58/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.58/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.58/1.01      | k1_relset_1(X1,X2,X0) = X1
% 1.58/1.01      | k1_xboole_0 = X2 ),
% 1.58/1.01      inference(cnf_transformation,[],[f64]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_462,plain,
% 1.58/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 1.58/1.01      | k1_relset_1(X1,X2,X0) = X1
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | sK5 != X0
% 1.58/1.01      | k1_xboole_0 = X2 ),
% 1.58/1.01      inference(resolution_lifted,[status(thm)],[c_24,c_30]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_463,plain,
% 1.58/1.01      ( ~ v1_funct_2(sK5,X0,X1)
% 1.58/1.01      | k1_relset_1(X0,X1,sK5) = X0
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | k1_xboole_0 = X1 ),
% 1.58/1.01      inference(unflattening,[status(thm)],[c_462]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_572,plain,
% 1.58/1.01      ( k1_relset_1(X0,X1,sK5) = X0
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | sK2 != X0
% 1.58/1.01      | sK3 != X1
% 1.58/1.01      | sK5 != sK5
% 1.58/1.01      | k1_xboole_0 = X1 ),
% 1.58/1.01      inference(resolution_lifted,[status(thm)],[c_31,c_463]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_573,plain,
% 1.58/1.01      ( k1_relset_1(sK2,sK3,sK5) = sK2
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | k1_xboole_0 = sK3 ),
% 1.58/1.01      inference(unflattening,[status(thm)],[c_572]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_26,negated_conjecture,
% 1.58/1.01      ( k1_xboole_0 != sK3 ),
% 1.58/1.01      inference(cnf_transformation,[],[f76]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_574,plain,
% 1.58/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | k1_relset_1(sK2,sK3,sK5) = sK2 ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_573,c_26]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_575,plain,
% 1.58/1.01      ( k1_relset_1(sK2,sK3,sK5) = sK2
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_574]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_619,plain,
% 1.58/1.01      ( k1_relset_1(sK2,sK3,sK5) = sK2 ),
% 1.58/1.01      inference(equality_resolution_simp,[status(thm)],[c_575]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_16,plain,
% 1.58/1.01      ( ~ r2_hidden(X0,X1)
% 1.58/1.01      | r2_hidden(k4_tarski(X0,sK0(X2,X0)),X2)
% 1.58/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.58/1.01      | k1_relset_1(X1,X3,X2) != X1 ),
% 1.58/1.01      inference(cnf_transformation,[],[f63]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_349,plain,
% 1.58/1.01      ( ~ r2_hidden(X0,X1)
% 1.58/1.01      | r2_hidden(k4_tarski(X0,sK0(X2,X0)),X2)
% 1.58/1.01      | k1_relset_1(X1,X3,X2) != X1
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | sK5 != X2 ),
% 1.58/1.01      inference(resolution_lifted,[status(thm)],[c_16,c_30]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_350,plain,
% 1.58/1.01      ( ~ r2_hidden(X0,X1)
% 1.58/1.01      | r2_hidden(k4_tarski(X0,sK0(sK5,X0)),sK5)
% 1.58/1.01      | k1_relset_1(X1,X2,sK5) != X1
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(unflattening,[status(thm)],[c_349]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1192,plain,
% 1.58/1.01      ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
% 1.58/1.01      | ~ r2_hidden(sK4,sK2)
% 1.58/1.01      | k1_relset_1(sK2,X0,sK5) != sK2
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_350]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1268,plain,
% 1.58/1.01      ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
% 1.58/1.01      | ~ r2_hidden(sK4,sK2)
% 1.58/1.01      | k1_relset_1(sK2,sK3,sK5) != sK2
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1192]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1269,plain,
% 1.58/1.01      ( k1_relset_1(sK2,sK3,sK5) != sK2
% 1.58/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK2,sK3)) != k1_zfmisc_1(k2_zfmisc_1(sK2,sK3))
% 1.58/1.01      | r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5) = iProver_top
% 1.58/1.01      | r2_hidden(sK4,sK2) != iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_1268]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_15,plain,
% 1.58/1.01      ( r2_hidden(X0,k1_relat_1(X1))
% 1.58/1.01      | ~ r2_hidden(k4_tarski(X0,X2),X1)
% 1.58/1.01      | ~ v1_funct_1(X1)
% 1.58/1.01      | ~ v1_relat_1(X1) ),
% 1.58/1.01      inference(cnf_transformation,[],[f58]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_1875,plain,
% 1.58/1.01      ( r2_hidden(X0,k1_relat_1(sK5))
% 1.58/1.01      | ~ r2_hidden(k4_tarski(X0,X1),sK5)
% 1.58/1.01      | ~ v1_funct_1(sK5)
% 1.58/1.01      | ~ v1_relat_1(sK5) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_15]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_2215,plain,
% 1.58/1.01      ( ~ r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5)
% 1.58/1.01      | r2_hidden(sK4,k1_relat_1(sK5))
% 1.58/1.01      | ~ v1_funct_1(sK5)
% 1.58/1.01      | ~ v1_relat_1(sK5) ),
% 1.58/1.01      inference(instantiation,[status(thm)],[c_1875]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_2216,plain,
% 1.58/1.01      ( r2_hidden(k4_tarski(sK4,sK0(sK5,sK4)),sK5) != iProver_top
% 1.58/1.01      | r2_hidden(sK4,k1_relat_1(sK5)) = iProver_top
% 1.58/1.01      | v1_funct_1(sK5) != iProver_top
% 1.58/1.01      | v1_relat_1(sK5) != iProver_top ),
% 1.58/1.01      inference(predicate_to_equality,[status(thm)],[c_2215]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5768,plain,
% 1.58/1.01      ( v1_relat_1(X0) != iProver_top
% 1.58/1.01      | r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_5676,c_33,c_38,c_619,c_1222,c_1228,c_1269,c_1356,
% 1.58/1.01                 c_1358,c_2216]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5769,plain,
% 1.58/1.01      ( r2_hidden(sK4,k1_relat_1(k5_relat_1(sK5,X0))) = iProver_top
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_5768]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5776,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_funct_1(sK5,sK4))
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_funct_1(sK5) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(sK5) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_5769,c_1079]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5778,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_funct_1(sK5) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(sK5) != iProver_top ),
% 1.58/1.01      inference(light_normalisation,[status(thm)],[c_5776,c_5670]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5948,plain,
% 1.58/1.01      ( v1_relat_1(X0) != iProver_top
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_5778,c_33,c_1222,c_1228,c_1356,c_1358]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5949,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
% 1.58/1.01      | r2_hidden(k1_xboole_0,k1_relat_1(X0)) != iProver_top
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(renaming,[status(thm)],[c_5948]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5954,plain,
% 1.58/1.01      ( k1_funct_1(X0,k1_xboole_0) = k1_xboole_0
% 1.58/1.01      | k1_funct_1(k5_relat_1(sK5,X0),sK4) = k1_funct_1(X0,k1_xboole_0)
% 1.58/1.01      | v1_funct_1(X0) != iProver_top
% 1.58/1.01      | v1_relat_1(X0) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1085,c_5949]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_6060,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) = k1_funct_1(sK6,k1_xboole_0)
% 1.58/1.01      | k1_funct_1(sK6,k1_xboole_0) = k1_xboole_0
% 1.58/1.01      | v1_relat_1(sK6) != iProver_top ),
% 1.58/1.01      inference(superposition,[status(thm)],[c_1075,c_5954]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_5674,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_funct_1(sK6,k1_xboole_0) ),
% 1.58/1.01      inference(demodulation,[status(thm)],[c_5670,c_25]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_6068,plain,
% 1.58/1.01      ( k1_funct_1(sK6,k1_xboole_0) = k1_xboole_0 ),
% 1.58/1.01      inference(global_propositional_subsumption,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_6060,c_36,c_5674]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(c_6070,plain,
% 1.58/1.01      ( k1_funct_1(k5_relat_1(sK5,sK6),sK4) != k1_xboole_0 ),
% 1.58/1.01      inference(demodulation,[status(thm)],[c_6068,c_5674]) ).
% 1.58/1.01  
% 1.58/1.01  cnf(contradiction,plain,
% 1.58/1.01      ( $false ),
% 1.58/1.01      inference(minisat,
% 1.58/1.01                [status(thm)],
% 1.58/1.01                [c_6070,c_2531,c_1787,c_1358,c_1355,c_1228,c_1221,c_1172,
% 1.58/1.01                 c_1115,c_25,c_28,c_29,c_32]) ).
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.58/1.01  
% 1.58/1.01  ------                               Statistics
% 1.58/1.01  
% 1.58/1.01  ------ General
% 1.58/1.01  
% 1.58/1.01  abstr_ref_over_cycles:                  0
% 1.58/1.01  abstr_ref_under_cycles:                 0
% 1.58/1.01  gc_basic_clause_elim:                   0
% 1.58/1.01  forced_gc_time:                         0
% 1.58/1.01  parsing_time:                           0.017
% 1.58/1.01  unif_index_cands_time:                  0.
% 1.58/1.01  unif_index_add_time:                    0.
% 1.58/1.01  orderings_time:                         0.
% 1.58/1.01  out_proof_time:                         0.018
% 1.58/1.01  total_time:                             0.363
% 1.58/1.01  num_of_symbols:                         51
% 1.58/1.01  num_of_terms:                           10994
% 1.58/1.01  
% 1.58/1.01  ------ Preprocessing
% 1.58/1.01  
% 1.58/1.01  num_of_splits:                          0
% 1.58/1.01  num_of_split_atoms:                     0
% 1.58/1.01  num_of_reused_defs:                     0
% 1.58/1.01  num_eq_ax_congr_red:                    10
% 1.58/1.01  num_of_sem_filtered_clauses:            1
% 1.58/1.01  num_of_subtypes:                        0
% 1.58/1.01  monotx_restored_types:                  0
% 1.58/1.01  sat_num_of_epr_types:                   0
% 1.58/1.01  sat_num_of_non_cyclic_types:            0
% 1.58/1.01  sat_guarded_non_collapsed_types:        0
% 1.58/1.01  num_pure_diseq_elim:                    0
% 1.58/1.01  simp_replaced_by:                       0
% 1.58/1.01  res_preprocessed:                       134
% 1.58/1.01  prep_upred:                             0
% 1.58/1.01  prep_unflattend:                        26
% 1.58/1.01  smt_new_axioms:                         0
% 1.58/1.01  pred_elim_cands:                        3
% 1.58/1.01  pred_elim:                              2
% 1.58/1.01  pred_elim_cl:                           5
% 1.58/1.01  pred_elim_cycles:                       4
% 1.58/1.01  merged_defs:                            0
% 1.58/1.01  merged_defs_ncl:                        0
% 1.58/1.01  bin_hyper_res:                          0
% 1.58/1.01  prep_cycles:                            4
% 1.58/1.01  pred_elim_time:                         0.006
% 1.58/1.01  splitting_time:                         0.
% 1.58/1.01  sem_filter_time:                        0.
% 1.58/1.01  monotx_time:                            0.
% 1.58/1.01  subtype_inf_time:                       0.
% 1.58/1.01  
% 1.58/1.01  ------ Problem properties
% 1.58/1.01  
% 1.58/1.01  clauses:                                25
% 1.58/1.01  conjectures:                            6
% 1.58/1.01  epr:                                    5
% 1.58/1.01  horn:                                   22
% 1.58/1.01  ground:                                 9
% 1.58/1.01  unary:                                  8
% 1.58/1.01  binary:                                 0
% 1.58/1.01  lits:                                   80
% 1.58/1.01  lits_eq:                                20
% 1.58/1.01  fd_pure:                                0
% 1.58/1.01  fd_pseudo:                              0
% 1.58/1.01  fd_cond:                                0
% 1.58/1.01  fd_pseudo_cond:                         1
% 1.58/1.01  ac_symbols:                             0
% 1.58/1.01  
% 1.58/1.01  ------ Propositional Solver
% 1.58/1.01  
% 1.58/1.01  prop_solver_calls:                      29
% 1.58/1.01  prop_fast_solver_calls:                 1293
% 1.58/1.01  smt_solver_calls:                       0
% 1.58/1.01  smt_fast_solver_calls:                  0
% 1.58/1.01  prop_num_of_clauses:                    3476
% 1.58/1.01  prop_preprocess_simplified:             7468
% 1.58/1.01  prop_fo_subsumed:                       39
% 1.58/1.01  prop_solver_time:                       0.
% 1.58/1.01  smt_solver_time:                        0.
% 1.58/1.01  smt_fast_solver_time:                   0.
% 1.58/1.01  prop_fast_solver_time:                  0.
% 1.58/1.01  prop_unsat_core_time:                   0.
% 1.58/1.01  
% 1.58/1.01  ------ QBF
% 1.58/1.01  
% 1.58/1.01  qbf_q_res:                              0
% 1.58/1.01  qbf_num_tautologies:                    0
% 1.58/1.01  qbf_prep_cycles:                        0
% 1.58/1.01  
% 1.58/1.01  ------ BMC1
% 1.58/1.01  
% 1.58/1.01  bmc1_current_bound:                     -1
% 1.58/1.01  bmc1_last_solved_bound:                 -1
% 1.58/1.01  bmc1_unsat_core_size:                   -1
% 1.58/1.01  bmc1_unsat_core_parents_size:           -1
% 1.58/1.01  bmc1_merge_next_fun:                    0
% 1.58/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.58/1.01  
% 1.58/1.01  ------ Instantiation
% 1.58/1.01  
% 1.58/1.01  inst_num_of_clauses:                    868
% 1.58/1.01  inst_num_in_passive:                    168
% 1.58/1.01  inst_num_in_active:                     325
% 1.58/1.01  inst_num_in_unprocessed:                375
% 1.58/1.01  inst_num_of_loops:                      360
% 1.58/1.01  inst_num_of_learning_restarts:          0
% 1.58/1.01  inst_num_moves_active_passive:          33
% 1.58/1.01  inst_lit_activity:                      0
% 1.58/1.01  inst_lit_activity_moves:                1
% 1.58/1.01  inst_num_tautologies:                   0
% 1.58/1.01  inst_num_prop_implied:                  0
% 1.58/1.01  inst_num_existing_simplified:           0
% 1.58/1.01  inst_num_eq_res_simplified:             0
% 1.58/1.01  inst_num_child_elim:                    0
% 1.58/1.01  inst_num_of_dismatching_blockings:      119
% 1.58/1.01  inst_num_of_non_proper_insts:           444
% 1.58/1.01  inst_num_of_duplicates:                 0
% 1.58/1.01  inst_inst_num_from_inst_to_res:         0
% 1.58/1.01  inst_dismatching_checking_time:         0.
% 1.58/1.01  
% 1.58/1.01  ------ Resolution
% 1.58/1.01  
% 1.58/1.01  res_num_of_clauses:                     0
% 1.58/1.01  res_num_in_passive:                     0
% 1.58/1.01  res_num_in_active:                      0
% 1.58/1.01  res_num_of_loops:                       138
% 1.58/1.01  res_forward_subset_subsumed:            40
% 1.58/1.01  res_backward_subset_subsumed:           0
% 1.58/1.01  res_forward_subsumed:                   0
% 1.58/1.01  res_backward_subsumed:                  0
% 1.58/1.01  res_forward_subsumption_resolution:     0
% 1.58/1.01  res_backward_subsumption_resolution:    0
% 1.58/1.01  res_clause_to_clause_subsumption:       501
% 1.58/1.01  res_orphan_elimination:                 0
% 1.58/1.01  res_tautology_del:                      51
% 1.58/1.01  res_num_eq_res_simplified:              1
% 1.58/1.01  res_num_sel_changes:                    0
% 1.58/1.01  res_moves_from_active_to_pass:          0
% 1.58/1.01  
% 1.58/1.01  ------ Superposition
% 1.58/1.01  
% 1.58/1.01  sup_time_total:                         0.
% 1.58/1.01  sup_time_generating:                    0.
% 1.58/1.01  sup_time_sim_full:                      0.
% 1.58/1.01  sup_time_sim_immed:                     0.
% 1.58/1.01  
% 1.58/1.01  sup_num_of_clauses:                     161
% 1.58/1.01  sup_num_in_active:                      67
% 1.58/1.01  sup_num_in_passive:                     94
% 1.58/1.01  sup_num_of_loops:                       71
% 1.58/1.01  sup_fw_superposition:                   73
% 1.58/1.01  sup_bw_superposition:                   84
% 1.58/1.01  sup_immediate_simplified:               17
% 1.58/1.01  sup_given_eliminated:                   0
% 1.58/1.01  comparisons_done:                       0
% 1.58/1.01  comparisons_avoided:                    25
% 1.58/1.01  
% 1.58/1.01  ------ Simplifications
% 1.58/1.01  
% 1.58/1.01  
% 1.58/1.01  sim_fw_subset_subsumed:                 9
% 1.58/1.01  sim_bw_subset_subsumed:                 0
% 1.58/1.01  sim_fw_subsumed:                        5
% 1.58/1.01  sim_bw_subsumed:                        0
% 1.58/1.01  sim_fw_subsumption_res:                 0
% 1.58/1.01  sim_bw_subsumption_res:                 0
% 1.58/1.01  sim_tautology_del:                      7
% 1.58/1.01  sim_eq_tautology_del:                   2
% 1.58/1.01  sim_eq_res_simp:                        1
% 1.58/1.01  sim_fw_demodulated:                     0
% 1.58/1.01  sim_bw_demodulated:                     4
% 1.58/1.01  sim_light_normalised:                   4
% 1.58/1.01  sim_joinable_taut:                      0
% 1.58/1.01  sim_joinable_simp:                      0
% 1.58/1.01  sim_ac_normalised:                      0
% 1.58/1.01  sim_smt_subsumption:                    0
% 1.58/1.01  
%------------------------------------------------------------------------------
