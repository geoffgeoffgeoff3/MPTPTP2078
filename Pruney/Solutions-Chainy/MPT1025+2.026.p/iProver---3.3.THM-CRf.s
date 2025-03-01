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
% DateTime   : Thu Dec  3 12:08:05 EST 2020

% Result     : Theorem 3.35s
% Output     : CNFRefutation 3.35s
% Verified   : 
% Statistics : Number of formulae       :  129 ( 345 expanded)
%              Number of clauses        :   74 ( 109 expanded)
%              Number of leaves         :   19 (  90 expanded)
%              Depth                    :   18
%              Number of atoms          :  468 (1981 expanded)
%              Number of equality atoms :  177 ( 485 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   1 average)

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
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

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

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
    inference(nnf_transformation,[],[f23])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f11,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ~ ( ! [X5] :
                ( m1_subset_1(X5,X0)
               => ~ ( k1_funct_1(X3,X5) = X4
                    & r2_hidden(X5,X2) ) )
            & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ! [X4] :
            ~ ( ! [X5] :
                  ( m1_subset_1(X5,X0)
                 => ~ ( k1_funct_1(X3,X5) = X4
                      & r2_hidden(X5,X2) ) )
              & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f24,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ m1_subset_1(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f25,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ m1_subset_1(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f24])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(X3,X5) != X4
              | ~ r2_hidden(X5,X2)
              | ~ m1_subset_1(X5,X0) )
          & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
     => ( ! [X5] :
            ( k1_funct_1(X3,X5) != sK7
            | ~ r2_hidden(X5,X2)
            | ~ m1_subset_1(X5,X0) )
        & r2_hidden(sK7,k7_relset_1(X0,X1,X3,X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ? [X0,X1,X2,X3] :
        ( ? [X4] :
            ( ! [X5] :
                ( k1_funct_1(X3,X5) != X4
                | ~ r2_hidden(X5,X2)
                | ~ m1_subset_1(X5,X0) )
            & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2)) )
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ? [X4] :
          ( ! [X5] :
              ( k1_funct_1(sK6,X5) != X4
              | ~ r2_hidden(X5,sK5)
              | ~ m1_subset_1(X5,sK3) )
          & r2_hidden(X4,k7_relset_1(sK3,sK4,sK6,sK5)) )
      & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
      & v1_funct_2(sK6,sK3,sK4)
      & v1_funct_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ! [X5] :
        ( k1_funct_1(sK6,X5) != sK7
        | ~ r2_hidden(X5,sK5)
        | ~ m1_subset_1(X5,sK3) )
    & r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5))
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    & v1_funct_2(sK6,sK3,sK4)
    & v1_funct_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6,sK7])],[f25,f34,f33])).

fof(f59,plain,(
    v1_funct_2(sK6,sK3,sK4) ),
    inference(cnf_transformation,[],[f35])).

fof(f60,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f35])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1,X2] :
          ( k9_relat_1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( k1_funct_1(X0,X4) = X3
                  & r2_hidden(X4,X1)
                  & r2_hidden(X4,k1_relat_1(X0)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k9_relat_1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( k1_funct_1(X0,X4) = X3
                  & r2_hidden(X4,X1)
                  & r2_hidden(X4,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k9_relat_1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( k1_funct_1(X0,X4) = X3
                  & r2_hidden(X4,X1)
                  & r2_hidden(X4,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k9_relat_1(X0,X1) = X2
            | ? [X3] :
                ( ( ! [X4] :
                      ( k1_funct_1(X0,X4) != X3
                      | ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(X4,k1_relat_1(X0)) )
                  | ~ r2_hidden(X3,X2) )
                & ( ? [X4] :
                      ( k1_funct_1(X0,X4) = X3
                      & r2_hidden(X4,X1)
                      & r2_hidden(X4,k1_relat_1(X0)) )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X3] :
                ( ( r2_hidden(X3,X2)
                  | ! [X4] :
                      ( k1_funct_1(X0,X4) != X3
                      | ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(X4,k1_relat_1(X0)) ) )
                & ( ? [X4] :
                      ( k1_funct_1(X0,X4) = X3
                      & r2_hidden(X4,X1)
                      & r2_hidden(X4,k1_relat_1(X0)) )
                  | ~ r2_hidden(X3,X2) ) )
            | k9_relat_1(X0,X1) != X2 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k9_relat_1(X0,X1) = X2
            | ? [X3] :
                ( ( ! [X4] :
                      ( k1_funct_1(X0,X4) != X3
                      | ~ r2_hidden(X4,X1)
                      | ~ r2_hidden(X4,k1_relat_1(X0)) )
                  | ~ r2_hidden(X3,X2) )
                & ( ? [X5] :
                      ( k1_funct_1(X0,X5) = X3
                      & r2_hidden(X5,X1)
                      & r2_hidden(X5,k1_relat_1(X0)) )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X6] :
                ( ( r2_hidden(X6,X2)
                  | ! [X7] :
                      ( k1_funct_1(X0,X7) != X6
                      | ~ r2_hidden(X7,X1)
                      | ~ r2_hidden(X7,k1_relat_1(X0)) ) )
                & ( ? [X8] :
                      ( k1_funct_1(X0,X8) = X6
                      & r2_hidden(X8,X1)
                      & r2_hidden(X8,k1_relat_1(X0)) )
                  | ~ r2_hidden(X6,X2) ) )
            | k9_relat_1(X0,X1) != X2 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f26])).

fof(f30,plain,(
    ! [X6,X1,X0] :
      ( ? [X8] :
          ( k1_funct_1(X0,X8) = X6
          & r2_hidden(X8,X1)
          & r2_hidden(X8,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK2(X0,X1,X6)) = X6
        & r2_hidden(sK2(X0,X1,X6),X1)
        & r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X5] :
          ( k1_funct_1(X0,X5) = X3
          & r2_hidden(X5,X1)
          & r2_hidden(X5,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK1(X0,X1,X2)) = X3
        & r2_hidden(sK1(X0,X1,X2),X1)
        & r2_hidden(sK1(X0,X1,X2),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ! [X4] :
                ( k1_funct_1(X0,X4) != X3
                | ~ r2_hidden(X4,X1)
                | ~ r2_hidden(X4,k1_relat_1(X0)) )
            | ~ r2_hidden(X3,X2) )
          & ( ? [X5] :
                ( k1_funct_1(X0,X5) = X3
                & r2_hidden(X5,X1)
                & r2_hidden(X5,k1_relat_1(X0)) )
            | r2_hidden(X3,X2) ) )
     => ( ( ! [X4] :
              ( k1_funct_1(X0,X4) != sK0(X0,X1,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,k1_relat_1(X0)) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ? [X5] :
              ( k1_funct_1(X0,X5) = sK0(X0,X1,X2)
              & r2_hidden(X5,X1)
              & r2_hidden(X5,k1_relat_1(X0)) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k9_relat_1(X0,X1) = X2
            | ( ( ! [X4] :
                    ( k1_funct_1(X0,X4) != sK0(X0,X1,X2)
                    | ~ r2_hidden(X4,X1)
                    | ~ r2_hidden(X4,k1_relat_1(X0)) )
                | ~ r2_hidden(sK0(X0,X1,X2),X2) )
              & ( ( k1_funct_1(X0,sK1(X0,X1,X2)) = sK0(X0,X1,X2)
                  & r2_hidden(sK1(X0,X1,X2),X1)
                  & r2_hidden(sK1(X0,X1,X2),k1_relat_1(X0)) )
                | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
          & ( ! [X6] :
                ( ( r2_hidden(X6,X2)
                  | ! [X7] :
                      ( k1_funct_1(X0,X7) != X6
                      | ~ r2_hidden(X7,X1)
                      | ~ r2_hidden(X7,k1_relat_1(X0)) ) )
                & ( ( k1_funct_1(X0,sK2(X0,X1,X6)) = X6
                    & r2_hidden(sK2(X0,X1,X6),X1)
                    & r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0)) )
                  | ~ r2_hidden(X6,X2) ) )
            | k9_relat_1(X0,X1) != X2 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f27,f30,f29,f28])).

fof(f39,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0))
      | ~ r2_hidden(X6,X2)
      | k9_relat_1(X0,X1) != X2
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f67,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0))
      | ~ r2_hidden(X6,k9_relat_1(X0,X1))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f39])).

fof(f58,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f35])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f61,plain,(
    r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) ),
    inference(cnf_transformation,[],[f35])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f38,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f51,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f41,plain,(
    ! [X6,X2,X0,X1] :
      ( k1_funct_1(X0,sK2(X0,X1,X6)) = X6
      | ~ r2_hidden(X6,X2)
      | k9_relat_1(X0,X1) != X2
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f65,plain,(
    ! [X6,X0,X1] :
      ( k1_funct_1(X0,sK2(X0,X1,X6)) = X6
      | ~ r2_hidden(X6,k9_relat_1(X0,X1))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f41])).

fof(f62,plain,(
    ! [X5] :
      ( k1_funct_1(sK6,X5) != sK7
      | ~ r2_hidden(X5,sK5)
      | ~ m1_subset_1(X5,sK3) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f40,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),X1)
      | ~ r2_hidden(X6,X2)
      | k9_relat_1(X0,X1) != X2
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f66,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(sK2(X0,X1,X6),X1)
      | ~ r2_hidden(X6,k9_relat_1(X0,X1))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f40])).

cnf(c_21,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_25,negated_conjecture,
    ( v1_funct_2(sK6,sK3,sK4) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_706,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X2
    | sK3 != X1
    | sK6 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_25])).

cnf(c_707,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | k1_relset_1(sK3,sK4,sK6) = sK3
    | k1_xboole_0 = sK4 ),
    inference(unflattening,[status(thm)],[c_706])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_709,plain,
    ( k1_relset_1(sK3,sK4,sK6) = sK3
    | k1_xboole_0 = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_707,c_24])).

cnf(c_1396,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1400,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1775,plain,
    ( k1_relset_1(sK3,sK4,sK6) = k1_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1396,c_1400])).

cnf(c_1982,plain,
    ( k1_relat_1(sK6) = sK3
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_709,c_1775])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK2(X1,X2,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_26,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_409,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK2(X1,X2,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_26])).

cnf(c_410,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
    | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6))
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_1389,plain,
    ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
    | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_410])).

cnf(c_29,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_411,plain,
    ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
    | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_410])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1573,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1574,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top
    | v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1573])).

cnf(c_1649,plain,
    ( r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
    | r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1389,c_29,c_411,c_1574])).

cnf(c_1650,plain,
    ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
    | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top ),
    inference(renaming,[status(thm)],[c_1649])).

cnf(c_2306,plain,
    ( sK4 = k1_xboole_0
    | r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
    | r2_hidden(sK2(sK6,X1,X0),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1982,c_1650])).

cnf(c_23,negated_conjecture,
    ( r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1026,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1055,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1026])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1582,plain,
    ( ~ m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(X0))
    | r2_hidden(sK7,X0)
    | ~ r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1662,plain,
    ( ~ m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(sK4))
    | ~ r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5))
    | r2_hidden(sK7,sK4) ),
    inference(instantiation,[status(thm)],[c_1582])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1592,plain,
    ( m1_subset_1(k7_relset_1(sK3,sK4,sK6,X0),k1_zfmisc_1(sK4))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_1663,plain,
    ( m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(sK4))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(instantiation,[status(thm)],[c_1592])).

cnf(c_1669,plain,
    ( sK7 = sK7 ),
    inference(instantiation,[status(thm)],[c_1026])).

cnf(c_1027,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1970,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_1027])).

cnf(c_1971,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1970])).

cnf(c_1028,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1755,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK7,sK4)
    | X1 != sK4
    | X0 != sK7 ),
    inference(instantiation,[status(thm)],[c_1028])).

cnf(c_2780,plain,
    ( r2_hidden(sK7,X0)
    | ~ r2_hidden(sK7,sK4)
    | X0 != sK4
    | sK7 != sK7 ),
    inference(instantiation,[status(thm)],[c_1755])).

cnf(c_2782,plain,
    ( ~ r2_hidden(sK7,sK4)
    | r2_hidden(sK7,k1_xboole_0)
    | sK7 != sK7
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_2780])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_306,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_11])).

cnf(c_307,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_306])).

cnf(c_5551,plain,
    ( ~ r2_hidden(sK7,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_307])).

cnf(c_6063,plain,
    ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
    | r2_hidden(sK2(sK6,X1,X0),sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2306,c_24,c_23,c_1055,c_1662,c_1663,c_1669,c_1971,c_2782,c_5551])).

cnf(c_2,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1403,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_6070,plain,
    ( m1_subset_1(sK2(sK6,X0,X1),sK3) = iProver_top
    | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6063,c_1403])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1399,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_1912,plain,
    ( k7_relset_1(sK3,sK4,sK6,X0) = k9_relat_1(sK6,X0) ),
    inference(superposition,[status(thm)],[c_1396,c_1399])).

cnf(c_1397,plain,
    ( r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2057,plain,
    ( r2_hidden(sK7,k9_relat_1(sK6,sK5)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1912,c_1397])).

cnf(c_8,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,sK2(X1,X2,X0)) = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_439,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,sK2(X1,X2,X0)) = X0
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_26])).

cnf(c_440,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
    | ~ v1_relat_1(sK6)
    | k1_funct_1(sK6,sK2(sK6,X1,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_439])).

cnf(c_1387,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
    | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_440])).

cnf(c_441,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
    | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_440])).

cnf(c_1612,plain,
    ( r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
    | k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1387,c_29,c_441,c_1574])).

cnf(c_1613,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
    | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1612])).

cnf(c_2067,plain,
    ( k1_funct_1(sK6,sK2(sK6,sK5,sK7)) = sK7 ),
    inference(superposition,[status(thm)],[c_2057,c_1613])).

cnf(c_22,negated_conjecture,
    ( ~ m1_subset_1(X0,sK3)
    | ~ r2_hidden(X0,sK5)
    | k1_funct_1(sK6,X0) != sK7 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1398,plain,
    ( k1_funct_1(sK6,X0) != sK7
    | m1_subset_1(X0,sK3) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2716,plain,
    ( m1_subset_1(sK2(sK6,sK5,sK7),sK3) != iProver_top
    | r2_hidden(sK2(sK6,sK5,sK7),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_2067,c_1398])).

cnf(c_6172,plain,
    ( r2_hidden(sK2(sK6,sK5,sK7),sK5) != iProver_top
    | r2_hidden(sK7,k9_relat_1(sK6,sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6070,c_2716])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK2(X1,X2,X0),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_424,plain,
    ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
    | r2_hidden(sK2(X1,X2,X0),X2)
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_26])).

cnf(c_425,plain,
    ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
    | r2_hidden(sK2(sK6,X1,X0),X1)
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_424])).

cnf(c_2108,plain,
    ( r2_hidden(sK2(sK6,X0,sK7),X0)
    | ~ r2_hidden(sK7,k9_relat_1(sK6,X0))
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_425])).

cnf(c_4894,plain,
    ( r2_hidden(sK2(sK6,sK5,sK7),sK5)
    | ~ r2_hidden(sK7,k9_relat_1(sK6,sK5))
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_2108])).

cnf(c_4901,plain,
    ( r2_hidden(sK2(sK6,sK5,sK7),sK5) = iProver_top
    | r2_hidden(sK7,k9_relat_1(sK6,sK5)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4894])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6172,c_4901,c_2057,c_1574,c_29])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:02:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.35/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.35/1.01  
% 3.35/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.35/1.01  
% 3.35/1.01  ------  iProver source info
% 3.35/1.01  
% 3.35/1.01  git: date: 2020-06-30 10:37:57 +0100
% 3.35/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.35/1.01  git: non_committed_changes: false
% 3.35/1.01  git: last_make_outside_of_git: false
% 3.35/1.01  
% 3.35/1.01  ------ 
% 3.35/1.01  
% 3.35/1.01  ------ Input Options
% 3.35/1.01  
% 3.35/1.01  --out_options                           all
% 3.35/1.01  --tptp_safe_out                         true
% 3.35/1.01  --problem_path                          ""
% 3.35/1.01  --include_path                          ""
% 3.35/1.01  --clausifier                            res/vclausify_rel
% 3.35/1.01  --clausifier_options                    --mode clausify
% 3.35/1.01  --stdin                                 false
% 3.35/1.01  --stats_out                             all
% 3.35/1.01  
% 3.35/1.01  ------ General Options
% 3.35/1.01  
% 3.35/1.01  --fof                                   false
% 3.35/1.01  --time_out_real                         305.
% 3.35/1.01  --time_out_virtual                      -1.
% 3.35/1.01  --symbol_type_check                     false
% 3.35/1.01  --clausify_out                          false
% 3.35/1.01  --sig_cnt_out                           false
% 3.35/1.01  --trig_cnt_out                          false
% 3.35/1.01  --trig_cnt_out_tolerance                1.
% 3.35/1.01  --trig_cnt_out_sk_spl                   false
% 3.35/1.01  --abstr_cl_out                          false
% 3.35/1.01  
% 3.35/1.01  ------ Global Options
% 3.35/1.01  
% 3.35/1.01  --schedule                              default
% 3.35/1.01  --add_important_lit                     false
% 3.35/1.01  --prop_solver_per_cl                    1000
% 3.35/1.01  --min_unsat_core                        false
% 3.35/1.01  --soft_assumptions                      false
% 3.35/1.01  --soft_lemma_size                       3
% 3.35/1.01  --prop_impl_unit_size                   0
% 3.35/1.01  --prop_impl_unit                        []
% 3.35/1.01  --share_sel_clauses                     true
% 3.35/1.01  --reset_solvers                         false
% 3.35/1.01  --bc_imp_inh                            [conj_cone]
% 3.35/1.01  --conj_cone_tolerance                   3.
% 3.35/1.01  --extra_neg_conj                        none
% 3.35/1.01  --large_theory_mode                     true
% 3.35/1.01  --prolific_symb_bound                   200
% 3.35/1.01  --lt_threshold                          2000
% 3.35/1.01  --clause_weak_htbl                      true
% 3.35/1.01  --gc_record_bc_elim                     false
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing Options
% 3.35/1.01  
% 3.35/1.01  --preprocessing_flag                    true
% 3.35/1.01  --time_out_prep_mult                    0.1
% 3.35/1.01  --splitting_mode                        input
% 3.35/1.01  --splitting_grd                         true
% 3.35/1.01  --splitting_cvd                         false
% 3.35/1.01  --splitting_cvd_svl                     false
% 3.35/1.01  --splitting_nvd                         32
% 3.35/1.01  --sub_typing                            true
% 3.35/1.01  --prep_gs_sim                           true
% 3.35/1.01  --prep_unflatten                        true
% 3.35/1.01  --prep_res_sim                          true
% 3.35/1.01  --prep_upred                            true
% 3.35/1.01  --prep_sem_filter                       exhaustive
% 3.35/1.01  --prep_sem_filter_out                   false
% 3.35/1.01  --pred_elim                             true
% 3.35/1.01  --res_sim_input                         true
% 3.35/1.01  --eq_ax_congr_red                       true
% 3.35/1.01  --pure_diseq_elim                       true
% 3.35/1.01  --brand_transform                       false
% 3.35/1.01  --non_eq_to_eq                          false
% 3.35/1.01  --prep_def_merge                        true
% 3.35/1.01  --prep_def_merge_prop_impl              false
% 3.35/1.01  --prep_def_merge_mbd                    true
% 3.35/1.01  --prep_def_merge_tr_red                 false
% 3.35/1.01  --prep_def_merge_tr_cl                  false
% 3.35/1.01  --smt_preprocessing                     true
% 3.35/1.01  --smt_ac_axioms                         fast
% 3.35/1.01  --preprocessed_out                      false
% 3.35/1.01  --preprocessed_stats                    false
% 3.35/1.01  
% 3.35/1.01  ------ Abstraction refinement Options
% 3.35/1.01  
% 3.35/1.01  --abstr_ref                             []
% 3.35/1.01  --abstr_ref_prep                        false
% 3.35/1.01  --abstr_ref_until_sat                   false
% 3.35/1.01  --abstr_ref_sig_restrict                funpre
% 3.35/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.35/1.01  --abstr_ref_under                       []
% 3.35/1.01  
% 3.35/1.01  ------ SAT Options
% 3.35/1.01  
% 3.35/1.01  --sat_mode                              false
% 3.35/1.01  --sat_fm_restart_options                ""
% 3.35/1.01  --sat_gr_def                            false
% 3.35/1.01  --sat_epr_types                         true
% 3.35/1.01  --sat_non_cyclic_types                  false
% 3.35/1.01  --sat_finite_models                     false
% 3.35/1.01  --sat_fm_lemmas                         false
% 3.35/1.01  --sat_fm_prep                           false
% 3.35/1.01  --sat_fm_uc_incr                        true
% 3.35/1.01  --sat_out_model                         small
% 3.35/1.01  --sat_out_clauses                       false
% 3.35/1.01  
% 3.35/1.01  ------ QBF Options
% 3.35/1.01  
% 3.35/1.01  --qbf_mode                              false
% 3.35/1.01  --qbf_elim_univ                         false
% 3.35/1.01  --qbf_dom_inst                          none
% 3.35/1.01  --qbf_dom_pre_inst                      false
% 3.35/1.01  --qbf_sk_in                             false
% 3.35/1.01  --qbf_pred_elim                         true
% 3.35/1.01  --qbf_split                             512
% 3.35/1.01  
% 3.35/1.01  ------ BMC1 Options
% 3.35/1.01  
% 3.35/1.01  --bmc1_incremental                      false
% 3.35/1.01  --bmc1_axioms                           reachable_all
% 3.35/1.01  --bmc1_min_bound                        0
% 3.35/1.01  --bmc1_max_bound                        -1
% 3.35/1.01  --bmc1_max_bound_default                -1
% 3.35/1.01  --bmc1_symbol_reachability              true
% 3.35/1.01  --bmc1_property_lemmas                  false
% 3.35/1.01  --bmc1_k_induction                      false
% 3.35/1.01  --bmc1_non_equiv_states                 false
% 3.35/1.01  --bmc1_deadlock                         false
% 3.35/1.01  --bmc1_ucm                              false
% 3.35/1.01  --bmc1_add_unsat_core                   none
% 3.35/1.01  --bmc1_unsat_core_children              false
% 3.35/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.35/1.01  --bmc1_out_stat                         full
% 3.35/1.01  --bmc1_ground_init                      false
% 3.35/1.01  --bmc1_pre_inst_next_state              false
% 3.35/1.01  --bmc1_pre_inst_state                   false
% 3.35/1.01  --bmc1_pre_inst_reach_state             false
% 3.35/1.01  --bmc1_out_unsat_core                   false
% 3.35/1.01  --bmc1_aig_witness_out                  false
% 3.35/1.01  --bmc1_verbose                          false
% 3.35/1.01  --bmc1_dump_clauses_tptp                false
% 3.35/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.35/1.01  --bmc1_dump_file                        -
% 3.35/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.35/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.35/1.01  --bmc1_ucm_extend_mode                  1
% 3.35/1.01  --bmc1_ucm_init_mode                    2
% 3.35/1.01  --bmc1_ucm_cone_mode                    none
% 3.35/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.35/1.01  --bmc1_ucm_relax_model                  4
% 3.35/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.35/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.35/1.01  --bmc1_ucm_layered_model                none
% 3.35/1.01  --bmc1_ucm_max_lemma_size               10
% 3.35/1.01  
% 3.35/1.01  ------ AIG Options
% 3.35/1.01  
% 3.35/1.01  --aig_mode                              false
% 3.35/1.01  
% 3.35/1.01  ------ Instantiation Options
% 3.35/1.01  
% 3.35/1.01  --instantiation_flag                    true
% 3.35/1.01  --inst_sos_flag                         false
% 3.35/1.01  --inst_sos_phase                        true
% 3.35/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.35/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.35/1.01  --inst_lit_sel_side                     num_symb
% 3.35/1.01  --inst_solver_per_active                1400
% 3.35/1.01  --inst_solver_calls_frac                1.
% 3.35/1.01  --inst_passive_queue_type               priority_queues
% 3.35/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.35/1.01  --inst_passive_queues_freq              [25;2]
% 3.35/1.01  --inst_dismatching                      true
% 3.35/1.01  --inst_eager_unprocessed_to_passive     true
% 3.35/1.01  --inst_prop_sim_given                   true
% 3.35/1.01  --inst_prop_sim_new                     false
% 3.35/1.01  --inst_subs_new                         false
% 3.35/1.01  --inst_eq_res_simp                      false
% 3.35/1.01  --inst_subs_given                       false
% 3.35/1.01  --inst_orphan_elimination               true
% 3.35/1.01  --inst_learning_loop_flag               true
% 3.35/1.01  --inst_learning_start                   3000
% 3.35/1.01  --inst_learning_factor                  2
% 3.35/1.01  --inst_start_prop_sim_after_learn       3
% 3.35/1.01  --inst_sel_renew                        solver
% 3.35/1.01  --inst_lit_activity_flag                true
% 3.35/1.01  --inst_restr_to_given                   false
% 3.35/1.01  --inst_activity_threshold               500
% 3.35/1.01  --inst_out_proof                        true
% 3.35/1.01  
% 3.35/1.01  ------ Resolution Options
% 3.35/1.01  
% 3.35/1.01  --resolution_flag                       true
% 3.35/1.01  --res_lit_sel                           adaptive
% 3.35/1.01  --res_lit_sel_side                      none
% 3.35/1.01  --res_ordering                          kbo
% 3.35/1.01  --res_to_prop_solver                    active
% 3.35/1.01  --res_prop_simpl_new                    false
% 3.35/1.01  --res_prop_simpl_given                  true
% 3.35/1.01  --res_passive_queue_type                priority_queues
% 3.35/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.35/1.01  --res_passive_queues_freq               [15;5]
% 3.35/1.01  --res_forward_subs                      full
% 3.35/1.01  --res_backward_subs                     full
% 3.35/1.01  --res_forward_subs_resolution           true
% 3.35/1.01  --res_backward_subs_resolution          true
% 3.35/1.01  --res_orphan_elimination                true
% 3.35/1.01  --res_time_limit                        2.
% 3.35/1.01  --res_out_proof                         true
% 3.35/1.01  
% 3.35/1.01  ------ Superposition Options
% 3.35/1.01  
% 3.35/1.01  --superposition_flag                    true
% 3.35/1.01  --sup_passive_queue_type                priority_queues
% 3.35/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.35/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.35/1.01  --demod_completeness_check              fast
% 3.35/1.01  --demod_use_ground                      true
% 3.35/1.01  --sup_to_prop_solver                    passive
% 3.35/1.01  --sup_prop_simpl_new                    true
% 3.35/1.01  --sup_prop_simpl_given                  true
% 3.35/1.01  --sup_fun_splitting                     false
% 3.35/1.01  --sup_smt_interval                      50000
% 3.35/1.01  
% 3.35/1.01  ------ Superposition Simplification Setup
% 3.35/1.01  
% 3.35/1.01  --sup_indices_passive                   []
% 3.35/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.35/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_full_bw                           [BwDemod]
% 3.35/1.01  --sup_immed_triv                        [TrivRules]
% 3.35/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.35/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_immed_bw_main                     []
% 3.35/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.35/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.35/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.35/1.01  
% 3.35/1.01  ------ Combination Options
% 3.35/1.01  
% 3.35/1.01  --comb_res_mult                         3
% 3.35/1.01  --comb_sup_mult                         2
% 3.35/1.01  --comb_inst_mult                        10
% 3.35/1.01  
% 3.35/1.01  ------ Debug Options
% 3.35/1.01  
% 3.35/1.01  --dbg_backtrace                         false
% 3.35/1.01  --dbg_dump_prop_clauses                 false
% 3.35/1.01  --dbg_dump_prop_clauses_file            -
% 3.35/1.01  --dbg_out_stat                          false
% 3.35/1.01  ------ Parsing...
% 3.35/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.35/1.01  ------ Proving...
% 3.35/1.01  ------ Problem Properties 
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  clauses                                 21
% 3.35/1.01  conjectures                             3
% 3.35/1.01  EPR                                     2
% 3.35/1.01  Horn                                    16
% 3.35/1.01  unary                                   3
% 3.35/1.01  binary                                  6
% 3.35/1.01  lits                                    59
% 3.35/1.01  lits eq                                 17
% 3.35/1.01  fd_pure                                 0
% 3.35/1.01  fd_pseudo                               0
% 3.35/1.01  fd_cond                                 0
% 3.35/1.01  fd_pseudo_cond                          4
% 3.35/1.01  AC symbols                              0
% 3.35/1.01  
% 3.35/1.01  ------ Schedule dynamic 5 is on 
% 3.35/1.01  
% 3.35/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  ------ 
% 3.35/1.01  Current options:
% 3.35/1.01  ------ 
% 3.35/1.01  
% 3.35/1.01  ------ Input Options
% 3.35/1.01  
% 3.35/1.01  --out_options                           all
% 3.35/1.01  --tptp_safe_out                         true
% 3.35/1.01  --problem_path                          ""
% 3.35/1.01  --include_path                          ""
% 3.35/1.01  --clausifier                            res/vclausify_rel
% 3.35/1.01  --clausifier_options                    --mode clausify
% 3.35/1.01  --stdin                                 false
% 3.35/1.01  --stats_out                             all
% 3.35/1.01  
% 3.35/1.01  ------ General Options
% 3.35/1.01  
% 3.35/1.01  --fof                                   false
% 3.35/1.01  --time_out_real                         305.
% 3.35/1.01  --time_out_virtual                      -1.
% 3.35/1.01  --symbol_type_check                     false
% 3.35/1.01  --clausify_out                          false
% 3.35/1.01  --sig_cnt_out                           false
% 3.35/1.01  --trig_cnt_out                          false
% 3.35/1.01  --trig_cnt_out_tolerance                1.
% 3.35/1.01  --trig_cnt_out_sk_spl                   false
% 3.35/1.01  --abstr_cl_out                          false
% 3.35/1.01  
% 3.35/1.01  ------ Global Options
% 3.35/1.01  
% 3.35/1.01  --schedule                              default
% 3.35/1.01  --add_important_lit                     false
% 3.35/1.01  --prop_solver_per_cl                    1000
% 3.35/1.01  --min_unsat_core                        false
% 3.35/1.01  --soft_assumptions                      false
% 3.35/1.01  --soft_lemma_size                       3
% 3.35/1.01  --prop_impl_unit_size                   0
% 3.35/1.01  --prop_impl_unit                        []
% 3.35/1.01  --share_sel_clauses                     true
% 3.35/1.01  --reset_solvers                         false
% 3.35/1.01  --bc_imp_inh                            [conj_cone]
% 3.35/1.01  --conj_cone_tolerance                   3.
% 3.35/1.01  --extra_neg_conj                        none
% 3.35/1.01  --large_theory_mode                     true
% 3.35/1.01  --prolific_symb_bound                   200
% 3.35/1.01  --lt_threshold                          2000
% 3.35/1.01  --clause_weak_htbl                      true
% 3.35/1.01  --gc_record_bc_elim                     false
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing Options
% 3.35/1.01  
% 3.35/1.01  --preprocessing_flag                    true
% 3.35/1.01  --time_out_prep_mult                    0.1
% 3.35/1.01  --splitting_mode                        input
% 3.35/1.01  --splitting_grd                         true
% 3.35/1.01  --splitting_cvd                         false
% 3.35/1.01  --splitting_cvd_svl                     false
% 3.35/1.01  --splitting_nvd                         32
% 3.35/1.01  --sub_typing                            true
% 3.35/1.01  --prep_gs_sim                           true
% 3.35/1.01  --prep_unflatten                        true
% 3.35/1.01  --prep_res_sim                          true
% 3.35/1.01  --prep_upred                            true
% 3.35/1.01  --prep_sem_filter                       exhaustive
% 3.35/1.01  --prep_sem_filter_out                   false
% 3.35/1.01  --pred_elim                             true
% 3.35/1.01  --res_sim_input                         true
% 3.35/1.01  --eq_ax_congr_red                       true
% 3.35/1.01  --pure_diseq_elim                       true
% 3.35/1.01  --brand_transform                       false
% 3.35/1.01  --non_eq_to_eq                          false
% 3.35/1.01  --prep_def_merge                        true
% 3.35/1.01  --prep_def_merge_prop_impl              false
% 3.35/1.01  --prep_def_merge_mbd                    true
% 3.35/1.01  --prep_def_merge_tr_red                 false
% 3.35/1.01  --prep_def_merge_tr_cl                  false
% 3.35/1.01  --smt_preprocessing                     true
% 3.35/1.01  --smt_ac_axioms                         fast
% 3.35/1.01  --preprocessed_out                      false
% 3.35/1.01  --preprocessed_stats                    false
% 3.35/1.01  
% 3.35/1.01  ------ Abstraction refinement Options
% 3.35/1.01  
% 3.35/1.01  --abstr_ref                             []
% 3.35/1.01  --abstr_ref_prep                        false
% 3.35/1.01  --abstr_ref_until_sat                   false
% 3.35/1.01  --abstr_ref_sig_restrict                funpre
% 3.35/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 3.35/1.01  --abstr_ref_under                       []
% 3.35/1.01  
% 3.35/1.01  ------ SAT Options
% 3.35/1.01  
% 3.35/1.01  --sat_mode                              false
% 3.35/1.01  --sat_fm_restart_options                ""
% 3.35/1.01  --sat_gr_def                            false
% 3.35/1.01  --sat_epr_types                         true
% 3.35/1.01  --sat_non_cyclic_types                  false
% 3.35/1.01  --sat_finite_models                     false
% 3.35/1.01  --sat_fm_lemmas                         false
% 3.35/1.01  --sat_fm_prep                           false
% 3.35/1.01  --sat_fm_uc_incr                        true
% 3.35/1.01  --sat_out_model                         small
% 3.35/1.01  --sat_out_clauses                       false
% 3.35/1.01  
% 3.35/1.01  ------ QBF Options
% 3.35/1.01  
% 3.35/1.01  --qbf_mode                              false
% 3.35/1.01  --qbf_elim_univ                         false
% 3.35/1.01  --qbf_dom_inst                          none
% 3.35/1.01  --qbf_dom_pre_inst                      false
% 3.35/1.01  --qbf_sk_in                             false
% 3.35/1.01  --qbf_pred_elim                         true
% 3.35/1.01  --qbf_split                             512
% 3.35/1.01  
% 3.35/1.01  ------ BMC1 Options
% 3.35/1.01  
% 3.35/1.01  --bmc1_incremental                      false
% 3.35/1.01  --bmc1_axioms                           reachable_all
% 3.35/1.01  --bmc1_min_bound                        0
% 3.35/1.01  --bmc1_max_bound                        -1
% 3.35/1.01  --bmc1_max_bound_default                -1
% 3.35/1.01  --bmc1_symbol_reachability              true
% 3.35/1.01  --bmc1_property_lemmas                  false
% 3.35/1.01  --bmc1_k_induction                      false
% 3.35/1.01  --bmc1_non_equiv_states                 false
% 3.35/1.01  --bmc1_deadlock                         false
% 3.35/1.01  --bmc1_ucm                              false
% 3.35/1.01  --bmc1_add_unsat_core                   none
% 3.35/1.01  --bmc1_unsat_core_children              false
% 3.35/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 3.35/1.01  --bmc1_out_stat                         full
% 3.35/1.01  --bmc1_ground_init                      false
% 3.35/1.01  --bmc1_pre_inst_next_state              false
% 3.35/1.01  --bmc1_pre_inst_state                   false
% 3.35/1.01  --bmc1_pre_inst_reach_state             false
% 3.35/1.01  --bmc1_out_unsat_core                   false
% 3.35/1.01  --bmc1_aig_witness_out                  false
% 3.35/1.01  --bmc1_verbose                          false
% 3.35/1.01  --bmc1_dump_clauses_tptp                false
% 3.35/1.01  --bmc1_dump_unsat_core_tptp             false
% 3.35/1.01  --bmc1_dump_file                        -
% 3.35/1.01  --bmc1_ucm_expand_uc_limit              128
% 3.35/1.01  --bmc1_ucm_n_expand_iterations          6
% 3.35/1.01  --bmc1_ucm_extend_mode                  1
% 3.35/1.01  --bmc1_ucm_init_mode                    2
% 3.35/1.01  --bmc1_ucm_cone_mode                    none
% 3.35/1.01  --bmc1_ucm_reduced_relation_type        0
% 3.35/1.01  --bmc1_ucm_relax_model                  4
% 3.35/1.01  --bmc1_ucm_full_tr_after_sat            true
% 3.35/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 3.35/1.01  --bmc1_ucm_layered_model                none
% 3.35/1.01  --bmc1_ucm_max_lemma_size               10
% 3.35/1.01  
% 3.35/1.01  ------ AIG Options
% 3.35/1.01  
% 3.35/1.01  --aig_mode                              false
% 3.35/1.01  
% 3.35/1.01  ------ Instantiation Options
% 3.35/1.01  
% 3.35/1.01  --instantiation_flag                    true
% 3.35/1.01  --inst_sos_flag                         false
% 3.35/1.01  --inst_sos_phase                        true
% 3.35/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.35/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.35/1.01  --inst_lit_sel_side                     none
% 3.35/1.01  --inst_solver_per_active                1400
% 3.35/1.01  --inst_solver_calls_frac                1.
% 3.35/1.01  --inst_passive_queue_type               priority_queues
% 3.35/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.35/1.01  --inst_passive_queues_freq              [25;2]
% 3.35/1.01  --inst_dismatching                      true
% 3.35/1.01  --inst_eager_unprocessed_to_passive     true
% 3.35/1.01  --inst_prop_sim_given                   true
% 3.35/1.01  --inst_prop_sim_new                     false
% 3.35/1.01  --inst_subs_new                         false
% 3.35/1.01  --inst_eq_res_simp                      false
% 3.35/1.01  --inst_subs_given                       false
% 3.35/1.01  --inst_orphan_elimination               true
% 3.35/1.01  --inst_learning_loop_flag               true
% 3.35/1.01  --inst_learning_start                   3000
% 3.35/1.01  --inst_learning_factor                  2
% 3.35/1.01  --inst_start_prop_sim_after_learn       3
% 3.35/1.01  --inst_sel_renew                        solver
% 3.35/1.01  --inst_lit_activity_flag                true
% 3.35/1.01  --inst_restr_to_given                   false
% 3.35/1.01  --inst_activity_threshold               500
% 3.35/1.01  --inst_out_proof                        true
% 3.35/1.01  
% 3.35/1.01  ------ Resolution Options
% 3.35/1.01  
% 3.35/1.01  --resolution_flag                       false
% 3.35/1.01  --res_lit_sel                           adaptive
% 3.35/1.01  --res_lit_sel_side                      none
% 3.35/1.01  --res_ordering                          kbo
% 3.35/1.01  --res_to_prop_solver                    active
% 3.35/1.01  --res_prop_simpl_new                    false
% 3.35/1.01  --res_prop_simpl_given                  true
% 3.35/1.01  --res_passive_queue_type                priority_queues
% 3.35/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.35/1.01  --res_passive_queues_freq               [15;5]
% 3.35/1.01  --res_forward_subs                      full
% 3.35/1.01  --res_backward_subs                     full
% 3.35/1.01  --res_forward_subs_resolution           true
% 3.35/1.01  --res_backward_subs_resolution          true
% 3.35/1.01  --res_orphan_elimination                true
% 3.35/1.01  --res_time_limit                        2.
% 3.35/1.01  --res_out_proof                         true
% 3.35/1.01  
% 3.35/1.01  ------ Superposition Options
% 3.35/1.01  
% 3.35/1.01  --superposition_flag                    true
% 3.35/1.01  --sup_passive_queue_type                priority_queues
% 3.35/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.35/1.01  --sup_passive_queues_freq               [8;1;4]
% 3.35/1.01  --demod_completeness_check              fast
% 3.35/1.01  --demod_use_ground                      true
% 3.35/1.01  --sup_to_prop_solver                    passive
% 3.35/1.01  --sup_prop_simpl_new                    true
% 3.35/1.01  --sup_prop_simpl_given                  true
% 3.35/1.01  --sup_fun_splitting                     false
% 3.35/1.01  --sup_smt_interval                      50000
% 3.35/1.01  
% 3.35/1.01  ------ Superposition Simplification Setup
% 3.35/1.01  
% 3.35/1.01  --sup_indices_passive                   []
% 3.35/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.35/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 3.35/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_full_bw                           [BwDemod]
% 3.35/1.01  --sup_immed_triv                        [TrivRules]
% 3.35/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.35/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_immed_bw_main                     []
% 3.35/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.35/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 3.35/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.35/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.35/1.01  
% 3.35/1.01  ------ Combination Options
% 3.35/1.01  
% 3.35/1.01  --comb_res_mult                         3
% 3.35/1.01  --comb_sup_mult                         2
% 3.35/1.01  --comb_inst_mult                        10
% 3.35/1.01  
% 3.35/1.01  ------ Debug Options
% 3.35/1.01  
% 3.35/1.01  --dbg_backtrace                         false
% 3.35/1.01  --dbg_dump_prop_clauses                 false
% 3.35/1.01  --dbg_dump_prop_clauses_file            -
% 3.35/1.01  --dbg_out_stat                          false
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  ------ Proving...
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  % SZS status Theorem for theBenchmark.p
% 3.35/1.01  
% 3.35/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 3.35/1.01  
% 3.35/1.01  fof(f10,axiom,(
% 3.35/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f22,plain,(
% 3.35/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(ennf_transformation,[],[f10])).
% 3.35/1.01  
% 3.35/1.01  fof(f23,plain,(
% 3.35/1.01    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(flattening,[],[f22])).
% 3.35/1.01  
% 3.35/1.01  fof(f32,plain,(
% 3.35/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(nnf_transformation,[],[f23])).
% 3.35/1.01  
% 3.35/1.01  fof(f52,plain,(
% 3.35/1.01    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f32])).
% 3.35/1.01  
% 3.35/1.01  fof(f11,conjecture,(
% 3.35/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ~(! [X5] : (m1_subset_1(X5,X0) => ~(k1_funct_1(X3,X5) = X4 & r2_hidden(X5,X2))) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f12,negated_conjecture,(
% 3.35/1.01    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ~(! [X5] : (m1_subset_1(X5,X0) => ~(k1_funct_1(X3,X5) = X4 & r2_hidden(X5,X2))) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))))),
% 3.35/1.01    inference(negated_conjecture,[],[f11])).
% 3.35/1.01  
% 3.35/1.01  fof(f24,plain,(
% 3.35/1.01    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : ((k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2)) | ~m1_subset_1(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 3.35/1.01    inference(ennf_transformation,[],[f12])).
% 3.35/1.01  
% 3.35/1.01  fof(f25,plain,(
% 3.35/1.01    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~m1_subset_1(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 3.35/1.01    inference(flattening,[],[f24])).
% 3.35/1.01  
% 3.35/1.01  fof(f34,plain,(
% 3.35/1.01    ( ! [X2,X0,X3,X1] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~m1_subset_1(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) => (! [X5] : (k1_funct_1(X3,X5) != sK7 | ~r2_hidden(X5,X2) | ~m1_subset_1(X5,X0)) & r2_hidden(sK7,k7_relset_1(X0,X1,X3,X2)))) )),
% 3.35/1.01    introduced(choice_axiom,[])).
% 3.35/1.01  
% 3.35/1.01  fof(f33,plain,(
% 3.35/1.01    ? [X0,X1,X2,X3] : (? [X4] : (! [X5] : (k1_funct_1(X3,X5) != X4 | ~r2_hidden(X5,X2) | ~m1_subset_1(X5,X0)) & r2_hidden(X4,k7_relset_1(X0,X1,X3,X2))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (! [X5] : (k1_funct_1(sK6,X5) != X4 | ~r2_hidden(X5,sK5) | ~m1_subset_1(X5,sK3)) & r2_hidden(X4,k7_relset_1(sK3,sK4,sK6,sK5))) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(sK6,sK3,sK4) & v1_funct_1(sK6))),
% 3.35/1.01    introduced(choice_axiom,[])).
% 3.35/1.01  
% 3.35/1.01  fof(f35,plain,(
% 3.35/1.01    (! [X5] : (k1_funct_1(sK6,X5) != sK7 | ~r2_hidden(X5,sK5) | ~m1_subset_1(X5,sK3)) & r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5))) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(sK6,sK3,sK4) & v1_funct_1(sK6)),
% 3.35/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6,sK7])],[f25,f34,f33])).
% 3.35/1.01  
% 3.35/1.01  fof(f59,plain,(
% 3.35/1.01    v1_funct_2(sK6,sK3,sK4)),
% 3.35/1.01    inference(cnf_transformation,[],[f35])).
% 3.35/1.01  
% 3.35/1.01  fof(f60,plain,(
% 3.35/1.01    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 3.35/1.01    inference(cnf_transformation,[],[f35])).
% 3.35/1.01  
% 3.35/1.01  fof(f8,axiom,(
% 3.35/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f20,plain,(
% 3.35/1.01    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(ennf_transformation,[],[f8])).
% 3.35/1.01  
% 3.35/1.01  fof(f50,plain,(
% 3.35/1.01    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f20])).
% 3.35/1.01  
% 3.35/1.01  fof(f4,axiom,(
% 3.35/1.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1,X2] : (k9_relat_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (k1_funct_1(X0,X4) = X3 & r2_hidden(X4,X1) & r2_hidden(X4,k1_relat_1(X0))))))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f15,plain,(
% 3.35/1.01    ! [X0] : (! [X1,X2] : (k9_relat_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (k1_funct_1(X0,X4) = X3 & r2_hidden(X4,X1) & r2_hidden(X4,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.35/1.01    inference(ennf_transformation,[],[f4])).
% 3.35/1.01  
% 3.35/1.01  fof(f16,plain,(
% 3.35/1.01    ! [X0] : (! [X1,X2] : (k9_relat_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (k1_funct_1(X0,X4) = X3 & r2_hidden(X4,X1) & r2_hidden(X4,k1_relat_1(X0))))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.35/1.01    inference(flattening,[],[f15])).
% 3.35/1.01  
% 3.35/1.01  fof(f26,plain,(
% 3.35/1.01    ! [X0] : (! [X1,X2] : ((k9_relat_1(X0,X1) = X2 | ? [X3] : ((! [X4] : (k1_funct_1(X0,X4) != X3 | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(X3,X2)) & (? [X4] : (k1_funct_1(X0,X4) = X3 & r2_hidden(X4,X1) & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ! [X4] : (k1_funct_1(X0,X4) != X3 | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0)))) & (? [X4] : (k1_funct_1(X0,X4) = X3 & r2_hidden(X4,X1) & r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(X3,X2))) | k9_relat_1(X0,X1) != X2)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.35/1.01    inference(nnf_transformation,[],[f16])).
% 3.35/1.01  
% 3.35/1.01  fof(f27,plain,(
% 3.35/1.01    ! [X0] : (! [X1,X2] : ((k9_relat_1(X0,X1) = X2 | ? [X3] : ((! [X4] : (k1_funct_1(X0,X4) != X3 | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(X3,X2)) & (? [X5] : (k1_funct_1(X0,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X5,k1_relat_1(X0))) | r2_hidden(X3,X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (k1_funct_1(X0,X7) != X6 | ~r2_hidden(X7,X1) | ~r2_hidden(X7,k1_relat_1(X0)))) & (? [X8] : (k1_funct_1(X0,X8) = X6 & r2_hidden(X8,X1) & r2_hidden(X8,k1_relat_1(X0))) | ~r2_hidden(X6,X2))) | k9_relat_1(X0,X1) != X2)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.35/1.01    inference(rectify,[],[f26])).
% 3.35/1.01  
% 3.35/1.01  fof(f30,plain,(
% 3.35/1.01    ! [X6,X1,X0] : (? [X8] : (k1_funct_1(X0,X8) = X6 & r2_hidden(X8,X1) & r2_hidden(X8,k1_relat_1(X0))) => (k1_funct_1(X0,sK2(X0,X1,X6)) = X6 & r2_hidden(sK2(X0,X1,X6),X1) & r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0))))),
% 3.35/1.01    introduced(choice_axiom,[])).
% 3.35/1.01  
% 3.35/1.01  fof(f29,plain,(
% 3.35/1.01    ( ! [X3] : (! [X2,X1,X0] : (? [X5] : (k1_funct_1(X0,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X5,k1_relat_1(X0))) => (k1_funct_1(X0,sK1(X0,X1,X2)) = X3 & r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),k1_relat_1(X0))))) )),
% 3.35/1.01    introduced(choice_axiom,[])).
% 3.35/1.01  
% 3.35/1.01  fof(f28,plain,(
% 3.35/1.01    ! [X2,X1,X0] : (? [X3] : ((! [X4] : (k1_funct_1(X0,X4) != X3 | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(X3,X2)) & (? [X5] : (k1_funct_1(X0,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X5,k1_relat_1(X0))) | r2_hidden(X3,X2))) => ((! [X4] : (k1_funct_1(X0,X4) != sK0(X0,X1,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (? [X5] : (k1_funct_1(X0,X5) = sK0(X0,X1,X2) & r2_hidden(X5,X1) & r2_hidden(X5,k1_relat_1(X0))) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.35/1.01    introduced(choice_axiom,[])).
% 3.35/1.01  
% 3.35/1.01  fof(f31,plain,(
% 3.35/1.01    ! [X0] : (! [X1,X2] : ((k9_relat_1(X0,X1) = X2 | ((! [X4] : (k1_funct_1(X0,X4) != sK0(X0,X1,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((k1_funct_1(X0,sK1(X0,X1,X2)) = sK0(X0,X1,X2) & r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),k1_relat_1(X0))) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (k1_funct_1(X0,X7) != X6 | ~r2_hidden(X7,X1) | ~r2_hidden(X7,k1_relat_1(X0)))) & ((k1_funct_1(X0,sK2(X0,X1,X6)) = X6 & r2_hidden(sK2(X0,X1,X6),X1) & r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0))) | ~r2_hidden(X6,X2))) | k9_relat_1(X0,X1) != X2)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.35/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f27,f30,f29,f28])).
% 3.35/1.01  
% 3.35/1.01  fof(f39,plain,(
% 3.35/1.01    ( ! [X6,X2,X0,X1] : (r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0)) | ~r2_hidden(X6,X2) | k9_relat_1(X0,X1) != X2 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f31])).
% 3.35/1.01  
% 3.35/1.01  fof(f67,plain,(
% 3.35/1.01    ( ! [X6,X0,X1] : (r2_hidden(sK2(X0,X1,X6),k1_relat_1(X0)) | ~r2_hidden(X6,k9_relat_1(X0,X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(equality_resolution,[],[f39])).
% 3.35/1.01  
% 3.35/1.01  fof(f58,plain,(
% 3.35/1.01    v1_funct_1(sK6)),
% 3.35/1.01    inference(cnf_transformation,[],[f35])).
% 3.35/1.01  
% 3.35/1.01  fof(f6,axiom,(
% 3.35/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f18,plain,(
% 3.35/1.01    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(ennf_transformation,[],[f6])).
% 3.35/1.01  
% 3.35/1.01  fof(f48,plain,(
% 3.35/1.01    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f18])).
% 3.35/1.01  
% 3.35/1.01  fof(f61,plain,(
% 3.35/1.01    r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5))),
% 3.35/1.01    inference(cnf_transformation,[],[f35])).
% 3.35/1.01  
% 3.35/1.01  fof(f2,axiom,(
% 3.35/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f13,plain,(
% 3.35/1.01    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.35/1.01    inference(ennf_transformation,[],[f2])).
% 3.35/1.01  
% 3.35/1.01  fof(f37,plain,(
% 3.35/1.01    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f13])).
% 3.35/1.01  
% 3.35/1.01  fof(f7,axiom,(
% 3.35/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f19,plain,(
% 3.35/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(ennf_transformation,[],[f7])).
% 3.35/1.01  
% 3.35/1.01  fof(f49,plain,(
% 3.35/1.01    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_relset_1(X0,X1,X2,X3),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f19])).
% 3.35/1.01  
% 3.35/1.01  fof(f1,axiom,(
% 3.35/1.01    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f36,plain,(
% 3.35/1.01    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f1])).
% 3.35/1.01  
% 3.35/1.01  fof(f5,axiom,(
% 3.35/1.01    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f17,plain,(
% 3.35/1.01    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.35/1.01    inference(ennf_transformation,[],[f5])).
% 3.35/1.01  
% 3.35/1.01  fof(f47,plain,(
% 3.35/1.01    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f17])).
% 3.35/1.01  
% 3.35/1.01  fof(f3,axiom,(
% 3.35/1.01    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f14,plain,(
% 3.35/1.01    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 3.35/1.01    inference(ennf_transformation,[],[f3])).
% 3.35/1.01  
% 3.35/1.01  fof(f38,plain,(
% 3.35/1.01    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f14])).
% 3.35/1.01  
% 3.35/1.01  fof(f9,axiom,(
% 3.35/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 3.35/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.35/1.01  
% 3.35/1.01  fof(f21,plain,(
% 3.35/1.01    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.35/1.01    inference(ennf_transformation,[],[f9])).
% 3.35/1.01  
% 3.35/1.01  fof(f51,plain,(
% 3.35/1.01    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.35/1.01    inference(cnf_transformation,[],[f21])).
% 3.35/1.01  
% 3.35/1.01  fof(f41,plain,(
% 3.35/1.01    ( ! [X6,X2,X0,X1] : (k1_funct_1(X0,sK2(X0,X1,X6)) = X6 | ~r2_hidden(X6,X2) | k9_relat_1(X0,X1) != X2 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f31])).
% 3.35/1.01  
% 3.35/1.01  fof(f65,plain,(
% 3.35/1.01    ( ! [X6,X0,X1] : (k1_funct_1(X0,sK2(X0,X1,X6)) = X6 | ~r2_hidden(X6,k9_relat_1(X0,X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(equality_resolution,[],[f41])).
% 3.35/1.01  
% 3.35/1.01  fof(f62,plain,(
% 3.35/1.01    ( ! [X5] : (k1_funct_1(sK6,X5) != sK7 | ~r2_hidden(X5,sK5) | ~m1_subset_1(X5,sK3)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f35])).
% 3.35/1.01  
% 3.35/1.01  fof(f40,plain,(
% 3.35/1.01    ( ! [X6,X2,X0,X1] : (r2_hidden(sK2(X0,X1,X6),X1) | ~r2_hidden(X6,X2) | k9_relat_1(X0,X1) != X2 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(cnf_transformation,[],[f31])).
% 3.35/1.01  
% 3.35/1.01  fof(f66,plain,(
% 3.35/1.01    ( ! [X6,X0,X1] : (r2_hidden(sK2(X0,X1,X6),X1) | ~r2_hidden(X6,k9_relat_1(X0,X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.35/1.01    inference(equality_resolution,[],[f40])).
% 3.35/1.01  
% 3.35/1.01  cnf(c_21,plain,
% 3.35/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 3.35/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | k1_relset_1(X1,X2,X0) = X1
% 3.35/1.01      | k1_xboole_0 = X2 ),
% 3.35/1.01      inference(cnf_transformation,[],[f52]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_25,negated_conjecture,
% 3.35/1.01      ( v1_funct_2(sK6,sK3,sK4) ),
% 3.35/1.01      inference(cnf_transformation,[],[f59]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_706,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | k1_relset_1(X1,X2,X0) = X1
% 3.35/1.01      | sK4 != X2
% 3.35/1.01      | sK3 != X1
% 3.35/1.01      | sK6 != X0
% 3.35/1.01      | k1_xboole_0 = X2 ),
% 3.35/1.01      inference(resolution_lifted,[status(thm)],[c_21,c_25]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_707,plain,
% 3.35/1.01      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 3.35/1.01      | k1_relset_1(sK3,sK4,sK6) = sK3
% 3.35/1.01      | k1_xboole_0 = sK4 ),
% 3.35/1.01      inference(unflattening,[status(thm)],[c_706]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_24,negated_conjecture,
% 3.35/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 3.35/1.01      inference(cnf_transformation,[],[f60]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_709,plain,
% 3.35/1.01      ( k1_relset_1(sK3,sK4,sK6) = sK3 | k1_xboole_0 = sK4 ),
% 3.35/1.01      inference(global_propositional_subsumption,
% 3.35/1.01                [status(thm)],
% 3.35/1.01                [c_707,c_24]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1396,plain,
% 3.35/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_14,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.35/1.01      inference(cnf_transformation,[],[f50]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1400,plain,
% 3.35/1.01      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.35/1.01      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1775,plain,
% 3.35/1.01      ( k1_relset_1(sK3,sK4,sK6) = k1_relat_1(sK6) ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_1396,c_1400]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1982,plain,
% 3.35/1.01      ( k1_relat_1(sK6) = sK3 | sK4 = k1_xboole_0 ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_709,c_1775]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_10,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | r2_hidden(sK2(X1,X2,X0),k1_relat_1(X1))
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | ~ v1_funct_1(X1) ),
% 3.35/1.01      inference(cnf_transformation,[],[f67]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_26,negated_conjecture,
% 3.35/1.01      ( v1_funct_1(sK6) ),
% 3.35/1.01      inference(cnf_transformation,[],[f58]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_409,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | r2_hidden(sK2(X1,X2,X0),k1_relat_1(X1))
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | sK6 != X1 ),
% 3.35/1.01      inference(resolution_lifted,[status(thm)],[c_10,c_26]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_410,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6))
% 3.35/1.01      | ~ v1_relat_1(sK6) ),
% 3.35/1.01      inference(unflattening,[status(thm)],[c_409]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1389,plain,
% 3.35/1.01      ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
% 3.35/1.01      | v1_relat_1(sK6) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_410]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_29,plain,
% 3.35/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_411,plain,
% 3.35/1.01      ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
% 3.35/1.01      | v1_relat_1(sK6) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_410]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_12,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | v1_relat_1(X0) ),
% 3.35/1.01      inference(cnf_transformation,[],[f48]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1573,plain,
% 3.35/1.01      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 3.35/1.01      | v1_relat_1(sK6) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_12]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1574,plain,
% 3.35/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top
% 3.35/1.01      | v1_relat_1(sK6) = iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_1573]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1649,plain,
% 3.35/1.01      ( r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top
% 3.35/1.01      | r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top ),
% 3.35/1.01      inference(global_propositional_subsumption,
% 3.35/1.01                [status(thm)],
% 3.35/1.01                [c_1389,c_29,c_411,c_1574]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1650,plain,
% 3.35/1.01      ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),k1_relat_1(sK6)) = iProver_top ),
% 3.35/1.01      inference(renaming,[status(thm)],[c_1649]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2306,plain,
% 3.35/1.01      ( sK4 = k1_xboole_0
% 3.35/1.01      | r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),sK3) = iProver_top ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_1982,c_1650]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_23,negated_conjecture,
% 3.35/1.01      ( r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) ),
% 3.35/1.01      inference(cnf_transformation,[],[f61]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1026,plain,( X0 = X0 ),theory(equality) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1055,plain,
% 3.35/1.01      ( k1_xboole_0 = k1_xboole_0 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1026]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.35/1.01      | ~ r2_hidden(X2,X0)
% 3.35/1.01      | r2_hidden(X2,X1) ),
% 3.35/1.01      inference(cnf_transformation,[],[f37]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1582,plain,
% 3.35/1.01      ( ~ m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(X0))
% 3.35/1.01      | r2_hidden(sK7,X0)
% 3.35/1.01      | ~ r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1662,plain,
% 3.35/1.01      ( ~ m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(sK4))
% 3.35/1.01      | ~ r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5))
% 3.35/1.01      | r2_hidden(sK7,sK4) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1582]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_13,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | m1_subset_1(k7_relset_1(X1,X2,X0,X3),k1_zfmisc_1(X2)) ),
% 3.35/1.01      inference(cnf_transformation,[],[f49]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1592,plain,
% 3.35/1.01      ( m1_subset_1(k7_relset_1(sK3,sK4,sK6,X0),k1_zfmisc_1(sK4))
% 3.35/1.01      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_13]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1663,plain,
% 3.35/1.01      ( m1_subset_1(k7_relset_1(sK3,sK4,sK6,sK5),k1_zfmisc_1(sK4))
% 3.35/1.01      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1592]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1669,plain,
% 3.35/1.01      ( sK7 = sK7 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1026]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1027,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1970,plain,
% 3.35/1.01      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1027]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1971,plain,
% 3.35/1.01      ( sK4 != k1_xboole_0
% 3.35/1.01      | k1_xboole_0 = sK4
% 3.35/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1970]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1028,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.35/1.01      theory(equality) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1755,plain,
% 3.35/1.01      ( r2_hidden(X0,X1) | ~ r2_hidden(sK7,sK4) | X1 != sK4 | X0 != sK7 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1028]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2780,plain,
% 3.35/1.01      ( r2_hidden(sK7,X0)
% 3.35/1.01      | ~ r2_hidden(sK7,sK4)
% 3.35/1.01      | X0 != sK4
% 3.35/1.01      | sK7 != sK7 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_1755]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2782,plain,
% 3.35/1.01      ( ~ r2_hidden(sK7,sK4)
% 3.35/1.01      | r2_hidden(sK7,k1_xboole_0)
% 3.35/1.01      | sK7 != sK7
% 3.35/1.01      | k1_xboole_0 != sK4 ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_2780]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_0,plain,
% 3.35/1.01      ( r1_tarski(k1_xboole_0,X0) ),
% 3.35/1.01      inference(cnf_transformation,[],[f36]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_11,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 3.35/1.01      inference(cnf_transformation,[],[f47]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_306,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 3.35/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_11]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_307,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 3.35/1.01      inference(unflattening,[status(thm)],[c_306]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_5551,plain,
% 3.35/1.01      ( ~ r2_hidden(sK7,k1_xboole_0) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_307]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_6063,plain,
% 3.35/1.01      ( r2_hidden(X0,k9_relat_1(sK6,X1)) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),sK3) = iProver_top ),
% 3.35/1.01      inference(global_propositional_subsumption,
% 3.35/1.01                [status(thm)],
% 3.35/1.01                [c_2306,c_24,c_23,c_1055,c_1662,c_1663,c_1669,c_1971,
% 3.35/1.01                 c_2782,c_5551]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2,plain,
% 3.35/1.01      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.35/1.01      inference(cnf_transformation,[],[f38]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1403,plain,
% 3.35/1.01      ( m1_subset_1(X0,X1) = iProver_top
% 3.35/1.01      | r2_hidden(X0,X1) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_6070,plain,
% 3.35/1.01      ( m1_subset_1(sK2(sK6,X0,X1),sK3) = iProver_top
% 3.35/1.01      | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_6063,c_1403]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_15,plain,
% 3.35/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.35/1.01      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 3.35/1.01      inference(cnf_transformation,[],[f51]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1399,plain,
% 3.35/1.01      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 3.35/1.01      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1912,plain,
% 3.35/1.01      ( k7_relset_1(sK3,sK4,sK6,X0) = k9_relat_1(sK6,X0) ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_1396,c_1399]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1397,plain,
% 3.35/1.01      ( r2_hidden(sK7,k7_relset_1(sK3,sK4,sK6,sK5)) = iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2057,plain,
% 3.35/1.01      ( r2_hidden(sK7,k9_relat_1(sK6,sK5)) = iProver_top ),
% 3.35/1.01      inference(demodulation,[status(thm)],[c_1912,c_1397]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_8,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | ~ v1_funct_1(X1)
% 3.35/1.01      | k1_funct_1(X1,sK2(X1,X2,X0)) = X0 ),
% 3.35/1.01      inference(cnf_transformation,[],[f65]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_439,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | k1_funct_1(X1,sK2(X1,X2,X0)) = X0
% 3.35/1.01      | sK6 != X1 ),
% 3.35/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_26]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_440,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
% 3.35/1.01      | ~ v1_relat_1(sK6)
% 3.35/1.01      | k1_funct_1(sK6,sK2(sK6,X1,X0)) = X0 ),
% 3.35/1.01      inference(unflattening,[status(thm)],[c_439]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1387,plain,
% 3.35/1.01      ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
% 3.35/1.01      | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
% 3.35/1.01      | v1_relat_1(sK6) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_440]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_441,plain,
% 3.35/1.01      ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
% 3.35/1.01      | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
% 3.35/1.01      | v1_relat_1(sK6) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_440]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1612,plain,
% 3.35/1.01      ( r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top
% 3.35/1.01      | k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1 ),
% 3.35/1.01      inference(global_propositional_subsumption,
% 3.35/1.01                [status(thm)],
% 3.35/1.01                [c_1387,c_29,c_441,c_1574]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1613,plain,
% 3.35/1.01      ( k1_funct_1(sK6,sK2(sK6,X0,X1)) = X1
% 3.35/1.01      | r2_hidden(X1,k9_relat_1(sK6,X0)) != iProver_top ),
% 3.35/1.01      inference(renaming,[status(thm)],[c_1612]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2067,plain,
% 3.35/1.01      ( k1_funct_1(sK6,sK2(sK6,sK5,sK7)) = sK7 ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_2057,c_1613]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_22,negated_conjecture,
% 3.35/1.01      ( ~ m1_subset_1(X0,sK3)
% 3.35/1.01      | ~ r2_hidden(X0,sK5)
% 3.35/1.01      | k1_funct_1(sK6,X0) != sK7 ),
% 3.35/1.01      inference(cnf_transformation,[],[f62]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_1398,plain,
% 3.35/1.01      ( k1_funct_1(sK6,X0) != sK7
% 3.35/1.01      | m1_subset_1(X0,sK3) != iProver_top
% 3.35/1.01      | r2_hidden(X0,sK5) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2716,plain,
% 3.35/1.01      ( m1_subset_1(sK2(sK6,sK5,sK7),sK3) != iProver_top
% 3.35/1.01      | r2_hidden(sK2(sK6,sK5,sK7),sK5) != iProver_top ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_2067,c_1398]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_6172,plain,
% 3.35/1.01      ( r2_hidden(sK2(sK6,sK5,sK7),sK5) != iProver_top
% 3.35/1.01      | r2_hidden(sK7,k9_relat_1(sK6,sK5)) != iProver_top ),
% 3.35/1.01      inference(superposition,[status(thm)],[c_6070,c_2716]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_9,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | r2_hidden(sK2(X1,X2,X0),X2)
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | ~ v1_funct_1(X1) ),
% 3.35/1.01      inference(cnf_transformation,[],[f66]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_424,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(X1,X2))
% 3.35/1.01      | r2_hidden(sK2(X1,X2,X0),X2)
% 3.35/1.01      | ~ v1_relat_1(X1)
% 3.35/1.01      | sK6 != X1 ),
% 3.35/1.01      inference(resolution_lifted,[status(thm)],[c_9,c_26]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_425,plain,
% 3.35/1.01      ( ~ r2_hidden(X0,k9_relat_1(sK6,X1))
% 3.35/1.01      | r2_hidden(sK2(sK6,X1,X0),X1)
% 3.35/1.01      | ~ v1_relat_1(sK6) ),
% 3.35/1.01      inference(unflattening,[status(thm)],[c_424]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_2108,plain,
% 3.35/1.01      ( r2_hidden(sK2(sK6,X0,sK7),X0)
% 3.35/1.01      | ~ r2_hidden(sK7,k9_relat_1(sK6,X0))
% 3.35/1.01      | ~ v1_relat_1(sK6) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_425]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_4894,plain,
% 3.35/1.01      ( r2_hidden(sK2(sK6,sK5,sK7),sK5)
% 3.35/1.01      | ~ r2_hidden(sK7,k9_relat_1(sK6,sK5))
% 3.35/1.01      | ~ v1_relat_1(sK6) ),
% 3.35/1.01      inference(instantiation,[status(thm)],[c_2108]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(c_4901,plain,
% 3.35/1.01      ( r2_hidden(sK2(sK6,sK5,sK7),sK5) = iProver_top
% 3.35/1.01      | r2_hidden(sK7,k9_relat_1(sK6,sK5)) != iProver_top
% 3.35/1.01      | v1_relat_1(sK6) != iProver_top ),
% 3.35/1.01      inference(predicate_to_equality,[status(thm)],[c_4894]) ).
% 3.35/1.01  
% 3.35/1.01  cnf(contradiction,plain,
% 3.35/1.01      ( $false ),
% 3.35/1.01      inference(minisat,[status(thm)],[c_6172,c_4901,c_2057,c_1574,c_29]) ).
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.35/1.01  
% 3.35/1.01  ------                               Statistics
% 3.35/1.01  
% 3.35/1.01  ------ General
% 3.35/1.01  
% 3.35/1.01  abstr_ref_over_cycles:                  0
% 3.35/1.01  abstr_ref_under_cycles:                 0
% 3.35/1.01  gc_basic_clause_elim:                   0
% 3.35/1.01  forced_gc_time:                         0
% 3.35/1.01  parsing_time:                           0.011
% 3.35/1.01  unif_index_cands_time:                  0.
% 3.35/1.01  unif_index_add_time:                    0.
% 3.35/1.01  orderings_time:                         0.
% 3.35/1.01  out_proof_time:                         0.008
% 3.35/1.01  total_time:                             0.244
% 3.35/1.01  num_of_symbols:                         53
% 3.35/1.01  num_of_terms:                           6143
% 3.35/1.01  
% 3.35/1.01  ------ Preprocessing
% 3.35/1.01  
% 3.35/1.01  num_of_splits:                          0
% 3.35/1.01  num_of_split_atoms:                     0
% 3.35/1.01  num_of_reused_defs:                     0
% 3.35/1.01  num_eq_ax_congr_red:                    30
% 3.35/1.01  num_of_sem_filtered_clauses:            1
% 3.35/1.01  num_of_subtypes:                        0
% 3.35/1.01  monotx_restored_types:                  0
% 3.35/1.01  sat_num_of_epr_types:                   0
% 3.35/1.01  sat_num_of_non_cyclic_types:            0
% 3.35/1.01  sat_guarded_non_collapsed_types:        0
% 3.35/1.01  num_pure_diseq_elim:                    0
% 3.35/1.01  simp_replaced_by:                       0
% 3.35/1.01  res_preprocessed:                       121
% 3.35/1.01  prep_upred:                             0
% 3.35/1.01  prep_unflattend:                        53
% 3.35/1.01  smt_new_axioms:                         0
% 3.35/1.01  pred_elim_cands:                        3
% 3.35/1.01  pred_elim:                              3
% 3.35/1.01  pred_elim_cl:                           6
% 3.35/1.01  pred_elim_cycles:                       6
% 3.35/1.01  merged_defs:                            0
% 3.35/1.01  merged_defs_ncl:                        0
% 3.35/1.01  bin_hyper_res:                          0
% 3.35/1.01  prep_cycles:                            4
% 3.35/1.01  pred_elim_time:                         0.012
% 3.35/1.01  splitting_time:                         0.
% 3.35/1.01  sem_filter_time:                        0.
% 3.35/1.01  monotx_time:                            0.001
% 3.35/1.01  subtype_inf_time:                       0.
% 3.35/1.01  
% 3.35/1.01  ------ Problem properties
% 3.35/1.01  
% 3.35/1.01  clauses:                                21
% 3.35/1.01  conjectures:                            3
% 3.35/1.01  epr:                                    2
% 3.35/1.01  horn:                                   16
% 3.35/1.01  ground:                                 5
% 3.35/1.01  unary:                                  3
% 3.35/1.01  binary:                                 6
% 3.35/1.01  lits:                                   59
% 3.35/1.01  lits_eq:                                17
% 3.35/1.01  fd_pure:                                0
% 3.35/1.01  fd_pseudo:                              0
% 3.35/1.01  fd_cond:                                0
% 3.35/1.01  fd_pseudo_cond:                         4
% 3.35/1.01  ac_symbols:                             0
% 3.35/1.01  
% 3.35/1.01  ------ Propositional Solver
% 3.35/1.01  
% 3.35/1.01  prop_solver_calls:                      27
% 3.35/1.01  prop_fast_solver_calls:                 956
% 3.35/1.01  smt_solver_calls:                       0
% 3.35/1.01  smt_fast_solver_calls:                  0
% 3.35/1.01  prop_num_of_clauses:                    2198
% 3.35/1.01  prop_preprocess_simplified:             5502
% 3.35/1.01  prop_fo_subsumed:                       13
% 3.35/1.01  prop_solver_time:                       0.
% 3.35/1.01  smt_solver_time:                        0.
% 3.35/1.01  smt_fast_solver_time:                   0.
% 3.35/1.01  prop_fast_solver_time:                  0.
% 3.35/1.01  prop_unsat_core_time:                   0.
% 3.35/1.01  
% 3.35/1.01  ------ QBF
% 3.35/1.01  
% 3.35/1.01  qbf_q_res:                              0
% 3.35/1.01  qbf_num_tautologies:                    0
% 3.35/1.01  qbf_prep_cycles:                        0
% 3.35/1.01  
% 3.35/1.01  ------ BMC1
% 3.35/1.01  
% 3.35/1.01  bmc1_current_bound:                     -1
% 3.35/1.01  bmc1_last_solved_bound:                 -1
% 3.35/1.01  bmc1_unsat_core_size:                   -1
% 3.35/1.01  bmc1_unsat_core_parents_size:           -1
% 3.35/1.01  bmc1_merge_next_fun:                    0
% 3.35/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.35/1.01  
% 3.35/1.01  ------ Instantiation
% 3.35/1.01  
% 3.35/1.01  inst_num_of_clauses:                    500
% 3.35/1.01  inst_num_in_passive:                    57
% 3.35/1.01  inst_num_in_active:                     257
% 3.35/1.01  inst_num_in_unprocessed:                186
% 3.35/1.01  inst_num_of_loops:                      320
% 3.35/1.01  inst_num_of_learning_restarts:          0
% 3.35/1.01  inst_num_moves_active_passive:          60
% 3.35/1.01  inst_lit_activity:                      0
% 3.35/1.01  inst_lit_activity_moves:                0
% 3.35/1.01  inst_num_tautologies:                   0
% 3.35/1.01  inst_num_prop_implied:                  0
% 3.35/1.01  inst_num_existing_simplified:           0
% 3.35/1.01  inst_num_eq_res_simplified:             0
% 3.35/1.01  inst_num_child_elim:                    0
% 3.35/1.01  inst_num_of_dismatching_blockings:      205
% 3.35/1.01  inst_num_of_non_proper_insts:           434
% 3.35/1.01  inst_num_of_duplicates:                 0
% 3.35/1.01  inst_inst_num_from_inst_to_res:         0
% 3.35/1.01  inst_dismatching_checking_time:         0.
% 3.35/1.01  
% 3.35/1.01  ------ Resolution
% 3.35/1.01  
% 3.35/1.01  res_num_of_clauses:                     0
% 3.35/1.01  res_num_in_passive:                     0
% 3.35/1.01  res_num_in_active:                      0
% 3.35/1.01  res_num_of_loops:                       125
% 3.35/1.01  res_forward_subset_subsumed:            22
% 3.35/1.01  res_backward_subset_subsumed:           0
% 3.35/1.01  res_forward_subsumed:                   0
% 3.35/1.01  res_backward_subsumed:                  0
% 3.35/1.01  res_forward_subsumption_resolution:     0
% 3.35/1.01  res_backward_subsumption_resolution:    0
% 3.35/1.01  res_clause_to_clause_subsumption:       379
% 3.35/1.01  res_orphan_elimination:                 0
% 3.35/1.01  res_tautology_del:                      65
% 3.35/1.01  res_num_eq_res_simplified:              0
% 3.35/1.01  res_num_sel_changes:                    0
% 3.35/1.01  res_moves_from_active_to_pass:          0
% 3.35/1.01  
% 3.35/1.01  ------ Superposition
% 3.35/1.01  
% 3.35/1.01  sup_time_total:                         0.
% 3.35/1.01  sup_time_generating:                    0.
% 3.35/1.01  sup_time_sim_full:                      0.
% 3.35/1.01  sup_time_sim_immed:                     0.
% 3.35/1.01  
% 3.35/1.01  sup_num_of_clauses:                     215
% 3.35/1.01  sup_num_in_active:                      61
% 3.35/1.01  sup_num_in_passive:                     154
% 3.35/1.01  sup_num_of_loops:                       62
% 3.35/1.01  sup_fw_superposition:                   142
% 3.35/1.01  sup_bw_superposition:                   76
% 3.35/1.01  sup_immediate_simplified:               14
% 3.35/1.01  sup_given_eliminated:                   0
% 3.35/1.01  comparisons_done:                       0
% 3.35/1.01  comparisons_avoided:                    5
% 3.35/1.01  
% 3.35/1.01  ------ Simplifications
% 3.35/1.01  
% 3.35/1.01  
% 3.35/1.01  sim_fw_subset_subsumed:                 10
% 3.35/1.01  sim_bw_subset_subsumed:                 0
% 3.35/1.01  sim_fw_subsumed:                        1
% 3.35/1.01  sim_bw_subsumed:                        3
% 3.35/1.01  sim_fw_subsumption_res:                 0
% 3.35/1.01  sim_bw_subsumption_res:                 0
% 3.35/1.01  sim_tautology_del:                      1
% 3.35/1.01  sim_eq_tautology_del:                   0
% 3.35/1.01  sim_eq_res_simp:                        0
% 3.35/1.01  sim_fw_demodulated:                     0
% 3.35/1.01  sim_bw_demodulated:                     2
% 3.35/1.01  sim_light_normalised:                   0
% 3.35/1.01  sim_joinable_taut:                      0
% 3.35/1.01  sim_joinable_simp:                      0
% 3.35/1.01  sim_ac_normalised:                      0
% 3.35/1.01  sim_smt_subsumption:                    0
% 3.35/1.01  
%------------------------------------------------------------------------------
