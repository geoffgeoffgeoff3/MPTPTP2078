%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:15 EST 2020

% Result     : Theorem 2.86s
% Output     : CNFRefutation 2.86s
% Verified   : 
% Statistics : Number of formulae       :  153 ( 978 expanded)
%              Number of clauses        :   81 ( 279 expanded)
%              Number of leaves         :   23 ( 216 expanded)
%              Depth                    :   22
%              Number of atoms          :  493 (3501 expanded)
%              Number of equality atoms :  225 (1254 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4] :
                  ~ ( k3_mcart_1(X2,X3,X4) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f13])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X4,X3,X2] :
            ( k3_mcart_1(X2,X3,X4) != sK3(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK3(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0] :
      ( ( ! [X2,X3,X4] :
            ( k3_mcart_1(X2,X3,X4) != sK3(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK3(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f23,f37])).

fof(f64,plain,(
    ! [X0] :
      ( r2_hidden(sK3(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k3_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] :
              ( r2_hidden(X3,X0)
              & r2_hidden(X2,X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ? [X2] :
            ( ( ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] :
                  ( r2_hidden(X3,X0)
                  & r2_hidden(X2,X3) )
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) ) )
            & ( ? [X3] :
                  ( r2_hidden(X3,X0)
                  & r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ? [X2] :
            ( ( ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] :
                  ( r2_hidden(X4,X0)
                  & r2_hidden(X2,X4) )
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] :
                  ( ~ r2_hidden(X6,X0)
                  | ~ r2_hidden(X5,X6) ) )
            & ( ? [X7] :
                  ( r2_hidden(X7,X0)
                  & r2_hidden(X5,X7) )
              | ~ r2_hidden(X5,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f28])).

fof(f32,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( r2_hidden(X7,X0)
          & r2_hidden(X5,X7) )
     => ( r2_hidden(sK2(X0,X5),X0)
        & r2_hidden(X5,sK2(X0,X5)) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X0)
          & r2_hidden(X2,X4) )
     => ( r2_hidden(sK1(X0,X1),X0)
        & r2_hidden(X2,sK1(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] :
                ( ~ r2_hidden(X3,X0)
                | ~ r2_hidden(X2,X3) )
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] :
                ( r2_hidden(X4,X0)
                & r2_hidden(X2,X4) )
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] :
              ( ~ r2_hidden(X3,X0)
              | ~ r2_hidden(sK0(X0,X1),X3) )
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( ? [X4] :
              ( r2_hidden(X4,X0)
              & r2_hidden(sK0(X0,X1),X4) )
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ( ( ! [X3] :
                ( ~ r2_hidden(X3,X0)
                | ~ r2_hidden(sK0(X0,X1),X3) )
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( ( r2_hidden(sK1(X0,X1),X0)
              & r2_hidden(sK0(X0,X1),sK1(X0,X1)) )
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] :
                  ( ~ r2_hidden(X6,X0)
                  | ~ r2_hidden(X5,X6) ) )
            & ( ( r2_hidden(sK2(X0,X5),X0)
                & r2_hidden(X5,sK2(X0,X5)) )
              | ~ r2_hidden(X5,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f29,f32,f31,f30])).

fof(f47,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(sK2(X0,X5),X0)
      | ~ r2_hidden(X5,X1)
      | k3_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f87,plain,(
    ! [X0,X5] :
      ( r2_hidden(sK2(X0,X5),X0)
      | ~ r2_hidden(X5,k3_tarski(X0)) ) ),
    inference(equality_resolution,[],[f47])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f10,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f61,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f15,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => k1_funct_1(X3,X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
          & v1_funct_2(X3,X0,k1_tarski(X1))
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => k1_funct_1(X3,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f26,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f27,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f26])).

fof(f40,plain,
    ( ? [X0,X1,X2,X3] :
        ( k1_funct_1(X3,X2) != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
   => ( k1_funct_1(sK7,sK6) != sK5
      & r2_hidden(sK6,sK4)
      & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5))))
      & v1_funct_2(sK7,sK4,k1_tarski(sK5))
      & v1_funct_1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( k1_funct_1(sK7,sK6) != sK5
    & r2_hidden(sK6,sK4)
    & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5))))
    & v1_funct_2(sK7,sK4,k1_tarski(sK5))
    & v1_funct_1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f27,f40])).

fof(f74,plain,(
    v1_funct_2(sK7,sK4,k1_tarski(sK5)) ),
    inference(cnf_transformation,[],[f41])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f78,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f44,f45])).

fof(f79,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f43,f78])).

fof(f85,plain,(
    v1_funct_2(sK7,sK4,k2_enumset1(sK5,sK5,sK5,sK5)) ),
    inference(definition_unfolding,[],[f74,f79])).

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
    inference(ennf_transformation,[],[f14])).

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
    inference(nnf_transformation,[],[f25])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f75,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5)))) ),
    inference(cnf_transformation,[],[f41])).

fof(f84,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))) ),
    inference(definition_unfolding,[],[f75,f79])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f7,axiom,(
    ! [X0] : k3_tarski(k1_tarski(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] : k3_tarski(k1_tarski(X0)) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f83,plain,(
    ! [X0] : k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f55,f79])).

fof(f76,plain,(
    r2_hidden(sK6,sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f9,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
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
    inference(ennf_transformation,[],[f9])).

fof(f19,plain,(
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
    inference(flattening,[],[f18])).

fof(f36,plain,(
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
    inference(nnf_transformation,[],[f19])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X0,X1) = X2
      | k1_xboole_0 != X2
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f90,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k1_funct_1(X0,X1)
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f60])).

fof(f73,plain,(
    v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f41])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f48,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(X6,X0)
      | ~ r2_hidden(X5,X6)
      | k3_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f86,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k3_tarski(X0))
      | ~ r2_hidden(X6,X0)
      | ~ r2_hidden(X5,X6) ) ),
    inference(equality_resolution,[],[f48])).

fof(f77,plain,(
    k1_funct_1(sK7,sK6) != sK5 ),
    inference(cnf_transformation,[],[f41])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(X1,X2),X0)
      | k1_funct_1(X0,X1) != X2
      | ~ r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f92,plain,(
    ! [X0,X1] :
      ( r2_hidden(k4_tarski(X1,k1_funct_1(X0,X1)),X0)
      | ~ r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f57])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))
    <=> ( X1 = X3
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))
        | X1 != X3
        | ~ r2_hidden(X0,X2) )
      & ( ( X1 = X3
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f35,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))
        | X1 != X3
        | ~ r2_hidden(X0,X2) )
      & ( ( X1 = X3
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ) ),
    inference(flattening,[],[f34])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( X1 = X3
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f81,plain,(
    ! [X2,X0,X3,X1] :
      ( X1 = X3
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k2_enumset1(X3,X3,X3,X3))) ) ),
    inference(definition_unfolding,[],[f53,f79])).

cnf(c_21,plain,
    ( r2_hidden(sK3(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1293,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK3(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k3_tarski(X1))
    | r2_hidden(sK2(X1,X0),X1) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1300,plain,
    ( r2_hidden(X0,k3_tarski(X1)) != iProver_top
    | r2_hidden(sK2(X1,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_16,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_350,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_16])).

cnf(c_351,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_350])).

cnf(c_1291,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_351])).

cnf(c_2434,plain,
    ( r2_hidden(X0,k3_tarski(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1300,c_1291])).

cnf(c_4488,plain,
    ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1293,c_2434])).

cnf(c_31,negated_conjecture,
    ( v1_funct_2(sK7,sK4,k2_enumset1(sK5,sK5,sK5,sK5)) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_495,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK7 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_30])).

cnf(c_496,plain,
    ( ~ v1_funct_2(sK7,X0,X1)
    | k1_relset_1(X0,X1,sK7) = X0
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_495])).

cnf(c_717,plain,
    ( k2_enumset1(sK5,sK5,sK5,sK5) != X0
    | k1_relset_1(X1,X0,sK7) = X1
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
    | sK4 != X1
    | sK7 != sK7
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_496])).

cnf(c_718,plain,
    ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = sK4
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))
    | k1_xboole_0 = k2_enumset1(sK5,sK5,sK5,sK5) ),
    inference(unflattening,[status(thm)],[c_717])).

cnf(c_790,plain,
    ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = sK4
    | k1_xboole_0 = k2_enumset1(sK5,sK5,sK5,sK5) ),
    inference(equality_resolution_simp,[status(thm)],[c_718])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_531,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK7 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_30])).

cnf(c_532,plain,
    ( k1_relset_1(X0,X1,sK7) = k1_relat_1(sK7)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_531])).

cnf(c_1479,plain,
    ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = k1_relat_1(sK7) ),
    inference(equality_resolution,[status(thm)],[c_532])).

cnf(c_1743,plain,
    ( k2_enumset1(sK5,sK5,sK5,sK5) = k1_xboole_0
    | k1_relat_1(sK7) = sK4 ),
    inference(demodulation,[status(thm)],[c_790,c_1479])).

cnf(c_10,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1778,plain,
    ( k1_relat_1(sK7) = sK4
    | k3_tarski(k1_xboole_0) = sK5 ),
    inference(superposition,[status(thm)],[c_1743,c_10])).

cnf(c_29,negated_conjecture,
    ( r2_hidden(sK6,sK4) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1292,plain,
    ( r2_hidden(sK6,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_12,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_394,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,X0) = k1_xboole_0
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_32])).

cnf(c_395,plain,
    ( r2_hidden(X0,k1_relat_1(sK7))
    | ~ v1_relat_1(sK7)
    | k1_funct_1(sK7,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_394])).

cnf(c_1288,plain,
    ( k1_funct_1(sK7,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_396,plain,
    ( k1_funct_1(sK7,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_956,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1470,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) = k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) ),
    inference(instantiation,[status(thm)],[c_956])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_540,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK7 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_30])).

cnf(c_541,plain,
    ( v1_relat_1(sK7)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_540])).

cnf(c_1472,plain,
    ( v1_relat_1(sK7)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) ),
    inference(instantiation,[status(thm)],[c_541])).

cnf(c_1473,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))
    | v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1472])).

cnf(c_1988,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
    | k1_funct_1(sK7,X0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1288,c_396,c_1470,c_1473])).

cnf(c_1989,plain,
    ( k1_funct_1(sK7,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top ),
    inference(renaming,[status(thm)],[c_1988])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,k3_tarski(X1)) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1301,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,k3_tarski(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3482,plain,
    ( k1_funct_1(sK7,X0) = k1_xboole_0
    | r2_hidden(X1,X0) != iProver_top
    | r2_hidden(X1,k3_tarski(k1_relat_1(sK7))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1989,c_1301])).

cnf(c_4764,plain,
    ( k1_funct_1(sK7,sK4) = k1_xboole_0
    | r2_hidden(sK6,k3_tarski(k1_relat_1(sK7))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1292,c_3482])).

cnf(c_4940,plain,
    ( k1_funct_1(sK7,sK4) = k1_xboole_0
    | k3_tarski(k1_xboole_0) = sK5
    | r2_hidden(sK6,k3_tarski(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1778,c_4764])).

cnf(c_28,negated_conjecture,
    ( k1_funct_1(sK7,sK6) != sK5 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_957,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1488,plain,
    ( k1_funct_1(sK7,sK6) != X0
    | k1_funct_1(sK7,sK6) = sK5
    | sK5 != X0 ),
    inference(instantiation,[status(thm)],[c_957])).

cnf(c_1489,plain,
    ( k1_funct_1(sK7,sK6) = sK5
    | k1_funct_1(sK7,sK6) != k1_xboole_0
    | sK5 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1488])).

cnf(c_1726,plain,
    ( sK6 = sK6 ),
    inference(instantiation,[status(thm)],[c_956])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_361,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_32])).

cnf(c_362,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK7))
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7)
    | ~ v1_relat_1(sK7) ),
    inference(unflattening,[status(thm)],[c_361])).

cnf(c_1290,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_362])).

cnf(c_363,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_362])).

cnf(c_1566,plain,
    ( r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1290,c_363,c_1470,c_1473])).

cnf(c_1567,plain,
    ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top ),
    inference(renaming,[status(thm)],[c_1566])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_480,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X2)
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_30])).

cnf(c_481,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,sK7)
    | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_480])).

cnf(c_1287,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X0)
    | r2_hidden(X1,X0) = iProver_top
    | r2_hidden(X1,sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_481])).

cnf(c_1922,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1287])).

cnf(c_8,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k2_enumset1(X3,X3,X3,X3)))
    | X3 = X1 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1297,plain,
    ( X0 = X1
    | r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X3,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2504,plain,
    ( sK5 = X0
    | r2_hidden(k4_tarski(X1,X0),sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1922,c_1297])).

cnf(c_2876,plain,
    ( k1_funct_1(sK7,X0) = sK5
    | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1567,c_2504])).

cnf(c_2885,plain,
    ( k1_funct_1(sK7,X0) = sK5
    | k1_funct_1(sK7,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1989,c_2876])).

cnf(c_3115,plain,
    ( k1_funct_1(sK7,sK6) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2885,c_28])).

cnf(c_3392,plain,
    ( r2_hidden(k4_tarski(sK6,k1_xboole_0),sK7) = iProver_top
    | r2_hidden(sK6,k1_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3115,c_1567])).

cnf(c_3644,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK6,k1_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3392,c_2504])).

cnf(c_3658,plain,
    ( ~ r2_hidden(sK6,k1_relat_1(sK7))
    | sK5 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3644])).

cnf(c_959,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1499,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK6,sK4)
    | X1 != sK4
    | X0 != sK6 ),
    inference(instantiation,[status(thm)],[c_959])).

cnf(c_1725,plain,
    ( r2_hidden(sK6,X0)
    | ~ r2_hidden(sK6,sK4)
    | X0 != sK4
    | sK6 != sK6 ),
    inference(instantiation,[status(thm)],[c_1499])).

cnf(c_3711,plain,
    ( r2_hidden(sK6,k1_relat_1(sK7))
    | ~ r2_hidden(sK6,sK4)
    | k1_relat_1(sK7) != sK4
    | sK6 != sK6 ),
    inference(instantiation,[status(thm)],[c_1725])).

cnf(c_5030,plain,
    ( k3_tarski(k1_xboole_0) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4940,c_29,c_28,c_1489,c_1726,c_1778,c_3115,c_3658,c_3711])).

cnf(c_5340,plain,
    ( sK5 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4488,c_5030])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5340,c_3115,c_1489,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 17:20:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.86/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.86/0.99  
% 2.86/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.86/0.99  
% 2.86/0.99  ------  iProver source info
% 2.86/0.99  
% 2.86/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.86/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.86/0.99  git: non_committed_changes: false
% 2.86/0.99  git: last_make_outside_of_git: false
% 2.86/0.99  
% 2.86/0.99  ------ 
% 2.86/0.99  
% 2.86/0.99  ------ Input Options
% 2.86/0.99  
% 2.86/0.99  --out_options                           all
% 2.86/0.99  --tptp_safe_out                         true
% 2.86/0.99  --problem_path                          ""
% 2.86/0.99  --include_path                          ""
% 2.86/0.99  --clausifier                            res/vclausify_rel
% 2.86/0.99  --clausifier_options                    --mode clausify
% 2.86/0.99  --stdin                                 false
% 2.86/0.99  --stats_out                             all
% 2.86/0.99  
% 2.86/0.99  ------ General Options
% 2.86/0.99  
% 2.86/0.99  --fof                                   false
% 2.86/0.99  --time_out_real                         305.
% 2.86/0.99  --time_out_virtual                      -1.
% 2.86/0.99  --symbol_type_check                     false
% 2.86/0.99  --clausify_out                          false
% 2.86/0.99  --sig_cnt_out                           false
% 2.86/0.99  --trig_cnt_out                          false
% 2.86/0.99  --trig_cnt_out_tolerance                1.
% 2.86/0.99  --trig_cnt_out_sk_spl                   false
% 2.86/0.99  --abstr_cl_out                          false
% 2.86/0.99  
% 2.86/0.99  ------ Global Options
% 2.86/0.99  
% 2.86/0.99  --schedule                              default
% 2.86/0.99  --add_important_lit                     false
% 2.86/0.99  --prop_solver_per_cl                    1000
% 2.86/0.99  --min_unsat_core                        false
% 2.86/0.99  --soft_assumptions                      false
% 2.86/0.99  --soft_lemma_size                       3
% 2.86/0.99  --prop_impl_unit_size                   0
% 2.86/0.99  --prop_impl_unit                        []
% 2.86/0.99  --share_sel_clauses                     true
% 2.86/0.99  --reset_solvers                         false
% 2.86/0.99  --bc_imp_inh                            [conj_cone]
% 2.86/0.99  --conj_cone_tolerance                   3.
% 2.86/0.99  --extra_neg_conj                        none
% 2.86/0.99  --large_theory_mode                     true
% 2.86/0.99  --prolific_symb_bound                   200
% 2.86/0.99  --lt_threshold                          2000
% 2.86/0.99  --clause_weak_htbl                      true
% 2.86/0.99  --gc_record_bc_elim                     false
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing Options
% 2.86/0.99  
% 2.86/0.99  --preprocessing_flag                    true
% 2.86/0.99  --time_out_prep_mult                    0.1
% 2.86/0.99  --splitting_mode                        input
% 2.86/0.99  --splitting_grd                         true
% 2.86/0.99  --splitting_cvd                         false
% 2.86/0.99  --splitting_cvd_svl                     false
% 2.86/0.99  --splitting_nvd                         32
% 2.86/0.99  --sub_typing                            true
% 2.86/0.99  --prep_gs_sim                           true
% 2.86/0.99  --prep_unflatten                        true
% 2.86/0.99  --prep_res_sim                          true
% 2.86/0.99  --prep_upred                            true
% 2.86/0.99  --prep_sem_filter                       exhaustive
% 2.86/0.99  --prep_sem_filter_out                   false
% 2.86/0.99  --pred_elim                             true
% 2.86/0.99  --res_sim_input                         true
% 2.86/0.99  --eq_ax_congr_red                       true
% 2.86/0.99  --pure_diseq_elim                       true
% 2.86/0.99  --brand_transform                       false
% 2.86/0.99  --non_eq_to_eq                          false
% 2.86/0.99  --prep_def_merge                        true
% 2.86/0.99  --prep_def_merge_prop_impl              false
% 2.86/0.99  --prep_def_merge_mbd                    true
% 2.86/0.99  --prep_def_merge_tr_red                 false
% 2.86/0.99  --prep_def_merge_tr_cl                  false
% 2.86/0.99  --smt_preprocessing                     true
% 2.86/0.99  --smt_ac_axioms                         fast
% 2.86/0.99  --preprocessed_out                      false
% 2.86/0.99  --preprocessed_stats                    false
% 2.86/0.99  
% 2.86/0.99  ------ Abstraction refinement Options
% 2.86/0.99  
% 2.86/0.99  --abstr_ref                             []
% 2.86/0.99  --abstr_ref_prep                        false
% 2.86/0.99  --abstr_ref_until_sat                   false
% 2.86/0.99  --abstr_ref_sig_restrict                funpre
% 2.86/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.86/0.99  --abstr_ref_under                       []
% 2.86/0.99  
% 2.86/0.99  ------ SAT Options
% 2.86/0.99  
% 2.86/0.99  --sat_mode                              false
% 2.86/0.99  --sat_fm_restart_options                ""
% 2.86/0.99  --sat_gr_def                            false
% 2.86/0.99  --sat_epr_types                         true
% 2.86/0.99  --sat_non_cyclic_types                  false
% 2.86/0.99  --sat_finite_models                     false
% 2.86/0.99  --sat_fm_lemmas                         false
% 2.86/0.99  --sat_fm_prep                           false
% 2.86/0.99  --sat_fm_uc_incr                        true
% 2.86/0.99  --sat_out_model                         small
% 2.86/0.99  --sat_out_clauses                       false
% 2.86/0.99  
% 2.86/0.99  ------ QBF Options
% 2.86/0.99  
% 2.86/0.99  --qbf_mode                              false
% 2.86/0.99  --qbf_elim_univ                         false
% 2.86/0.99  --qbf_dom_inst                          none
% 2.86/0.99  --qbf_dom_pre_inst                      false
% 2.86/0.99  --qbf_sk_in                             false
% 2.86/0.99  --qbf_pred_elim                         true
% 2.86/0.99  --qbf_split                             512
% 2.86/0.99  
% 2.86/0.99  ------ BMC1 Options
% 2.86/0.99  
% 2.86/0.99  --bmc1_incremental                      false
% 2.86/0.99  --bmc1_axioms                           reachable_all
% 2.86/0.99  --bmc1_min_bound                        0
% 2.86/0.99  --bmc1_max_bound                        -1
% 2.86/0.99  --bmc1_max_bound_default                -1
% 2.86/0.99  --bmc1_symbol_reachability              true
% 2.86/0.99  --bmc1_property_lemmas                  false
% 2.86/0.99  --bmc1_k_induction                      false
% 2.86/0.99  --bmc1_non_equiv_states                 false
% 2.86/0.99  --bmc1_deadlock                         false
% 2.86/0.99  --bmc1_ucm                              false
% 2.86/0.99  --bmc1_add_unsat_core                   none
% 2.86/0.99  --bmc1_unsat_core_children              false
% 2.86/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.86/0.99  --bmc1_out_stat                         full
% 2.86/0.99  --bmc1_ground_init                      false
% 2.86/0.99  --bmc1_pre_inst_next_state              false
% 2.86/0.99  --bmc1_pre_inst_state                   false
% 2.86/0.99  --bmc1_pre_inst_reach_state             false
% 2.86/0.99  --bmc1_out_unsat_core                   false
% 2.86/0.99  --bmc1_aig_witness_out                  false
% 2.86/0.99  --bmc1_verbose                          false
% 2.86/0.99  --bmc1_dump_clauses_tptp                false
% 2.86/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.86/0.99  --bmc1_dump_file                        -
% 2.86/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.86/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.86/0.99  --bmc1_ucm_extend_mode                  1
% 2.86/0.99  --bmc1_ucm_init_mode                    2
% 2.86/0.99  --bmc1_ucm_cone_mode                    none
% 2.86/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.86/0.99  --bmc1_ucm_relax_model                  4
% 2.86/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.86/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.86/0.99  --bmc1_ucm_layered_model                none
% 2.86/0.99  --bmc1_ucm_max_lemma_size               10
% 2.86/0.99  
% 2.86/0.99  ------ AIG Options
% 2.86/0.99  
% 2.86/0.99  --aig_mode                              false
% 2.86/0.99  
% 2.86/0.99  ------ Instantiation Options
% 2.86/0.99  
% 2.86/0.99  --instantiation_flag                    true
% 2.86/0.99  --inst_sos_flag                         false
% 2.86/0.99  --inst_sos_phase                        true
% 2.86/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.86/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.86/0.99  --inst_lit_sel_side                     num_symb
% 2.86/0.99  --inst_solver_per_active                1400
% 2.86/0.99  --inst_solver_calls_frac                1.
% 2.86/0.99  --inst_passive_queue_type               priority_queues
% 2.86/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.86/0.99  --inst_passive_queues_freq              [25;2]
% 2.86/0.99  --inst_dismatching                      true
% 2.86/0.99  --inst_eager_unprocessed_to_passive     true
% 2.86/0.99  --inst_prop_sim_given                   true
% 2.86/0.99  --inst_prop_sim_new                     false
% 2.86/0.99  --inst_subs_new                         false
% 2.86/0.99  --inst_eq_res_simp                      false
% 2.86/0.99  --inst_subs_given                       false
% 2.86/0.99  --inst_orphan_elimination               true
% 2.86/0.99  --inst_learning_loop_flag               true
% 2.86/0.99  --inst_learning_start                   3000
% 2.86/0.99  --inst_learning_factor                  2
% 2.86/0.99  --inst_start_prop_sim_after_learn       3
% 2.86/0.99  --inst_sel_renew                        solver
% 2.86/0.99  --inst_lit_activity_flag                true
% 2.86/0.99  --inst_restr_to_given                   false
% 2.86/0.99  --inst_activity_threshold               500
% 2.86/0.99  --inst_out_proof                        true
% 2.86/0.99  
% 2.86/0.99  ------ Resolution Options
% 2.86/0.99  
% 2.86/0.99  --resolution_flag                       true
% 2.86/0.99  --res_lit_sel                           adaptive
% 2.86/0.99  --res_lit_sel_side                      none
% 2.86/0.99  --res_ordering                          kbo
% 2.86/0.99  --res_to_prop_solver                    active
% 2.86/0.99  --res_prop_simpl_new                    false
% 2.86/0.99  --res_prop_simpl_given                  true
% 2.86/0.99  --res_passive_queue_type                priority_queues
% 2.86/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.86/0.99  --res_passive_queues_freq               [15;5]
% 2.86/0.99  --res_forward_subs                      full
% 2.86/0.99  --res_backward_subs                     full
% 2.86/0.99  --res_forward_subs_resolution           true
% 2.86/0.99  --res_backward_subs_resolution          true
% 2.86/0.99  --res_orphan_elimination                true
% 2.86/0.99  --res_time_limit                        2.
% 2.86/0.99  --res_out_proof                         true
% 2.86/0.99  
% 2.86/0.99  ------ Superposition Options
% 2.86/0.99  
% 2.86/0.99  --superposition_flag                    true
% 2.86/0.99  --sup_passive_queue_type                priority_queues
% 2.86/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.86/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.86/0.99  --demod_completeness_check              fast
% 2.86/0.99  --demod_use_ground                      true
% 2.86/0.99  --sup_to_prop_solver                    passive
% 2.86/0.99  --sup_prop_simpl_new                    true
% 2.86/0.99  --sup_prop_simpl_given                  true
% 2.86/0.99  --sup_fun_splitting                     false
% 2.86/0.99  --sup_smt_interval                      50000
% 2.86/0.99  
% 2.86/0.99  ------ Superposition Simplification Setup
% 2.86/0.99  
% 2.86/0.99  --sup_indices_passive                   []
% 2.86/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.86/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_full_bw                           [BwDemod]
% 2.86/0.99  --sup_immed_triv                        [TrivRules]
% 2.86/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.86/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_immed_bw_main                     []
% 2.86/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.86/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.86/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.86/0.99  
% 2.86/0.99  ------ Combination Options
% 2.86/0.99  
% 2.86/0.99  --comb_res_mult                         3
% 2.86/0.99  --comb_sup_mult                         2
% 2.86/0.99  --comb_inst_mult                        10
% 2.86/0.99  
% 2.86/0.99  ------ Debug Options
% 2.86/0.99  
% 2.86/0.99  --dbg_backtrace                         false
% 2.86/0.99  --dbg_dump_prop_clauses                 false
% 2.86/0.99  --dbg_dump_prop_clauses_file            -
% 2.86/0.99  --dbg_out_stat                          false
% 2.86/0.99  ------ Parsing...
% 2.86/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.86/0.99  ------ Proving...
% 2.86/0.99  ------ Problem Properties 
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  clauses                                 25
% 2.86/0.99  conjectures                             2
% 2.86/0.99  EPR                                     2
% 2.86/0.99  Horn                                    19
% 2.86/0.99  unary                                   4
% 2.86/0.99  binary                                  9
% 2.86/0.99  lits                                    61
% 2.86/0.99  lits eq                                 26
% 2.86/0.99  fd_pure                                 0
% 2.86/0.99  fd_pseudo                               0
% 2.86/0.99  fd_cond                                 3
% 2.86/0.99  fd_pseudo_cond                          5
% 2.86/0.99  AC symbols                              0
% 2.86/0.99  
% 2.86/0.99  ------ Schedule dynamic 5 is on 
% 2.86/0.99  
% 2.86/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  ------ 
% 2.86/0.99  Current options:
% 2.86/0.99  ------ 
% 2.86/0.99  
% 2.86/0.99  ------ Input Options
% 2.86/0.99  
% 2.86/0.99  --out_options                           all
% 2.86/0.99  --tptp_safe_out                         true
% 2.86/0.99  --problem_path                          ""
% 2.86/0.99  --include_path                          ""
% 2.86/0.99  --clausifier                            res/vclausify_rel
% 2.86/0.99  --clausifier_options                    --mode clausify
% 2.86/0.99  --stdin                                 false
% 2.86/0.99  --stats_out                             all
% 2.86/0.99  
% 2.86/0.99  ------ General Options
% 2.86/0.99  
% 2.86/0.99  --fof                                   false
% 2.86/0.99  --time_out_real                         305.
% 2.86/0.99  --time_out_virtual                      -1.
% 2.86/0.99  --symbol_type_check                     false
% 2.86/0.99  --clausify_out                          false
% 2.86/0.99  --sig_cnt_out                           false
% 2.86/0.99  --trig_cnt_out                          false
% 2.86/0.99  --trig_cnt_out_tolerance                1.
% 2.86/0.99  --trig_cnt_out_sk_spl                   false
% 2.86/0.99  --abstr_cl_out                          false
% 2.86/0.99  
% 2.86/0.99  ------ Global Options
% 2.86/0.99  
% 2.86/0.99  --schedule                              default
% 2.86/0.99  --add_important_lit                     false
% 2.86/0.99  --prop_solver_per_cl                    1000
% 2.86/0.99  --min_unsat_core                        false
% 2.86/0.99  --soft_assumptions                      false
% 2.86/0.99  --soft_lemma_size                       3
% 2.86/0.99  --prop_impl_unit_size                   0
% 2.86/0.99  --prop_impl_unit                        []
% 2.86/0.99  --share_sel_clauses                     true
% 2.86/0.99  --reset_solvers                         false
% 2.86/0.99  --bc_imp_inh                            [conj_cone]
% 2.86/0.99  --conj_cone_tolerance                   3.
% 2.86/0.99  --extra_neg_conj                        none
% 2.86/0.99  --large_theory_mode                     true
% 2.86/0.99  --prolific_symb_bound                   200
% 2.86/0.99  --lt_threshold                          2000
% 2.86/0.99  --clause_weak_htbl                      true
% 2.86/0.99  --gc_record_bc_elim                     false
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing Options
% 2.86/0.99  
% 2.86/0.99  --preprocessing_flag                    true
% 2.86/0.99  --time_out_prep_mult                    0.1
% 2.86/0.99  --splitting_mode                        input
% 2.86/0.99  --splitting_grd                         true
% 2.86/0.99  --splitting_cvd                         false
% 2.86/0.99  --splitting_cvd_svl                     false
% 2.86/0.99  --splitting_nvd                         32
% 2.86/0.99  --sub_typing                            true
% 2.86/0.99  --prep_gs_sim                           true
% 2.86/0.99  --prep_unflatten                        true
% 2.86/0.99  --prep_res_sim                          true
% 2.86/0.99  --prep_upred                            true
% 2.86/0.99  --prep_sem_filter                       exhaustive
% 2.86/0.99  --prep_sem_filter_out                   false
% 2.86/0.99  --pred_elim                             true
% 2.86/0.99  --res_sim_input                         true
% 2.86/0.99  --eq_ax_congr_red                       true
% 2.86/0.99  --pure_diseq_elim                       true
% 2.86/0.99  --brand_transform                       false
% 2.86/0.99  --non_eq_to_eq                          false
% 2.86/0.99  --prep_def_merge                        true
% 2.86/0.99  --prep_def_merge_prop_impl              false
% 2.86/0.99  --prep_def_merge_mbd                    true
% 2.86/0.99  --prep_def_merge_tr_red                 false
% 2.86/0.99  --prep_def_merge_tr_cl                  false
% 2.86/0.99  --smt_preprocessing                     true
% 2.86/0.99  --smt_ac_axioms                         fast
% 2.86/0.99  --preprocessed_out                      false
% 2.86/0.99  --preprocessed_stats                    false
% 2.86/0.99  
% 2.86/0.99  ------ Abstraction refinement Options
% 2.86/0.99  
% 2.86/0.99  --abstr_ref                             []
% 2.86/0.99  --abstr_ref_prep                        false
% 2.86/0.99  --abstr_ref_until_sat                   false
% 2.86/0.99  --abstr_ref_sig_restrict                funpre
% 2.86/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.86/0.99  --abstr_ref_under                       []
% 2.86/0.99  
% 2.86/0.99  ------ SAT Options
% 2.86/0.99  
% 2.86/0.99  --sat_mode                              false
% 2.86/0.99  --sat_fm_restart_options                ""
% 2.86/0.99  --sat_gr_def                            false
% 2.86/0.99  --sat_epr_types                         true
% 2.86/0.99  --sat_non_cyclic_types                  false
% 2.86/0.99  --sat_finite_models                     false
% 2.86/0.99  --sat_fm_lemmas                         false
% 2.86/0.99  --sat_fm_prep                           false
% 2.86/0.99  --sat_fm_uc_incr                        true
% 2.86/0.99  --sat_out_model                         small
% 2.86/0.99  --sat_out_clauses                       false
% 2.86/0.99  
% 2.86/0.99  ------ QBF Options
% 2.86/0.99  
% 2.86/0.99  --qbf_mode                              false
% 2.86/0.99  --qbf_elim_univ                         false
% 2.86/0.99  --qbf_dom_inst                          none
% 2.86/0.99  --qbf_dom_pre_inst                      false
% 2.86/0.99  --qbf_sk_in                             false
% 2.86/0.99  --qbf_pred_elim                         true
% 2.86/0.99  --qbf_split                             512
% 2.86/0.99  
% 2.86/0.99  ------ BMC1 Options
% 2.86/0.99  
% 2.86/0.99  --bmc1_incremental                      false
% 2.86/0.99  --bmc1_axioms                           reachable_all
% 2.86/0.99  --bmc1_min_bound                        0
% 2.86/0.99  --bmc1_max_bound                        -1
% 2.86/0.99  --bmc1_max_bound_default                -1
% 2.86/0.99  --bmc1_symbol_reachability              true
% 2.86/0.99  --bmc1_property_lemmas                  false
% 2.86/0.99  --bmc1_k_induction                      false
% 2.86/0.99  --bmc1_non_equiv_states                 false
% 2.86/0.99  --bmc1_deadlock                         false
% 2.86/0.99  --bmc1_ucm                              false
% 2.86/0.99  --bmc1_add_unsat_core                   none
% 2.86/0.99  --bmc1_unsat_core_children              false
% 2.86/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.86/0.99  --bmc1_out_stat                         full
% 2.86/0.99  --bmc1_ground_init                      false
% 2.86/0.99  --bmc1_pre_inst_next_state              false
% 2.86/0.99  --bmc1_pre_inst_state                   false
% 2.86/0.99  --bmc1_pre_inst_reach_state             false
% 2.86/0.99  --bmc1_out_unsat_core                   false
% 2.86/0.99  --bmc1_aig_witness_out                  false
% 2.86/0.99  --bmc1_verbose                          false
% 2.86/0.99  --bmc1_dump_clauses_tptp                false
% 2.86/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.86/0.99  --bmc1_dump_file                        -
% 2.86/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.86/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.86/0.99  --bmc1_ucm_extend_mode                  1
% 2.86/0.99  --bmc1_ucm_init_mode                    2
% 2.86/0.99  --bmc1_ucm_cone_mode                    none
% 2.86/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.86/0.99  --bmc1_ucm_relax_model                  4
% 2.86/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.86/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.86/0.99  --bmc1_ucm_layered_model                none
% 2.86/0.99  --bmc1_ucm_max_lemma_size               10
% 2.86/0.99  
% 2.86/0.99  ------ AIG Options
% 2.86/0.99  
% 2.86/0.99  --aig_mode                              false
% 2.86/0.99  
% 2.86/0.99  ------ Instantiation Options
% 2.86/0.99  
% 2.86/0.99  --instantiation_flag                    true
% 2.86/0.99  --inst_sos_flag                         false
% 2.86/0.99  --inst_sos_phase                        true
% 2.86/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.86/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.86/0.99  --inst_lit_sel_side                     none
% 2.86/0.99  --inst_solver_per_active                1400
% 2.86/0.99  --inst_solver_calls_frac                1.
% 2.86/0.99  --inst_passive_queue_type               priority_queues
% 2.86/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.86/0.99  --inst_passive_queues_freq              [25;2]
% 2.86/0.99  --inst_dismatching                      true
% 2.86/0.99  --inst_eager_unprocessed_to_passive     true
% 2.86/0.99  --inst_prop_sim_given                   true
% 2.86/0.99  --inst_prop_sim_new                     false
% 2.86/0.99  --inst_subs_new                         false
% 2.86/0.99  --inst_eq_res_simp                      false
% 2.86/0.99  --inst_subs_given                       false
% 2.86/0.99  --inst_orphan_elimination               true
% 2.86/0.99  --inst_learning_loop_flag               true
% 2.86/0.99  --inst_learning_start                   3000
% 2.86/0.99  --inst_learning_factor                  2
% 2.86/0.99  --inst_start_prop_sim_after_learn       3
% 2.86/0.99  --inst_sel_renew                        solver
% 2.86/0.99  --inst_lit_activity_flag                true
% 2.86/0.99  --inst_restr_to_given                   false
% 2.86/0.99  --inst_activity_threshold               500
% 2.86/0.99  --inst_out_proof                        true
% 2.86/0.99  
% 2.86/0.99  ------ Resolution Options
% 2.86/0.99  
% 2.86/0.99  --resolution_flag                       false
% 2.86/0.99  --res_lit_sel                           adaptive
% 2.86/0.99  --res_lit_sel_side                      none
% 2.86/0.99  --res_ordering                          kbo
% 2.86/0.99  --res_to_prop_solver                    active
% 2.86/0.99  --res_prop_simpl_new                    false
% 2.86/0.99  --res_prop_simpl_given                  true
% 2.86/0.99  --res_passive_queue_type                priority_queues
% 2.86/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.86/0.99  --res_passive_queues_freq               [15;5]
% 2.86/0.99  --res_forward_subs                      full
% 2.86/0.99  --res_backward_subs                     full
% 2.86/0.99  --res_forward_subs_resolution           true
% 2.86/0.99  --res_backward_subs_resolution          true
% 2.86/0.99  --res_orphan_elimination                true
% 2.86/0.99  --res_time_limit                        2.
% 2.86/0.99  --res_out_proof                         true
% 2.86/0.99  
% 2.86/0.99  ------ Superposition Options
% 2.86/0.99  
% 2.86/0.99  --superposition_flag                    true
% 2.86/0.99  --sup_passive_queue_type                priority_queues
% 2.86/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.86/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.86/0.99  --demod_completeness_check              fast
% 2.86/0.99  --demod_use_ground                      true
% 2.86/0.99  --sup_to_prop_solver                    passive
% 2.86/0.99  --sup_prop_simpl_new                    true
% 2.86/0.99  --sup_prop_simpl_given                  true
% 2.86/0.99  --sup_fun_splitting                     false
% 2.86/0.99  --sup_smt_interval                      50000
% 2.86/0.99  
% 2.86/0.99  ------ Superposition Simplification Setup
% 2.86/0.99  
% 2.86/0.99  --sup_indices_passive                   []
% 2.86/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.86/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.86/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_full_bw                           [BwDemod]
% 2.86/0.99  --sup_immed_triv                        [TrivRules]
% 2.86/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.86/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_immed_bw_main                     []
% 2.86/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.86/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.86/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.86/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.86/0.99  
% 2.86/0.99  ------ Combination Options
% 2.86/0.99  
% 2.86/0.99  --comb_res_mult                         3
% 2.86/0.99  --comb_sup_mult                         2
% 2.86/0.99  --comb_inst_mult                        10
% 2.86/0.99  
% 2.86/0.99  ------ Debug Options
% 2.86/0.99  
% 2.86/0.99  --dbg_backtrace                         false
% 2.86/0.99  --dbg_dump_prop_clauses                 false
% 2.86/0.99  --dbg_dump_prop_clauses_file            -
% 2.86/0.99  --dbg_out_stat                          false
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  ------ Proving...
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  % SZS status Theorem for theBenchmark.p
% 2.86/0.99  
% 2.86/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.86/0.99  
% 2.86/0.99  fof(f13,axiom,(
% 2.86/0.99    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4] : ~(k3_mcart_1(X2,X3,X4) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f23,plain,(
% 2.86/0.99    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 2.86/0.99    inference(ennf_transformation,[],[f13])).
% 2.86/0.99  
% 2.86/0.99  fof(f37,plain,(
% 2.86/0.99    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X4,X3,X2] : (k3_mcart_1(X2,X3,X4) != sK3(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK3(X0),X0)))),
% 2.86/0.99    introduced(choice_axiom,[])).
% 2.86/0.99  
% 2.86/0.99  fof(f38,plain,(
% 2.86/0.99    ! [X0] : ((! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != sK3(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK3(X0),X0)) | k1_xboole_0 = X0)),
% 2.86/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f23,f37])).
% 2.86/0.99  
% 2.86/0.99  fof(f64,plain,(
% 2.86/0.99    ( ! [X0] : (r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0) )),
% 2.86/0.99    inference(cnf_transformation,[],[f38])).
% 2.86/0.99  
% 2.86/0.99  fof(f5,axiom,(
% 2.86/0.99    ! [X0,X1] : (k3_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3))))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f28,plain,(
% 2.86/0.99    ! [X0,X1] : ((k3_tarski(X0) = X1 | ? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3)) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3))) & (? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3)) | ~r2_hidden(X2,X1))) | k3_tarski(X0) != X1))),
% 2.86/0.99    inference(nnf_transformation,[],[f5])).
% 2.86/0.99  
% 2.86/0.99  fof(f29,plain,(
% 2.86/0.99    ! [X0,X1] : ((k3_tarski(X0) = X1 | ? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (~r2_hidden(X6,X0) | ~r2_hidden(X5,X6))) & (? [X7] : (r2_hidden(X7,X0) & r2_hidden(X5,X7)) | ~r2_hidden(X5,X1))) | k3_tarski(X0) != X1))),
% 2.86/0.99    inference(rectify,[],[f28])).
% 2.86/0.99  
% 2.86/0.99  fof(f32,plain,(
% 2.86/0.99    ! [X5,X0] : (? [X7] : (r2_hidden(X7,X0) & r2_hidden(X5,X7)) => (r2_hidden(sK2(X0,X5),X0) & r2_hidden(X5,sK2(X0,X5))))),
% 2.86/0.99    introduced(choice_axiom,[])).
% 2.86/0.99  
% 2.86/0.99  fof(f31,plain,(
% 2.86/0.99    ( ! [X2] : (! [X1,X0] : (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) => (r2_hidden(sK1(X0,X1),X0) & r2_hidden(X2,sK1(X0,X1))))) )),
% 2.86/0.99    introduced(choice_axiom,[])).
% 2.86/0.99  
% 2.86/0.99  fof(f30,plain,(
% 2.86/0.99    ! [X1,X0] : (? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) | r2_hidden(X2,X1))) => ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(sK0(X0,X1),X3)) | ~r2_hidden(sK0(X0,X1),X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(sK0(X0,X1),X4)) | r2_hidden(sK0(X0,X1),X1))))),
% 2.86/0.99    introduced(choice_axiom,[])).
% 2.86/0.99  
% 2.86/0.99  fof(f33,plain,(
% 2.86/0.99    ! [X0,X1] : ((k3_tarski(X0) = X1 | ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(sK0(X0,X1),X3)) | ~r2_hidden(sK0(X0,X1),X1)) & ((r2_hidden(sK1(X0,X1),X0) & r2_hidden(sK0(X0,X1),sK1(X0,X1))) | r2_hidden(sK0(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (~r2_hidden(X6,X0) | ~r2_hidden(X5,X6))) & ((r2_hidden(sK2(X0,X5),X0) & r2_hidden(X5,sK2(X0,X5))) | ~r2_hidden(X5,X1))) | k3_tarski(X0) != X1))),
% 2.86/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f29,f32,f31,f30])).
% 2.86/0.99  
% 2.86/0.99  fof(f47,plain,(
% 2.86/0.99    ( ! [X0,X5,X1] : (r2_hidden(sK2(X0,X5),X0) | ~r2_hidden(X5,X1) | k3_tarski(X0) != X1) )),
% 2.86/0.99    inference(cnf_transformation,[],[f33])).
% 2.86/0.99  
% 2.86/0.99  fof(f87,plain,(
% 2.86/0.99    ( ! [X0,X5] : (r2_hidden(sK2(X0,X5),X0) | ~r2_hidden(X5,k3_tarski(X0))) )),
% 2.86/0.99    inference(equality_resolution,[],[f47])).
% 2.86/0.99  
% 2.86/0.99  fof(f1,axiom,(
% 2.86/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f42,plain,(
% 2.86/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f1])).
% 2.86/0.99  
% 2.86/0.99  fof(f10,axiom,(
% 2.86/0.99    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f20,plain,(
% 2.86/0.99    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 2.86/0.99    inference(ennf_transformation,[],[f10])).
% 2.86/0.99  
% 2.86/0.99  fof(f61,plain,(
% 2.86/0.99    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f20])).
% 2.86/0.99  
% 2.86/0.99  fof(f15,conjecture,(
% 2.86/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f16,negated_conjecture,(
% 2.86/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 2.86/0.99    inference(negated_conjecture,[],[f15])).
% 2.86/0.99  
% 2.86/0.99  fof(f26,plain,(
% 2.86/0.99    ? [X0,X1,X2,X3] : ((k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)))),
% 2.86/0.99    inference(ennf_transformation,[],[f16])).
% 2.86/0.99  
% 2.86/0.99  fof(f27,plain,(
% 2.86/0.99    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3))),
% 2.86/0.99    inference(flattening,[],[f26])).
% 2.86/0.99  
% 2.86/0.99  fof(f40,plain,(
% 2.86/0.99    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (k1_funct_1(sK7,sK6) != sK5 & r2_hidden(sK6,sK4) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5)))) & v1_funct_2(sK7,sK4,k1_tarski(sK5)) & v1_funct_1(sK7))),
% 2.86/0.99    introduced(choice_axiom,[])).
% 2.86/0.99  
% 2.86/0.99  fof(f41,plain,(
% 2.86/0.99    k1_funct_1(sK7,sK6) != sK5 & r2_hidden(sK6,sK4) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5)))) & v1_funct_2(sK7,sK4,k1_tarski(sK5)) & v1_funct_1(sK7)),
% 2.86/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f27,f40])).
% 2.86/0.99  
% 2.86/0.99  fof(f74,plain,(
% 2.86/0.99    v1_funct_2(sK7,sK4,k1_tarski(sK5))),
% 2.86/0.99    inference(cnf_transformation,[],[f41])).
% 2.86/0.99  
% 2.86/0.99  fof(f2,axiom,(
% 2.86/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f43,plain,(
% 2.86/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f2])).
% 2.86/0.99  
% 2.86/0.99  fof(f3,axiom,(
% 2.86/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f44,plain,(
% 2.86/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f3])).
% 2.86/0.99  
% 2.86/0.99  fof(f4,axiom,(
% 2.86/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f45,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f4])).
% 2.86/0.99  
% 2.86/0.99  fof(f78,plain,(
% 2.86/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 2.86/0.99    inference(definition_unfolding,[],[f44,f45])).
% 2.86/0.99  
% 2.86/0.99  fof(f79,plain,(
% 2.86/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 2.86/0.99    inference(definition_unfolding,[],[f43,f78])).
% 2.86/0.99  
% 2.86/0.99  fof(f85,plain,(
% 2.86/0.99    v1_funct_2(sK7,sK4,k2_enumset1(sK5,sK5,sK5,sK5))),
% 2.86/0.99    inference(definition_unfolding,[],[f74,f79])).
% 2.86/0.99  
% 2.86/0.99  fof(f14,axiom,(
% 2.86/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f24,plain,(
% 2.86/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.86/0.99    inference(ennf_transformation,[],[f14])).
% 2.86/0.99  
% 2.86/0.99  fof(f25,plain,(
% 2.86/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.86/0.99    inference(flattening,[],[f24])).
% 2.86/0.99  
% 2.86/0.99  fof(f39,plain,(
% 2.86/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.86/0.99    inference(nnf_transformation,[],[f25])).
% 2.86/0.99  
% 2.86/0.99  fof(f67,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.86/0.99    inference(cnf_transformation,[],[f39])).
% 2.86/0.99  
% 2.86/0.99  fof(f75,plain,(
% 2.86/0.99    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k1_tarski(sK5))))),
% 2.86/0.99    inference(cnf_transformation,[],[f41])).
% 2.86/0.99  
% 2.86/0.99  fof(f84,plain,(
% 2.86/0.99    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))))),
% 2.86/0.99    inference(definition_unfolding,[],[f75,f79])).
% 2.86/0.99  
% 2.86/0.99  fof(f12,axiom,(
% 2.86/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f22,plain,(
% 2.86/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.86/0.99    inference(ennf_transformation,[],[f12])).
% 2.86/0.99  
% 2.86/0.99  fof(f63,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.86/0.99    inference(cnf_transformation,[],[f22])).
% 2.86/0.99  
% 2.86/0.99  fof(f7,axiom,(
% 2.86/0.99    ! [X0] : k3_tarski(k1_tarski(X0)) = X0),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f55,plain,(
% 2.86/0.99    ( ! [X0] : (k3_tarski(k1_tarski(X0)) = X0) )),
% 2.86/0.99    inference(cnf_transformation,[],[f7])).
% 2.86/0.99  
% 2.86/0.99  fof(f83,plain,(
% 2.86/0.99    ( ! [X0] : (k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0) )),
% 2.86/0.99    inference(definition_unfolding,[],[f55,f79])).
% 2.86/0.99  
% 2.86/0.99  fof(f76,plain,(
% 2.86/0.99    r2_hidden(sK6,sK4)),
% 2.86/0.99    inference(cnf_transformation,[],[f41])).
% 2.86/0.99  
% 2.86/0.99  fof(f9,axiom,(
% 2.86/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1,X2] : ((~r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2)) & (r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)))))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f18,plain,(
% 2.86/0.99    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.86/0.99    inference(ennf_transformation,[],[f9])).
% 2.86/0.99  
% 2.86/0.99  fof(f19,plain,(
% 2.86/0.99    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.86/0.99    inference(flattening,[],[f18])).
% 2.86/0.99  
% 2.86/0.99  fof(f36,plain,(
% 2.86/0.99    ! [X0] : (! [X1,X2] : ((((k1_funct_1(X0,X1) = X2 | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | k1_funct_1(X0,X1) != X2)) | r2_hidden(X1,k1_relat_1(X0))) & (((k1_funct_1(X0,X1) = X2 | ~r2_hidden(k4_tarski(X1,X2),X0)) & (r2_hidden(k4_tarski(X1,X2),X0) | k1_funct_1(X0,X1) != X2)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.86/0.99    inference(nnf_transformation,[],[f19])).
% 2.86/0.99  
% 2.86/0.99  fof(f60,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (k1_funct_1(X0,X1) = X2 | k1_xboole_0 != X2 | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f36])).
% 2.86/0.99  
% 2.86/0.99  fof(f90,plain,(
% 2.86/0.99    ( ! [X0,X1] : (k1_xboole_0 = k1_funct_1(X0,X1) | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.86/0.99    inference(equality_resolution,[],[f60])).
% 2.86/0.99  
% 2.86/0.99  fof(f73,plain,(
% 2.86/0.99    v1_funct_1(sK7)),
% 2.86/0.99    inference(cnf_transformation,[],[f41])).
% 2.86/0.99  
% 2.86/0.99  fof(f11,axiom,(
% 2.86/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f21,plain,(
% 2.86/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.86/0.99    inference(ennf_transformation,[],[f11])).
% 2.86/0.99  
% 2.86/0.99  fof(f62,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.86/0.99    inference(cnf_transformation,[],[f21])).
% 2.86/0.99  
% 2.86/0.99  fof(f48,plain,(
% 2.86/0.99    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | ~r2_hidden(X6,X0) | ~r2_hidden(X5,X6) | k3_tarski(X0) != X1) )),
% 2.86/0.99    inference(cnf_transformation,[],[f33])).
% 2.86/0.99  
% 2.86/0.99  fof(f86,plain,(
% 2.86/0.99    ( ! [X6,X0,X5] : (r2_hidden(X5,k3_tarski(X0)) | ~r2_hidden(X6,X0) | ~r2_hidden(X5,X6)) )),
% 2.86/0.99    inference(equality_resolution,[],[f48])).
% 2.86/0.99  
% 2.86/0.99  fof(f77,plain,(
% 2.86/0.99    k1_funct_1(sK7,sK6) != sK5),
% 2.86/0.99    inference(cnf_transformation,[],[f41])).
% 2.86/0.99  
% 2.86/0.99  fof(f57,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(X1,X2),X0) | k1_funct_1(X0,X1) != X2 | ~r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.86/0.99    inference(cnf_transformation,[],[f36])).
% 2.86/0.99  
% 2.86/0.99  fof(f92,plain,(
% 2.86/0.99    ( ! [X0,X1] : (r2_hidden(k4_tarski(X1,k1_funct_1(X0,X1)),X0) | ~r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.86/0.99    inference(equality_resolution,[],[f57])).
% 2.86/0.99  
% 2.86/0.99  fof(f8,axiom,(
% 2.86/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f17,plain,(
% 2.86/0.99    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.86/0.99    inference(ennf_transformation,[],[f8])).
% 2.86/0.99  
% 2.86/0.99  fof(f56,plain,(
% 2.86/0.99    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.86/0.99    inference(cnf_transformation,[],[f17])).
% 2.86/0.99  
% 2.86/0.99  fof(f6,axiom,(
% 2.86/0.99    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) <=> (X1 = X3 & r2_hidden(X0,X2)))),
% 2.86/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.86/0.99  
% 2.86/0.99  fof(f34,plain,(
% 2.86/0.99    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) | (X1 != X3 | ~r2_hidden(X0,X2))) & ((X1 = X3 & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))))),
% 2.86/0.99    inference(nnf_transformation,[],[f6])).
% 2.86/0.99  
% 2.86/0.99  fof(f35,plain,(
% 2.86/0.99    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) | X1 != X3 | ~r2_hidden(X0,X2)) & ((X1 = X3 & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))))),
% 2.86/0.99    inference(flattening,[],[f34])).
% 2.86/0.99  
% 2.86/0.99  fof(f53,plain,(
% 2.86/0.99    ( ! [X2,X0,X3,X1] : (X1 = X3 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))) )),
% 2.86/0.99    inference(cnf_transformation,[],[f35])).
% 2.86/0.99  
% 2.86/0.99  fof(f81,plain,(
% 2.86/0.99    ( ! [X2,X0,X3,X1] : (X1 = X3 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k2_enumset1(X3,X3,X3,X3)))) )),
% 2.86/0.99    inference(definition_unfolding,[],[f53,f79])).
% 2.86/0.99  
% 2.86/0.99  cnf(c_21,plain,
% 2.86/0.99      ( r2_hidden(sK3(X0),X0) | k1_xboole_0 = X0 ),
% 2.86/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1293,plain,
% 2.86/0.99      ( k1_xboole_0 = X0 | r2_hidden(sK3(X0),X0) = iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_5,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,k3_tarski(X1)) | r2_hidden(sK2(X1,X0),X1) ),
% 2.86/0.99      inference(cnf_transformation,[],[f87]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1300,plain,
% 2.86/0.99      ( r2_hidden(X0,k3_tarski(X1)) != iProver_top
% 2.86/0.99      | r2_hidden(sK2(X1,X0),X1) = iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_0,plain,
% 2.86/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 2.86/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_16,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 2.86/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_350,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_16]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_351,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_350]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1291,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_351]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_2434,plain,
% 2.86/0.99      ( r2_hidden(X0,k3_tarski(k1_xboole_0)) != iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1300,c_1291]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_4488,plain,
% 2.86/0.99      ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1293,c_2434]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_31,negated_conjecture,
% 2.86/0.99      ( v1_funct_2(sK7,sK4,k2_enumset1(sK5,sK5,sK5,sK5)) ),
% 2.86/0.99      inference(cnf_transformation,[],[f85]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_27,plain,
% 2.86/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.86/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.86/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.86/0.99      | k1_xboole_0 = X2 ),
% 2.86/0.99      inference(cnf_transformation,[],[f67]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_30,negated_conjecture,
% 2.86/0.99      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))) ),
% 2.86/0.99      inference(cnf_transformation,[],[f84]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_495,plain,
% 2.86/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.86/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 2.86/0.99      | sK7 != X0
% 2.86/0.99      | k1_xboole_0 = X2 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_27,c_30]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_496,plain,
% 2.86/0.99      ( ~ v1_funct_2(sK7,X0,X1)
% 2.86/0.99      | k1_relset_1(X0,X1,sK7) = X0
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.86/0.99      | k1_xboole_0 = X1 ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_495]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_717,plain,
% 2.86/0.99      ( k2_enumset1(sK5,sK5,sK5,sK5) != X0
% 2.86/0.99      | k1_relset_1(X1,X0,sK7) = X1
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
% 2.86/0.99      | sK4 != X1
% 2.86/0.99      | sK7 != sK7
% 2.86/0.99      | k1_xboole_0 = X0 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_31,c_496]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_718,plain,
% 2.86/0.99      ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = sK4
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))
% 2.86/0.99      | k1_xboole_0 = k2_enumset1(sK5,sK5,sK5,sK5) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_717]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_790,plain,
% 2.86/0.99      ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = sK4
% 2.86/0.99      | k1_xboole_0 = k2_enumset1(sK5,sK5,sK5,sK5) ),
% 2.86/0.99      inference(equality_resolution_simp,[status(thm)],[c_718]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_18,plain,
% 2.86/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.86/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.86/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_531,plain,
% 2.86/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.86/0.99      | sK7 != X2 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_30]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_532,plain,
% 2.86/0.99      ( k1_relset_1(X0,X1,sK7) = k1_relat_1(sK7)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_531]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1479,plain,
% 2.86/0.99      ( k1_relset_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5),sK7) = k1_relat_1(sK7) ),
% 2.86/0.99      inference(equality_resolution,[status(thm)],[c_532]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1743,plain,
% 2.86/0.99      ( k2_enumset1(sK5,sK5,sK5,sK5) = k1_xboole_0
% 2.86/0.99      | k1_relat_1(sK7) = sK4 ),
% 2.86/0.99      inference(demodulation,[status(thm)],[c_790,c_1479]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_10,plain,
% 2.86/0.99      ( k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
% 2.86/0.99      inference(cnf_transformation,[],[f83]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1778,plain,
% 2.86/0.99      ( k1_relat_1(sK7) = sK4 | k3_tarski(k1_xboole_0) = sK5 ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1743,c_10]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_29,negated_conjecture,
% 2.86/0.99      ( r2_hidden(sK6,sK4) ),
% 2.86/0.99      inference(cnf_transformation,[],[f76]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1292,plain,
% 2.86/0.99      ( r2_hidden(sK6,sK4) = iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_12,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(X1))
% 2.86/0.99      | ~ v1_relat_1(X1)
% 2.86/0.99      | ~ v1_funct_1(X1)
% 2.86/0.99      | k1_funct_1(X1,X0) = k1_xboole_0 ),
% 2.86/0.99      inference(cnf_transformation,[],[f90]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_32,negated_conjecture,
% 2.86/0.99      ( v1_funct_1(sK7) ),
% 2.86/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_394,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(X1))
% 2.86/0.99      | ~ v1_relat_1(X1)
% 2.86/0.99      | k1_funct_1(X1,X0) = k1_xboole_0
% 2.86/0.99      | sK7 != X1 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_32]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_395,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(sK7))
% 2.86/0.99      | ~ v1_relat_1(sK7)
% 2.86/0.99      | k1_funct_1(sK7,X0) = k1_xboole_0 ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_394]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1288,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = k1_xboole_0
% 2.86/0.99      | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
% 2.86/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_396,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = k1_xboole_0
% 2.86/0.99      | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
% 2.86/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_956,plain,( X0 = X0 ),theory(equality) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1470,plain,
% 2.86/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) = k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_956]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_17,plain,
% 2.86/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.86/0.99      | v1_relat_1(X0) ),
% 2.86/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_540,plain,
% 2.86/0.99      ( v1_relat_1(X0)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 2.86/0.99      | sK7 != X0 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_30]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_541,plain,
% 2.86/0.99      ( v1_relat_1(sK7)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_540]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1472,plain,
% 2.86/0.99      ( v1_relat_1(sK7)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_541]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1473,plain,
% 2.86/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5)))
% 2.86/0.99      | v1_relat_1(sK7) = iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_1472]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1988,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(sK7)) = iProver_top
% 2.86/0.99      | k1_funct_1(sK7,X0) = k1_xboole_0 ),
% 2.86/0.99      inference(global_propositional_subsumption,
% 2.86/0.99                [status(thm)],
% 2.86/0.99                [c_1288,c_396,c_1470,c_1473]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1989,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = k1_xboole_0
% 2.86/0.99      | r2_hidden(X0,k1_relat_1(sK7)) = iProver_top ),
% 2.86/0.99      inference(renaming,[status(thm)],[c_1988]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_4,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,X1)
% 2.86/0.99      | ~ r2_hidden(X2,X0)
% 2.86/0.99      | r2_hidden(X2,k3_tarski(X1)) ),
% 2.86/0.99      inference(cnf_transformation,[],[f86]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1301,plain,
% 2.86/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.86/0.99      | r2_hidden(X2,X0) != iProver_top
% 2.86/0.99      | r2_hidden(X2,k3_tarski(X1)) = iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3482,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = k1_xboole_0
% 2.86/0.99      | r2_hidden(X1,X0) != iProver_top
% 2.86/0.99      | r2_hidden(X1,k3_tarski(k1_relat_1(sK7))) = iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1989,c_1301]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_4764,plain,
% 2.86/0.99      ( k1_funct_1(sK7,sK4) = k1_xboole_0
% 2.86/0.99      | r2_hidden(sK6,k3_tarski(k1_relat_1(sK7))) = iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1292,c_3482]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_4940,plain,
% 2.86/0.99      ( k1_funct_1(sK7,sK4) = k1_xboole_0
% 2.86/0.99      | k3_tarski(k1_xboole_0) = sK5
% 2.86/0.99      | r2_hidden(sK6,k3_tarski(sK4)) = iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1778,c_4764]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_28,negated_conjecture,
% 2.86/0.99      ( k1_funct_1(sK7,sK6) != sK5 ),
% 2.86/0.99      inference(cnf_transformation,[],[f77]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_957,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1488,plain,
% 2.86/0.99      ( k1_funct_1(sK7,sK6) != X0
% 2.86/0.99      | k1_funct_1(sK7,sK6) = sK5
% 2.86/0.99      | sK5 != X0 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_957]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1489,plain,
% 2.86/0.99      ( k1_funct_1(sK7,sK6) = sK5
% 2.86/0.99      | k1_funct_1(sK7,sK6) != k1_xboole_0
% 2.86/0.99      | sK5 != k1_xboole_0 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_1488]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1726,plain,
% 2.86/0.99      ( sK6 = sK6 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_956]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_15,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 2.86/0.99      | ~ v1_relat_1(X1)
% 2.86/0.99      | ~ v1_funct_1(X1) ),
% 2.86/0.99      inference(cnf_transformation,[],[f92]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_361,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 2.86/0.99      | ~ v1_relat_1(X1)
% 2.86/0.99      | sK7 != X1 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_32]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_362,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,k1_relat_1(sK7))
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7)
% 2.86/0.99      | ~ v1_relat_1(sK7) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_361]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1290,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
% 2.86/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_362]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_363,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
% 2.86/0.99      | v1_relat_1(sK7) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_362]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1566,plain,
% 2.86/0.99      ( r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top
% 2.86/0.99      | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
% 2.86/0.99      inference(global_propositional_subsumption,
% 2.86/0.99                [status(thm)],
% 2.86/0.99                [c_1290,c_363,c_1470,c_1473]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1567,plain,
% 2.86/0.99      ( r2_hidden(X0,k1_relat_1(sK7)) != iProver_top
% 2.86/0.99      | r2_hidden(k4_tarski(X0,k1_funct_1(sK7,X0)),sK7) = iProver_top ),
% 2.86/0.99      inference(renaming,[status(thm)],[c_1566]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_11,plain,
% 2.86/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.86/0.99      | ~ r2_hidden(X2,X0)
% 2.86/0.99      | r2_hidden(X2,X1) ),
% 2.86/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_480,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,X1)
% 2.86/0.99      | r2_hidden(X0,X2)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X2)
% 2.86/0.99      | sK7 != X1 ),
% 2.86/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_30]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_481,plain,
% 2.86/0.99      ( r2_hidden(X0,X1)
% 2.86/0.99      | ~ r2_hidden(X0,sK7)
% 2.86/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X1) ),
% 2.86/0.99      inference(unflattening,[status(thm)],[c_480]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1287,plain,
% 2.86/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) != k1_zfmisc_1(X0)
% 2.86/0.99      | r2_hidden(X1,X0) = iProver_top
% 2.86/0.99      | r2_hidden(X1,sK7) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_481]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1922,plain,
% 2.86/0.99      ( r2_hidden(X0,k2_zfmisc_1(sK4,k2_enumset1(sK5,sK5,sK5,sK5))) = iProver_top
% 2.86/0.99      | r2_hidden(X0,sK7) != iProver_top ),
% 2.86/0.99      inference(equality_resolution,[status(thm)],[c_1287]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_8,plain,
% 2.86/0.99      ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k2_enumset1(X3,X3,X3,X3)))
% 2.86/0.99      | X3 = X1 ),
% 2.86/0.99      inference(cnf_transformation,[],[f81]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1297,plain,
% 2.86/0.99      ( X0 = X1
% 2.86/0.99      | r2_hidden(k4_tarski(X2,X1),k2_zfmisc_1(X3,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
% 2.86/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_2504,plain,
% 2.86/0.99      ( sK5 = X0 | r2_hidden(k4_tarski(X1,X0),sK7) != iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1922,c_1297]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_2876,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = sK5
% 2.86/0.99      | r2_hidden(X0,k1_relat_1(sK7)) != iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1567,c_2504]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_2885,plain,
% 2.86/0.99      ( k1_funct_1(sK7,X0) = sK5 | k1_funct_1(sK7,X0) = k1_xboole_0 ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_1989,c_2876]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3115,plain,
% 2.86/0.99      ( k1_funct_1(sK7,sK6) = k1_xboole_0 ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_2885,c_28]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3392,plain,
% 2.86/0.99      ( r2_hidden(k4_tarski(sK6,k1_xboole_0),sK7) = iProver_top
% 2.86/0.99      | r2_hidden(sK6,k1_relat_1(sK7)) != iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_3115,c_1567]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3644,plain,
% 2.86/0.99      ( sK5 = k1_xboole_0
% 2.86/0.99      | r2_hidden(sK6,k1_relat_1(sK7)) != iProver_top ),
% 2.86/0.99      inference(superposition,[status(thm)],[c_3392,c_2504]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3658,plain,
% 2.86/0.99      ( ~ r2_hidden(sK6,k1_relat_1(sK7)) | sK5 = k1_xboole_0 ),
% 2.86/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_3644]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_959,plain,
% 2.86/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.86/0.99      theory(equality) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1499,plain,
% 2.86/0.99      ( r2_hidden(X0,X1) | ~ r2_hidden(sK6,sK4) | X1 != sK4 | X0 != sK6 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_959]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_1725,plain,
% 2.86/0.99      ( r2_hidden(sK6,X0)
% 2.86/0.99      | ~ r2_hidden(sK6,sK4)
% 2.86/0.99      | X0 != sK4
% 2.86/0.99      | sK6 != sK6 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_1499]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_3711,plain,
% 2.86/0.99      ( r2_hidden(sK6,k1_relat_1(sK7))
% 2.86/0.99      | ~ r2_hidden(sK6,sK4)
% 2.86/0.99      | k1_relat_1(sK7) != sK4
% 2.86/0.99      | sK6 != sK6 ),
% 2.86/0.99      inference(instantiation,[status(thm)],[c_1725]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_5030,plain,
% 2.86/0.99      ( k3_tarski(k1_xboole_0) = sK5 ),
% 2.86/0.99      inference(global_propositional_subsumption,
% 2.86/0.99                [status(thm)],
% 2.86/0.99                [c_4940,c_29,c_28,c_1489,c_1726,c_1778,c_3115,c_3658,
% 2.86/0.99                 c_3711]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(c_5340,plain,
% 2.86/0.99      ( sK5 = k1_xboole_0 ),
% 2.86/0.99      inference(demodulation,[status(thm)],[c_4488,c_5030]) ).
% 2.86/0.99  
% 2.86/0.99  cnf(contradiction,plain,
% 2.86/0.99      ( $false ),
% 2.86/0.99      inference(minisat,[status(thm)],[c_5340,c_3115,c_1489,c_28]) ).
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.86/0.99  
% 2.86/0.99  ------                               Statistics
% 2.86/0.99  
% 2.86/0.99  ------ General
% 2.86/0.99  
% 2.86/0.99  abstr_ref_over_cycles:                  0
% 2.86/0.99  abstr_ref_under_cycles:                 0
% 2.86/0.99  gc_basic_clause_elim:                   0
% 2.86/0.99  forced_gc_time:                         0
% 2.86/0.99  parsing_time:                           0.012
% 2.86/0.99  unif_index_cands_time:                  0.
% 2.86/0.99  unif_index_add_time:                    0.
% 2.86/0.99  orderings_time:                         0.
% 2.86/0.99  out_proof_time:                         0.012
% 2.86/0.99  total_time:                             0.183
% 2.86/0.99  num_of_symbols:                         55
% 2.86/0.99  num_of_terms:                           5279
% 2.86/0.99  
% 2.86/0.99  ------ Preprocessing
% 2.86/0.99  
% 2.86/0.99  num_of_splits:                          0
% 2.86/0.99  num_of_split_atoms:                     0
% 2.86/0.99  num_of_reused_defs:                     0
% 2.86/0.99  num_eq_ax_congr_red:                    38
% 2.86/0.99  num_of_sem_filtered_clauses:            1
% 2.86/0.99  num_of_subtypes:                        0
% 2.86/0.99  monotx_restored_types:                  0
% 2.86/0.99  sat_num_of_epr_types:                   0
% 2.86/0.99  sat_num_of_non_cyclic_types:            0
% 2.86/0.99  sat_guarded_non_collapsed_types:        0
% 2.86/0.99  num_pure_diseq_elim:                    0
% 2.86/0.99  simp_replaced_by:                       0
% 2.86/0.99  res_preprocessed:                       132
% 2.86/0.99  prep_upred:                             0
% 2.86/0.99  prep_unflattend:                        33
% 2.86/0.99  smt_new_axioms:                         0
% 2.86/0.99  pred_elim_cands:                        2
% 2.86/0.99  pred_elim:                              4
% 2.86/0.99  pred_elim_cl:                           7
% 2.86/0.99  pred_elim_cycles:                       8
% 2.86/0.99  merged_defs:                            0
% 2.86/0.99  merged_defs_ncl:                        0
% 2.86/0.99  bin_hyper_res:                          0
% 2.86/0.99  prep_cycles:                            4
% 2.86/0.99  pred_elim_time:                         0.011
% 2.86/0.99  splitting_time:                         0.
% 2.86/0.99  sem_filter_time:                        0.
% 2.86/0.99  monotx_time:                            0.
% 2.86/0.99  subtype_inf_time:                       0.
% 2.86/0.99  
% 2.86/0.99  ------ Problem properties
% 2.86/0.99  
% 2.86/0.99  clauses:                                25
% 2.86/0.99  conjectures:                            2
% 2.86/0.99  epr:                                    2
% 2.86/0.99  horn:                                   19
% 2.86/0.99  ground:                                 5
% 2.86/0.99  unary:                                  4
% 2.86/0.99  binary:                                 9
% 2.86/0.99  lits:                                   61
% 2.86/0.99  lits_eq:                                26
% 2.86/0.99  fd_pure:                                0
% 2.86/0.99  fd_pseudo:                              0
% 2.86/0.99  fd_cond:                                3
% 2.86/0.99  fd_pseudo_cond:                         5
% 2.86/0.99  ac_symbols:                             0
% 2.86/0.99  
% 2.86/0.99  ------ Propositional Solver
% 2.86/0.99  
% 2.86/0.99  prop_solver_calls:                      27
% 2.86/0.99  prop_fast_solver_calls:                 917
% 2.86/0.99  smt_solver_calls:                       0
% 2.86/0.99  smt_fast_solver_calls:                  0
% 2.86/0.99  prop_num_of_clauses:                    1760
% 2.86/0.99  prop_preprocess_simplified:             5550
% 2.86/0.99  prop_fo_subsumed:                       13
% 2.86/0.99  prop_solver_time:                       0.
% 2.86/0.99  smt_solver_time:                        0.
% 2.86/0.99  smt_fast_solver_time:                   0.
% 2.86/0.99  prop_fast_solver_time:                  0.
% 2.86/0.99  prop_unsat_core_time:                   0.
% 2.86/0.99  
% 2.86/0.99  ------ QBF
% 2.86/0.99  
% 2.86/0.99  qbf_q_res:                              0
% 2.86/0.99  qbf_num_tautologies:                    0
% 2.86/0.99  qbf_prep_cycles:                        0
% 2.86/0.99  
% 2.86/0.99  ------ BMC1
% 2.86/0.99  
% 2.86/0.99  bmc1_current_bound:                     -1
% 2.86/0.99  bmc1_last_solved_bound:                 -1
% 2.86/0.99  bmc1_unsat_core_size:                   -1
% 2.86/0.99  bmc1_unsat_core_parents_size:           -1
% 2.86/0.99  bmc1_merge_next_fun:                    0
% 2.86/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.86/0.99  
% 2.86/0.99  ------ Instantiation
% 2.86/0.99  
% 2.86/0.99  inst_num_of_clauses:                    435
% 2.86/0.99  inst_num_in_passive:                    100
% 2.86/0.99  inst_num_in_active:                     214
% 2.86/0.99  inst_num_in_unprocessed:                121
% 2.86/0.99  inst_num_of_loops:                      290
% 2.86/0.99  inst_num_of_learning_restarts:          0
% 2.86/0.99  inst_num_moves_active_passive:          74
% 2.86/0.99  inst_lit_activity:                      0
% 2.86/0.99  inst_lit_activity_moves:                0
% 2.86/0.99  inst_num_tautologies:                   0
% 2.86/0.99  inst_num_prop_implied:                  0
% 2.86/0.99  inst_num_existing_simplified:           0
% 2.86/0.99  inst_num_eq_res_simplified:             0
% 2.86/0.99  inst_num_child_elim:                    0
% 2.86/0.99  inst_num_of_dismatching_blockings:      117
% 2.86/0.99  inst_num_of_non_proper_insts:           377
% 2.86/0.99  inst_num_of_duplicates:                 0
% 2.86/0.99  inst_inst_num_from_inst_to_res:         0
% 2.86/0.99  inst_dismatching_checking_time:         0.
% 2.86/0.99  
% 2.86/0.99  ------ Resolution
% 2.86/0.99  
% 2.86/0.99  res_num_of_clauses:                     0
% 2.86/0.99  res_num_in_passive:                     0
% 2.86/0.99  res_num_in_active:                      0
% 2.86/0.99  res_num_of_loops:                       136
% 2.86/0.99  res_forward_subset_subsumed:            48
% 2.86/0.99  res_backward_subset_subsumed:           0
% 2.86/0.99  res_forward_subsumed:                   0
% 2.86/0.99  res_backward_subsumed:                  0
% 2.86/0.99  res_forward_subsumption_resolution:     0
% 2.86/0.99  res_backward_subsumption_resolution:    0
% 2.86/0.99  res_clause_to_clause_subsumption:       364
% 2.86/0.99  res_orphan_elimination:                 0
% 2.86/0.99  res_tautology_del:                      32
% 2.86/0.99  res_num_eq_res_simplified:              1
% 2.86/0.99  res_num_sel_changes:                    0
% 2.86/0.99  res_moves_from_active_to_pass:          0
% 2.86/0.99  
% 2.86/0.99  ------ Superposition
% 2.86/0.99  
% 2.86/0.99  sup_time_total:                         0.
% 2.86/0.99  sup_time_generating:                    0.
% 2.86/0.99  sup_time_sim_full:                      0.
% 2.86/0.99  sup_time_sim_immed:                     0.
% 2.86/0.99  
% 2.86/0.99  sup_num_of_clauses:                     125
% 2.86/0.99  sup_num_in_active:                      23
% 2.86/0.99  sup_num_in_passive:                     102
% 2.86/0.99  sup_num_of_loops:                       57
% 2.86/0.99  sup_fw_superposition:                   87
% 2.86/0.99  sup_bw_superposition:                   41
% 2.86/0.99  sup_immediate_simplified:               19
% 2.86/0.99  sup_given_eliminated:                   1
% 2.86/0.99  comparisons_done:                       0
% 2.86/0.99  comparisons_avoided:                    12
% 2.86/0.99  
% 2.86/0.99  ------ Simplifications
% 2.86/0.99  
% 2.86/0.99  
% 2.86/0.99  sim_fw_subset_subsumed:                 9
% 2.86/0.99  sim_bw_subset_subsumed:                 1
% 2.86/0.99  sim_fw_subsumed:                        8
% 2.86/0.99  sim_bw_subsumed:                        1
% 2.86/0.99  sim_fw_subsumption_res:                 1
% 2.86/0.99  sim_bw_subsumption_res:                 0
% 2.86/0.99  sim_tautology_del:                      1
% 2.86/0.99  sim_eq_tautology_del:                   6
% 2.86/0.99  sim_eq_res_simp:                        0
% 2.86/0.99  sim_fw_demodulated:                     1
% 2.86/0.99  sim_bw_demodulated:                     34
% 2.86/0.99  sim_light_normalised:                   2
% 2.86/0.99  sim_joinable_taut:                      0
% 2.86/0.99  sim_joinable_simp:                      0
% 2.86/0.99  sim_ac_normalised:                      0
% 2.86/0.99  sim_smt_subsumption:                    0
% 2.86/0.99  
%------------------------------------------------------------------------------
