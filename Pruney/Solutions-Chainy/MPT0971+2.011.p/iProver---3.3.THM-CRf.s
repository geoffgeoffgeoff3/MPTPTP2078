%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:02 EST 2020

% Result     : Theorem 1.63s
% Output     : CNFRefutation 1.63s
% Verified   : 
% Statistics : Number of formulae       :  137 ( 351 expanded)
%              Number of clauses        :   79 ( 116 expanded)
%              Number of leaves         :   17 (  73 expanded)
%              Depth                    :   21
%              Number of atoms          :  439 (1616 expanded)
%              Number of equality atoms :  184 ( 435 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   16 (   2 average)
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
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
    inference(flattening,[],[f21])).

fof(f36,plain,(
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
    inference(nnf_transformation,[],[f22])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f11,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ~ ( ! [X4] :
              ~ ( k1_funct_1(X3,X4) = X2
                & r2_hidden(X4,X0) )
          & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ~ ( k1_funct_1(X3,X4) = X2
                  & r2_hidden(X4,X0) )
            & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f23,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f24,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f23])).

fof(f37,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4] :
            ( k1_funct_1(X3,X4) != X2
            | ~ r2_hidden(X4,X0) )
        & r2_hidden(X2,k2_relset_1(X0,X1,X3))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ! [X4] :
          ( k1_funct_1(sK7,X4) != sK6
          | ~ r2_hidden(X4,sK4) )
      & r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7))
      & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
      & v1_funct_2(sK7,sK4,sK5)
      & v1_funct_1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ! [X4] :
        ( k1_funct_1(sK7,X4) != sK6
        | ~ r2_hidden(X4,sK4) )
    & r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7))
    & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    & v1_funct_2(sK7,sK4,sK5)
    & v1_funct_1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f24,f37])).

fof(f63,plain,(
    v1_funct_2(sK7,sK4,sK5) ),
    inference(cnf_transformation,[],[f38])).

fof(f64,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f14])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X2] :
                ( ( r2_hidden(X2,X1)
                  | ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) ) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X4] :
                      ( k1_funct_1(X0,X4) = X2
                      & r2_hidden(X4,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ? [X7] :
                      ( k1_funct_1(X0,X7) = X5
                      & r2_hidden(X7,k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f30])).

fof(f34,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( k1_funct_1(X0,X7) = X5
          & r2_hidden(X7,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK3(X0,X5)) = X5
        & r2_hidden(sK3(X0,X5),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( k1_funct_1(X0,X4) = X2
          & r2_hidden(X4,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK2(X0,X1)) = X2
        & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] :
                ( k1_funct_1(X0,X3) != X2
                | ~ r2_hidden(X3,k1_relat_1(X0)) )
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] :
                ( k1_funct_1(X0,X4) = X2
                & r2_hidden(X4,k1_relat_1(X0)) )
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] :
              ( k1_funct_1(X0,X3) != sK1(X0,X1)
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( ? [X4] :
              ( k1_funct_1(X0,X4) = sK1(X0,X1)
              & r2_hidden(X4,k1_relat_1(X0)) )
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ( ( ! [X3] :
                    ( k1_funct_1(X0,X3) != sK1(X0,X1)
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                | ~ r2_hidden(sK1(X0,X1),X1) )
              & ( ( k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1)
                  & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) )
                | r2_hidden(sK1(X0,X1),X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ( k1_funct_1(X0,sK3(X0,X5)) = X5
                    & r2_hidden(sK3(X0,X5),k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f31,f34,f33,f32])).

fof(f45,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(sK3(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f70,plain,(
    ! [X0,X5] :
      ( r2_hidden(sK3(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f45])).

fof(f62,plain,(
    v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f25])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f65,plain,(
    r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) ),
    inference(cnf_transformation,[],[f38])).

fof(f46,plain,(
    ! [X0,X5,X1] :
      ( k1_funct_1(X0,sK3(X0,X5)) = X5
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f69,plain,(
    ! [X0,X5] :
      ( k1_funct_1(X0,sK3(X0,X5)) = X5
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f46])).

fof(f66,plain,(
    ! [X4] :
      ( k1_funct_1(sK7,X4) != sK6
      | ~ r2_hidden(X4,sK4) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK7,sK4,sK5) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_827,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK5 != X2
    | sK4 != X1
    | sK7 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_26])).

cnf(c_828,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | k1_relset_1(sK4,sK5,sK7) = sK4
    | k1_xboole_0 = sK5 ),
    inference(unflattening,[status(thm)],[c_827])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_830,plain,
    ( k1_relset_1(sK4,sK5,sK7) = sK4
    | k1_xboole_0 = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_828,c_25])).

cnf(c_1865,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1869,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2846,plain,
    ( k1_relset_1(sK4,sK5,sK7) = k1_relat_1(sK7) ),
    inference(superposition,[status(thm)],[c_1865,c_1869])).

cnf(c_3033,plain,
    ( k1_relat_1(sK7) = sK4
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_830,c_2846])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK3(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK7) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_413,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK3(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_27])).

cnf(c_414,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK7))
    | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7))
    | ~ v1_relat_1(sK7) ),
    inference(unflattening,[status(thm)],[c_413])).

cnf(c_1862,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_414])).

cnf(c_30,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_415,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_414])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_2053,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | v1_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_2054,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
    | v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2053])).

cnf(c_2118,plain,
    ( r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
    | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1862,c_30,c_415,c_2054])).

cnf(c_2119,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top ),
    inference(renaming,[status(thm)],[c_2118])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1876,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3421,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | r2_hidden(sK3(sK7,X0),X1) = iProver_top
    | r1_tarski(k1_relat_1(sK7),X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2119,c_1876])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1868,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2662,plain,
    ( k2_relset_1(sK4,sK5,sK7) = k2_relat_1(sK7) ),
    inference(superposition,[status(thm)],[c_1865,c_1868])).

cnf(c_24,negated_conjecture,
    ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1866,plain,
    ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2910,plain,
    ( r2_hidden(sK6,k2_relat_1(sK7)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2662,c_1866])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,sK3(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_428,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,sK3(X1,X0)) = X0
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_27])).

cnf(c_429,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK7))
    | ~ v1_relat_1(sK7)
    | k1_funct_1(sK7,sK3(sK7,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_428])).

cnf(c_1861,plain,
    ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_429])).

cnf(c_430,plain,
    ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_429])).

cnf(c_2073,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | k1_funct_1(sK7,sK3(sK7,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1861,c_30,c_430,c_2054])).

cnf(c_2074,plain,
    ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2073])).

cnf(c_3029,plain,
    ( k1_funct_1(sK7,sK3(sK7,sK6)) = sK6 ),
    inference(superposition,[status(thm)],[c_2910,c_2074])).

cnf(c_23,negated_conjecture,
    ( ~ r2_hidden(X0,sK4)
    | k1_funct_1(sK7,X0) != sK6 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1867,plain,
    ( k1_funct_1(sK7,X0) != sK6
    | r2_hidden(X0,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_3269,plain,
    ( r2_hidden(sK3(sK7,sK6),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3029,c_1867])).

cnf(c_3879,plain,
    ( r2_hidden(sK6,k2_relat_1(sK7)) != iProver_top
    | r1_tarski(k1_relat_1(sK7),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3421,c_3269])).

cnf(c_3922,plain,
    ( r1_tarski(k1_relat_1(sK7),sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3879,c_2910])).

cnf(c_3927,plain,
    ( sK5 = k1_xboole_0
    | r1_tarski(sK4,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3033,c_3922])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1877,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1878,plain,
    ( r2_hidden(sK0(X0,X1),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2840,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1877,c_1878])).

cnf(c_4021,plain,
    ( sK5 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3927,c_2840])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1870,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3375,plain,
    ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(sK5)) = iProver_top
    | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2662,c_1870])).

cnf(c_3692,plain,
    ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(sK5)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3375,c_30])).

cnf(c_4022,plain,
    ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4021,c_3692])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_3109,plain,
    ( ~ m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(X0))
    | r1_tarski(k2_relat_1(sK7),X0) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_3110,plain,
    ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(X0)) != iProver_top
    | r1_tarski(k2_relat_1(sK7),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3109])).

cnf(c_3112,plain,
    ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | r1_tarski(k2_relat_1(sK7),k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3110])).

cnf(c_1300,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_2161,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k2_relset_1(sK4,sK5,sK7),X1)
    | k2_relset_1(sK4,sK5,sK7) != X0 ),
    inference(instantiation,[status(thm)],[c_1300])).

cnf(c_2738,plain,
    ( r1_tarski(k2_relset_1(sK4,sK5,sK7),X0)
    | ~ r1_tarski(k2_relat_1(sK7),X0)
    | k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_2161])).

cnf(c_2739,plain,
    ( k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7)
    | r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) = iProver_top
    | r1_tarski(k2_relat_1(sK7),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2738])).

cnf(c_2741,plain,
    ( k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7)
    | r1_tarski(k2_relset_1(sK4,sK5,sK7),k1_xboole_0) = iProver_top
    | r1_tarski(k2_relat_1(sK7),k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2739])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_2342,plain,
    ( ~ r2_hidden(sK6,X0)
    | ~ r1_tarski(X0,sK6) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_2343,plain,
    ( r2_hidden(sK6,X0) != iProver_top
    | r1_tarski(X0,sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2342])).

cnf(c_2345,plain,
    ( r2_hidden(sK6,k1_xboole_0) != iProver_top
    | r1_tarski(k1_xboole_0,sK6) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2343])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_2330,plain,
    ( r1_tarski(k1_xboole_0,sK6) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_2333,plain,
    ( r1_tarski(k1_xboole_0,sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2330])).

cnf(c_2090,plain,
    ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | k2_relset_1(sK4,sK5,sK7) = k2_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_2061,plain,
    ( r2_hidden(sK6,X0)
    | ~ r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7))
    | ~ r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2062,plain,
    ( r2_hidden(sK6,X0) = iProver_top
    | r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) != iProver_top
    | r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2061])).

cnf(c_2064,plain,
    ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) != iProver_top
    | r2_hidden(sK6,k1_xboole_0) = iProver_top
    | r1_tarski(k2_relset_1(sK4,sK5,sK7),k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2062])).

cnf(c_31,plain,
    ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4022,c_3112,c_2741,c_2345,c_2333,c_2090,c_2064,c_31,c_25])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n001.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:02:00 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 1.63/1.05  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.63/1.05  
% 1.63/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.63/1.05  
% 1.63/1.05  ------  iProver source info
% 1.63/1.05  
% 1.63/1.05  git: date: 2020-06-30 10:37:57 +0100
% 1.63/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.63/1.05  git: non_committed_changes: false
% 1.63/1.05  git: last_make_outside_of_git: false
% 1.63/1.05  
% 1.63/1.05  ------ 
% 1.63/1.05  
% 1.63/1.05  ------ Input Options
% 1.63/1.05  
% 1.63/1.05  --out_options                           all
% 1.63/1.05  --tptp_safe_out                         true
% 1.63/1.05  --problem_path                          ""
% 1.63/1.05  --include_path                          ""
% 1.63/1.05  --clausifier                            res/vclausify_rel
% 1.63/1.05  --clausifier_options                    --mode clausify
% 1.63/1.05  --stdin                                 false
% 1.63/1.05  --stats_out                             all
% 1.63/1.05  
% 1.63/1.05  ------ General Options
% 1.63/1.05  
% 1.63/1.05  --fof                                   false
% 1.63/1.05  --time_out_real                         305.
% 1.63/1.05  --time_out_virtual                      -1.
% 1.63/1.05  --symbol_type_check                     false
% 1.63/1.05  --clausify_out                          false
% 1.63/1.05  --sig_cnt_out                           false
% 1.63/1.05  --trig_cnt_out                          false
% 1.63/1.05  --trig_cnt_out_tolerance                1.
% 1.63/1.05  --trig_cnt_out_sk_spl                   false
% 1.63/1.05  --abstr_cl_out                          false
% 1.63/1.05  
% 1.63/1.05  ------ Global Options
% 1.63/1.05  
% 1.63/1.05  --schedule                              default
% 1.63/1.05  --add_important_lit                     false
% 1.63/1.05  --prop_solver_per_cl                    1000
% 1.63/1.05  --min_unsat_core                        false
% 1.63/1.05  --soft_assumptions                      false
% 1.63/1.05  --soft_lemma_size                       3
% 1.63/1.05  --prop_impl_unit_size                   0
% 1.63/1.05  --prop_impl_unit                        []
% 1.63/1.05  --share_sel_clauses                     true
% 1.63/1.05  --reset_solvers                         false
% 1.63/1.05  --bc_imp_inh                            [conj_cone]
% 1.63/1.05  --conj_cone_tolerance                   3.
% 1.63/1.05  --extra_neg_conj                        none
% 1.63/1.05  --large_theory_mode                     true
% 1.63/1.05  --prolific_symb_bound                   200
% 1.63/1.05  --lt_threshold                          2000
% 1.63/1.05  --clause_weak_htbl                      true
% 1.63/1.05  --gc_record_bc_elim                     false
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing Options
% 1.63/1.05  
% 1.63/1.05  --preprocessing_flag                    true
% 1.63/1.05  --time_out_prep_mult                    0.1
% 1.63/1.05  --splitting_mode                        input
% 1.63/1.05  --splitting_grd                         true
% 1.63/1.05  --splitting_cvd                         false
% 1.63/1.05  --splitting_cvd_svl                     false
% 1.63/1.05  --splitting_nvd                         32
% 1.63/1.05  --sub_typing                            true
% 1.63/1.05  --prep_gs_sim                           true
% 1.63/1.05  --prep_unflatten                        true
% 1.63/1.05  --prep_res_sim                          true
% 1.63/1.05  --prep_upred                            true
% 1.63/1.05  --prep_sem_filter                       exhaustive
% 1.63/1.05  --prep_sem_filter_out                   false
% 1.63/1.05  --pred_elim                             true
% 1.63/1.05  --res_sim_input                         true
% 1.63/1.05  --eq_ax_congr_red                       true
% 1.63/1.05  --pure_diseq_elim                       true
% 1.63/1.05  --brand_transform                       false
% 1.63/1.05  --non_eq_to_eq                          false
% 1.63/1.05  --prep_def_merge                        true
% 1.63/1.05  --prep_def_merge_prop_impl              false
% 1.63/1.05  --prep_def_merge_mbd                    true
% 1.63/1.05  --prep_def_merge_tr_red                 false
% 1.63/1.05  --prep_def_merge_tr_cl                  false
% 1.63/1.05  --smt_preprocessing                     true
% 1.63/1.05  --smt_ac_axioms                         fast
% 1.63/1.05  --preprocessed_out                      false
% 1.63/1.05  --preprocessed_stats                    false
% 1.63/1.05  
% 1.63/1.05  ------ Abstraction refinement Options
% 1.63/1.05  
% 1.63/1.05  --abstr_ref                             []
% 1.63/1.05  --abstr_ref_prep                        false
% 1.63/1.05  --abstr_ref_until_sat                   false
% 1.63/1.05  --abstr_ref_sig_restrict                funpre
% 1.63/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 1.63/1.05  --abstr_ref_under                       []
% 1.63/1.05  
% 1.63/1.05  ------ SAT Options
% 1.63/1.05  
% 1.63/1.05  --sat_mode                              false
% 1.63/1.05  --sat_fm_restart_options                ""
% 1.63/1.05  --sat_gr_def                            false
% 1.63/1.05  --sat_epr_types                         true
% 1.63/1.05  --sat_non_cyclic_types                  false
% 1.63/1.05  --sat_finite_models                     false
% 1.63/1.05  --sat_fm_lemmas                         false
% 1.63/1.05  --sat_fm_prep                           false
% 1.63/1.05  --sat_fm_uc_incr                        true
% 1.63/1.05  --sat_out_model                         small
% 1.63/1.05  --sat_out_clauses                       false
% 1.63/1.05  
% 1.63/1.05  ------ QBF Options
% 1.63/1.05  
% 1.63/1.05  --qbf_mode                              false
% 1.63/1.05  --qbf_elim_univ                         false
% 1.63/1.05  --qbf_dom_inst                          none
% 1.63/1.05  --qbf_dom_pre_inst                      false
% 1.63/1.05  --qbf_sk_in                             false
% 1.63/1.05  --qbf_pred_elim                         true
% 1.63/1.05  --qbf_split                             512
% 1.63/1.05  
% 1.63/1.05  ------ BMC1 Options
% 1.63/1.05  
% 1.63/1.05  --bmc1_incremental                      false
% 1.63/1.05  --bmc1_axioms                           reachable_all
% 1.63/1.05  --bmc1_min_bound                        0
% 1.63/1.05  --bmc1_max_bound                        -1
% 1.63/1.05  --bmc1_max_bound_default                -1
% 1.63/1.05  --bmc1_symbol_reachability              true
% 1.63/1.05  --bmc1_property_lemmas                  false
% 1.63/1.05  --bmc1_k_induction                      false
% 1.63/1.05  --bmc1_non_equiv_states                 false
% 1.63/1.05  --bmc1_deadlock                         false
% 1.63/1.05  --bmc1_ucm                              false
% 1.63/1.05  --bmc1_add_unsat_core                   none
% 1.63/1.05  --bmc1_unsat_core_children              false
% 1.63/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 1.63/1.05  --bmc1_out_stat                         full
% 1.63/1.05  --bmc1_ground_init                      false
% 1.63/1.05  --bmc1_pre_inst_next_state              false
% 1.63/1.05  --bmc1_pre_inst_state                   false
% 1.63/1.05  --bmc1_pre_inst_reach_state             false
% 1.63/1.05  --bmc1_out_unsat_core                   false
% 1.63/1.05  --bmc1_aig_witness_out                  false
% 1.63/1.05  --bmc1_verbose                          false
% 1.63/1.05  --bmc1_dump_clauses_tptp                false
% 1.63/1.05  --bmc1_dump_unsat_core_tptp             false
% 1.63/1.05  --bmc1_dump_file                        -
% 1.63/1.05  --bmc1_ucm_expand_uc_limit              128
% 1.63/1.05  --bmc1_ucm_n_expand_iterations          6
% 1.63/1.05  --bmc1_ucm_extend_mode                  1
% 1.63/1.05  --bmc1_ucm_init_mode                    2
% 1.63/1.05  --bmc1_ucm_cone_mode                    none
% 1.63/1.05  --bmc1_ucm_reduced_relation_type        0
% 1.63/1.05  --bmc1_ucm_relax_model                  4
% 1.63/1.05  --bmc1_ucm_full_tr_after_sat            true
% 1.63/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 1.63/1.05  --bmc1_ucm_layered_model                none
% 1.63/1.05  --bmc1_ucm_max_lemma_size               10
% 1.63/1.05  
% 1.63/1.05  ------ AIG Options
% 1.63/1.05  
% 1.63/1.05  --aig_mode                              false
% 1.63/1.05  
% 1.63/1.05  ------ Instantiation Options
% 1.63/1.05  
% 1.63/1.05  --instantiation_flag                    true
% 1.63/1.05  --inst_sos_flag                         false
% 1.63/1.05  --inst_sos_phase                        true
% 1.63/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.63/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.63/1.05  --inst_lit_sel_side                     num_symb
% 1.63/1.05  --inst_solver_per_active                1400
% 1.63/1.05  --inst_solver_calls_frac                1.
% 1.63/1.05  --inst_passive_queue_type               priority_queues
% 1.63/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.63/1.05  --inst_passive_queues_freq              [25;2]
% 1.63/1.05  --inst_dismatching                      true
% 1.63/1.05  --inst_eager_unprocessed_to_passive     true
% 1.63/1.05  --inst_prop_sim_given                   true
% 1.63/1.05  --inst_prop_sim_new                     false
% 1.63/1.05  --inst_subs_new                         false
% 1.63/1.05  --inst_eq_res_simp                      false
% 1.63/1.05  --inst_subs_given                       false
% 1.63/1.05  --inst_orphan_elimination               true
% 1.63/1.05  --inst_learning_loop_flag               true
% 1.63/1.05  --inst_learning_start                   3000
% 1.63/1.05  --inst_learning_factor                  2
% 1.63/1.05  --inst_start_prop_sim_after_learn       3
% 1.63/1.05  --inst_sel_renew                        solver
% 1.63/1.05  --inst_lit_activity_flag                true
% 1.63/1.05  --inst_restr_to_given                   false
% 1.63/1.05  --inst_activity_threshold               500
% 1.63/1.05  --inst_out_proof                        true
% 1.63/1.05  
% 1.63/1.05  ------ Resolution Options
% 1.63/1.05  
% 1.63/1.05  --resolution_flag                       true
% 1.63/1.05  --res_lit_sel                           adaptive
% 1.63/1.05  --res_lit_sel_side                      none
% 1.63/1.05  --res_ordering                          kbo
% 1.63/1.05  --res_to_prop_solver                    active
% 1.63/1.05  --res_prop_simpl_new                    false
% 1.63/1.05  --res_prop_simpl_given                  true
% 1.63/1.05  --res_passive_queue_type                priority_queues
% 1.63/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.63/1.05  --res_passive_queues_freq               [15;5]
% 1.63/1.05  --res_forward_subs                      full
% 1.63/1.05  --res_backward_subs                     full
% 1.63/1.05  --res_forward_subs_resolution           true
% 1.63/1.05  --res_backward_subs_resolution          true
% 1.63/1.05  --res_orphan_elimination                true
% 1.63/1.05  --res_time_limit                        2.
% 1.63/1.05  --res_out_proof                         true
% 1.63/1.05  
% 1.63/1.05  ------ Superposition Options
% 1.63/1.05  
% 1.63/1.05  --superposition_flag                    true
% 1.63/1.05  --sup_passive_queue_type                priority_queues
% 1.63/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.63/1.05  --sup_passive_queues_freq               [8;1;4]
% 1.63/1.05  --demod_completeness_check              fast
% 1.63/1.05  --demod_use_ground                      true
% 1.63/1.05  --sup_to_prop_solver                    passive
% 1.63/1.05  --sup_prop_simpl_new                    true
% 1.63/1.05  --sup_prop_simpl_given                  true
% 1.63/1.05  --sup_fun_splitting                     false
% 1.63/1.05  --sup_smt_interval                      50000
% 1.63/1.05  
% 1.63/1.05  ------ Superposition Simplification Setup
% 1.63/1.05  
% 1.63/1.05  --sup_indices_passive                   []
% 1.63/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 1.63/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_full_bw                           [BwDemod]
% 1.63/1.05  --sup_immed_triv                        [TrivRules]
% 1.63/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.63/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_immed_bw_main                     []
% 1.63/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.63/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 1.63/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.63/1.05  
% 1.63/1.05  ------ Combination Options
% 1.63/1.05  
% 1.63/1.05  --comb_res_mult                         3
% 1.63/1.05  --comb_sup_mult                         2
% 1.63/1.05  --comb_inst_mult                        10
% 1.63/1.05  
% 1.63/1.05  ------ Debug Options
% 1.63/1.05  
% 1.63/1.05  --dbg_backtrace                         false
% 1.63/1.05  --dbg_dump_prop_clauses                 false
% 1.63/1.05  --dbg_dump_prop_clauses_file            -
% 1.63/1.05  --dbg_out_stat                          false
% 1.63/1.05  ------ Parsing...
% 1.63/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.63/1.05  ------ Proving...
% 1.63/1.05  ------ Problem Properties 
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  clauses                                 23
% 1.63/1.05  conjectures                             3
% 1.63/1.05  EPR                                     3
% 1.63/1.05  Horn                                    18
% 1.63/1.05  unary                                   3
% 1.63/1.05  binary                                  11
% 1.63/1.05  lits                                    57
% 1.63/1.05  lits eq                                 16
% 1.63/1.05  fd_pure                                 0
% 1.63/1.05  fd_pseudo                               0
% 1.63/1.05  fd_cond                                 3
% 1.63/1.05  fd_pseudo_cond                          0
% 1.63/1.05  AC symbols                              0
% 1.63/1.05  
% 1.63/1.05  ------ Schedule dynamic 5 is on 
% 1.63/1.05  
% 1.63/1.05  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  ------ 
% 1.63/1.05  Current options:
% 1.63/1.05  ------ 
% 1.63/1.05  
% 1.63/1.05  ------ Input Options
% 1.63/1.05  
% 1.63/1.05  --out_options                           all
% 1.63/1.05  --tptp_safe_out                         true
% 1.63/1.05  --problem_path                          ""
% 1.63/1.05  --include_path                          ""
% 1.63/1.05  --clausifier                            res/vclausify_rel
% 1.63/1.05  --clausifier_options                    --mode clausify
% 1.63/1.05  --stdin                                 false
% 1.63/1.05  --stats_out                             all
% 1.63/1.05  
% 1.63/1.05  ------ General Options
% 1.63/1.05  
% 1.63/1.05  --fof                                   false
% 1.63/1.05  --time_out_real                         305.
% 1.63/1.05  --time_out_virtual                      -1.
% 1.63/1.05  --symbol_type_check                     false
% 1.63/1.05  --clausify_out                          false
% 1.63/1.05  --sig_cnt_out                           false
% 1.63/1.05  --trig_cnt_out                          false
% 1.63/1.05  --trig_cnt_out_tolerance                1.
% 1.63/1.05  --trig_cnt_out_sk_spl                   false
% 1.63/1.05  --abstr_cl_out                          false
% 1.63/1.05  
% 1.63/1.05  ------ Global Options
% 1.63/1.05  
% 1.63/1.05  --schedule                              default
% 1.63/1.05  --add_important_lit                     false
% 1.63/1.05  --prop_solver_per_cl                    1000
% 1.63/1.05  --min_unsat_core                        false
% 1.63/1.05  --soft_assumptions                      false
% 1.63/1.05  --soft_lemma_size                       3
% 1.63/1.05  --prop_impl_unit_size                   0
% 1.63/1.05  --prop_impl_unit                        []
% 1.63/1.05  --share_sel_clauses                     true
% 1.63/1.05  --reset_solvers                         false
% 1.63/1.05  --bc_imp_inh                            [conj_cone]
% 1.63/1.05  --conj_cone_tolerance                   3.
% 1.63/1.05  --extra_neg_conj                        none
% 1.63/1.05  --large_theory_mode                     true
% 1.63/1.05  --prolific_symb_bound                   200
% 1.63/1.05  --lt_threshold                          2000
% 1.63/1.05  --clause_weak_htbl                      true
% 1.63/1.05  --gc_record_bc_elim                     false
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing Options
% 1.63/1.05  
% 1.63/1.05  --preprocessing_flag                    true
% 1.63/1.05  --time_out_prep_mult                    0.1
% 1.63/1.05  --splitting_mode                        input
% 1.63/1.05  --splitting_grd                         true
% 1.63/1.05  --splitting_cvd                         false
% 1.63/1.05  --splitting_cvd_svl                     false
% 1.63/1.05  --splitting_nvd                         32
% 1.63/1.05  --sub_typing                            true
% 1.63/1.05  --prep_gs_sim                           true
% 1.63/1.05  --prep_unflatten                        true
% 1.63/1.05  --prep_res_sim                          true
% 1.63/1.05  --prep_upred                            true
% 1.63/1.05  --prep_sem_filter                       exhaustive
% 1.63/1.05  --prep_sem_filter_out                   false
% 1.63/1.05  --pred_elim                             true
% 1.63/1.05  --res_sim_input                         true
% 1.63/1.05  --eq_ax_congr_red                       true
% 1.63/1.05  --pure_diseq_elim                       true
% 1.63/1.05  --brand_transform                       false
% 1.63/1.05  --non_eq_to_eq                          false
% 1.63/1.05  --prep_def_merge                        true
% 1.63/1.05  --prep_def_merge_prop_impl              false
% 1.63/1.05  --prep_def_merge_mbd                    true
% 1.63/1.05  --prep_def_merge_tr_red                 false
% 1.63/1.05  --prep_def_merge_tr_cl                  false
% 1.63/1.05  --smt_preprocessing                     true
% 1.63/1.05  --smt_ac_axioms                         fast
% 1.63/1.05  --preprocessed_out                      false
% 1.63/1.05  --preprocessed_stats                    false
% 1.63/1.05  
% 1.63/1.05  ------ Abstraction refinement Options
% 1.63/1.05  
% 1.63/1.05  --abstr_ref                             []
% 1.63/1.05  --abstr_ref_prep                        false
% 1.63/1.05  --abstr_ref_until_sat                   false
% 1.63/1.05  --abstr_ref_sig_restrict                funpre
% 1.63/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 1.63/1.05  --abstr_ref_under                       []
% 1.63/1.05  
% 1.63/1.05  ------ SAT Options
% 1.63/1.05  
% 1.63/1.05  --sat_mode                              false
% 1.63/1.05  --sat_fm_restart_options                ""
% 1.63/1.05  --sat_gr_def                            false
% 1.63/1.05  --sat_epr_types                         true
% 1.63/1.05  --sat_non_cyclic_types                  false
% 1.63/1.05  --sat_finite_models                     false
% 1.63/1.05  --sat_fm_lemmas                         false
% 1.63/1.05  --sat_fm_prep                           false
% 1.63/1.05  --sat_fm_uc_incr                        true
% 1.63/1.05  --sat_out_model                         small
% 1.63/1.05  --sat_out_clauses                       false
% 1.63/1.05  
% 1.63/1.05  ------ QBF Options
% 1.63/1.05  
% 1.63/1.05  --qbf_mode                              false
% 1.63/1.05  --qbf_elim_univ                         false
% 1.63/1.05  --qbf_dom_inst                          none
% 1.63/1.05  --qbf_dom_pre_inst                      false
% 1.63/1.05  --qbf_sk_in                             false
% 1.63/1.05  --qbf_pred_elim                         true
% 1.63/1.05  --qbf_split                             512
% 1.63/1.05  
% 1.63/1.05  ------ BMC1 Options
% 1.63/1.05  
% 1.63/1.05  --bmc1_incremental                      false
% 1.63/1.05  --bmc1_axioms                           reachable_all
% 1.63/1.05  --bmc1_min_bound                        0
% 1.63/1.05  --bmc1_max_bound                        -1
% 1.63/1.05  --bmc1_max_bound_default                -1
% 1.63/1.05  --bmc1_symbol_reachability              true
% 1.63/1.05  --bmc1_property_lemmas                  false
% 1.63/1.05  --bmc1_k_induction                      false
% 1.63/1.05  --bmc1_non_equiv_states                 false
% 1.63/1.05  --bmc1_deadlock                         false
% 1.63/1.05  --bmc1_ucm                              false
% 1.63/1.05  --bmc1_add_unsat_core                   none
% 1.63/1.05  --bmc1_unsat_core_children              false
% 1.63/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 1.63/1.05  --bmc1_out_stat                         full
% 1.63/1.05  --bmc1_ground_init                      false
% 1.63/1.05  --bmc1_pre_inst_next_state              false
% 1.63/1.05  --bmc1_pre_inst_state                   false
% 1.63/1.05  --bmc1_pre_inst_reach_state             false
% 1.63/1.05  --bmc1_out_unsat_core                   false
% 1.63/1.05  --bmc1_aig_witness_out                  false
% 1.63/1.05  --bmc1_verbose                          false
% 1.63/1.05  --bmc1_dump_clauses_tptp                false
% 1.63/1.05  --bmc1_dump_unsat_core_tptp             false
% 1.63/1.05  --bmc1_dump_file                        -
% 1.63/1.05  --bmc1_ucm_expand_uc_limit              128
% 1.63/1.05  --bmc1_ucm_n_expand_iterations          6
% 1.63/1.05  --bmc1_ucm_extend_mode                  1
% 1.63/1.05  --bmc1_ucm_init_mode                    2
% 1.63/1.05  --bmc1_ucm_cone_mode                    none
% 1.63/1.05  --bmc1_ucm_reduced_relation_type        0
% 1.63/1.05  --bmc1_ucm_relax_model                  4
% 1.63/1.05  --bmc1_ucm_full_tr_after_sat            true
% 1.63/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 1.63/1.05  --bmc1_ucm_layered_model                none
% 1.63/1.05  --bmc1_ucm_max_lemma_size               10
% 1.63/1.05  
% 1.63/1.05  ------ AIG Options
% 1.63/1.05  
% 1.63/1.05  --aig_mode                              false
% 1.63/1.05  
% 1.63/1.05  ------ Instantiation Options
% 1.63/1.05  
% 1.63/1.05  --instantiation_flag                    true
% 1.63/1.05  --inst_sos_flag                         false
% 1.63/1.05  --inst_sos_phase                        true
% 1.63/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.63/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.63/1.05  --inst_lit_sel_side                     none
% 1.63/1.05  --inst_solver_per_active                1400
% 1.63/1.05  --inst_solver_calls_frac                1.
% 1.63/1.05  --inst_passive_queue_type               priority_queues
% 1.63/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.63/1.05  --inst_passive_queues_freq              [25;2]
% 1.63/1.05  --inst_dismatching                      true
% 1.63/1.05  --inst_eager_unprocessed_to_passive     true
% 1.63/1.05  --inst_prop_sim_given                   true
% 1.63/1.05  --inst_prop_sim_new                     false
% 1.63/1.05  --inst_subs_new                         false
% 1.63/1.05  --inst_eq_res_simp                      false
% 1.63/1.05  --inst_subs_given                       false
% 1.63/1.05  --inst_orphan_elimination               true
% 1.63/1.05  --inst_learning_loop_flag               true
% 1.63/1.05  --inst_learning_start                   3000
% 1.63/1.05  --inst_learning_factor                  2
% 1.63/1.05  --inst_start_prop_sim_after_learn       3
% 1.63/1.05  --inst_sel_renew                        solver
% 1.63/1.05  --inst_lit_activity_flag                true
% 1.63/1.05  --inst_restr_to_given                   false
% 1.63/1.05  --inst_activity_threshold               500
% 1.63/1.05  --inst_out_proof                        true
% 1.63/1.05  
% 1.63/1.05  ------ Resolution Options
% 1.63/1.05  
% 1.63/1.05  --resolution_flag                       false
% 1.63/1.05  --res_lit_sel                           adaptive
% 1.63/1.05  --res_lit_sel_side                      none
% 1.63/1.05  --res_ordering                          kbo
% 1.63/1.05  --res_to_prop_solver                    active
% 1.63/1.05  --res_prop_simpl_new                    false
% 1.63/1.05  --res_prop_simpl_given                  true
% 1.63/1.05  --res_passive_queue_type                priority_queues
% 1.63/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.63/1.05  --res_passive_queues_freq               [15;5]
% 1.63/1.05  --res_forward_subs                      full
% 1.63/1.05  --res_backward_subs                     full
% 1.63/1.05  --res_forward_subs_resolution           true
% 1.63/1.05  --res_backward_subs_resolution          true
% 1.63/1.05  --res_orphan_elimination                true
% 1.63/1.05  --res_time_limit                        2.
% 1.63/1.05  --res_out_proof                         true
% 1.63/1.05  
% 1.63/1.05  ------ Superposition Options
% 1.63/1.05  
% 1.63/1.05  --superposition_flag                    true
% 1.63/1.05  --sup_passive_queue_type                priority_queues
% 1.63/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.63/1.05  --sup_passive_queues_freq               [8;1;4]
% 1.63/1.05  --demod_completeness_check              fast
% 1.63/1.05  --demod_use_ground                      true
% 1.63/1.05  --sup_to_prop_solver                    passive
% 1.63/1.05  --sup_prop_simpl_new                    true
% 1.63/1.05  --sup_prop_simpl_given                  true
% 1.63/1.05  --sup_fun_splitting                     false
% 1.63/1.05  --sup_smt_interval                      50000
% 1.63/1.05  
% 1.63/1.05  ------ Superposition Simplification Setup
% 1.63/1.05  
% 1.63/1.05  --sup_indices_passive                   []
% 1.63/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.63/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 1.63/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_full_bw                           [BwDemod]
% 1.63/1.05  --sup_immed_triv                        [TrivRules]
% 1.63/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.63/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_immed_bw_main                     []
% 1.63/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.63/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 1.63/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.63/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.63/1.05  
% 1.63/1.05  ------ Combination Options
% 1.63/1.05  
% 1.63/1.05  --comb_res_mult                         3
% 1.63/1.05  --comb_sup_mult                         2
% 1.63/1.05  --comb_inst_mult                        10
% 1.63/1.05  
% 1.63/1.05  ------ Debug Options
% 1.63/1.05  
% 1.63/1.05  --dbg_backtrace                         false
% 1.63/1.05  --dbg_dump_prop_clauses                 false
% 1.63/1.05  --dbg_dump_prop_clauses_file            -
% 1.63/1.05  --dbg_out_stat                          false
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  ------ Proving...
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  % SZS status Theorem for theBenchmark.p
% 1.63/1.05  
% 1.63/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 1.63/1.05  
% 1.63/1.05  fof(f10,axiom,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f21,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(ennf_transformation,[],[f10])).
% 1.63/1.05  
% 1.63/1.05  fof(f22,plain,(
% 1.63/1.05    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(flattening,[],[f21])).
% 1.63/1.05  
% 1.63/1.05  fof(f36,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(nnf_transformation,[],[f22])).
% 1.63/1.05  
% 1.63/1.05  fof(f56,plain,(
% 1.63/1.05    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f36])).
% 1.63/1.05  
% 1.63/1.05  fof(f11,conjecture,(
% 1.63/1.05    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f12,negated_conjecture,(
% 1.63/1.05    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 1.63/1.05    inference(negated_conjecture,[],[f11])).
% 1.63/1.05  
% 1.63/1.05  fof(f23,plain,(
% 1.63/1.05    ? [X0,X1,X2,X3] : ((! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 1.63/1.05    inference(ennf_transformation,[],[f12])).
% 1.63/1.05  
% 1.63/1.05  fof(f24,plain,(
% 1.63/1.05    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 1.63/1.05    inference(flattening,[],[f23])).
% 1.63/1.05  
% 1.63/1.05  fof(f37,plain,(
% 1.63/1.05    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (! [X4] : (k1_funct_1(sK7,X4) != sK6 | ~r2_hidden(X4,sK4)) & r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_2(sK7,sK4,sK5) & v1_funct_1(sK7))),
% 1.63/1.05    introduced(choice_axiom,[])).
% 1.63/1.05  
% 1.63/1.05  fof(f38,plain,(
% 1.63/1.05    ! [X4] : (k1_funct_1(sK7,X4) != sK6 | ~r2_hidden(X4,sK4)) & r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_2(sK7,sK4,sK5) & v1_funct_1(sK7)),
% 1.63/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f24,f37])).
% 1.63/1.05  
% 1.63/1.05  fof(f63,plain,(
% 1.63/1.05    v1_funct_2(sK7,sK4,sK5)),
% 1.63/1.05    inference(cnf_transformation,[],[f38])).
% 1.63/1.05  
% 1.63/1.05  fof(f64,plain,(
% 1.63/1.05    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))),
% 1.63/1.05    inference(cnf_transformation,[],[f38])).
% 1.63/1.05  
% 1.63/1.05  fof(f8,axiom,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f19,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(ennf_transformation,[],[f8])).
% 1.63/1.05  
% 1.63/1.05  fof(f54,plain,(
% 1.63/1.05    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f19])).
% 1.63/1.05  
% 1.63/1.05  fof(f4,axiom,(
% 1.63/1.05    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f14,plain,(
% 1.63/1.05    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.63/1.05    inference(ennf_transformation,[],[f4])).
% 1.63/1.05  
% 1.63/1.05  fof(f15,plain,(
% 1.63/1.05    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.63/1.05    inference(flattening,[],[f14])).
% 1.63/1.05  
% 1.63/1.05  fof(f30,plain,(
% 1.63/1.05    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0)))) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.63/1.05    inference(nnf_transformation,[],[f15])).
% 1.63/1.05  
% 1.63/1.05  fof(f31,plain,(
% 1.63/1.05    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.63/1.05    inference(rectify,[],[f30])).
% 1.63/1.05  
% 1.63/1.05  fof(f34,plain,(
% 1.63/1.05    ! [X5,X0] : (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) => (k1_funct_1(X0,sK3(X0,X5)) = X5 & r2_hidden(sK3(X0,X5),k1_relat_1(X0))))),
% 1.63/1.05    introduced(choice_axiom,[])).
% 1.63/1.05  
% 1.63/1.05  fof(f33,plain,(
% 1.63/1.05    ( ! [X2] : (! [X1,X0] : (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) => (k1_funct_1(X0,sK2(X0,X1)) = X2 & r2_hidden(sK2(X0,X1),k1_relat_1(X0))))) )),
% 1.63/1.05    introduced(choice_axiom,[])).
% 1.63/1.05  
% 1.63/1.05  fof(f32,plain,(
% 1.63/1.05    ! [X1,X0] : (? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1))) => ((! [X3] : (k1_funct_1(X0,X3) != sK1(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK1(X0,X1),X1)) & (? [X4] : (k1_funct_1(X0,X4) = sK1(X0,X1) & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(sK1(X0,X1),X1))))),
% 1.63/1.05    introduced(choice_axiom,[])).
% 1.63/1.05  
% 1.63/1.05  fof(f35,plain,(
% 1.63/1.05    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : (k1_funct_1(X0,X3) != sK1(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK1(X0,X1),X1)) & ((k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1) & r2_hidden(sK2(X0,X1),k1_relat_1(X0))) | r2_hidden(sK1(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & ((k1_funct_1(X0,sK3(X0,X5)) = X5 & r2_hidden(sK3(X0,X5),k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.63/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f31,f34,f33,f32])).
% 1.63/1.05  
% 1.63/1.05  fof(f45,plain,(
% 1.63/1.05    ( ! [X0,X5,X1] : (r2_hidden(sK3(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f35])).
% 1.63/1.05  
% 1.63/1.05  fof(f70,plain,(
% 1.63/1.05    ( ! [X0,X5] : (r2_hidden(sK3(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.63/1.05    inference(equality_resolution,[],[f45])).
% 1.63/1.05  
% 1.63/1.05  fof(f62,plain,(
% 1.63/1.05    v1_funct_1(sK7)),
% 1.63/1.05    inference(cnf_transformation,[],[f38])).
% 1.63/1.05  
% 1.63/1.05  fof(f6,axiom,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f17,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(ennf_transformation,[],[f6])).
% 1.63/1.05  
% 1.63/1.05  fof(f52,plain,(
% 1.63/1.05    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f17])).
% 1.63/1.05  
% 1.63/1.05  fof(f1,axiom,(
% 1.63/1.05    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f13,plain,(
% 1.63/1.05    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.63/1.05    inference(ennf_transformation,[],[f1])).
% 1.63/1.05  
% 1.63/1.05  fof(f25,plain,(
% 1.63/1.05    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.63/1.05    inference(nnf_transformation,[],[f13])).
% 1.63/1.05  
% 1.63/1.05  fof(f26,plain,(
% 1.63/1.05    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.63/1.05    inference(rectify,[],[f25])).
% 1.63/1.05  
% 1.63/1.05  fof(f27,plain,(
% 1.63/1.05    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.63/1.05    introduced(choice_axiom,[])).
% 1.63/1.05  
% 1.63/1.05  fof(f28,plain,(
% 1.63/1.05    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.63/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).
% 1.63/1.05  
% 1.63/1.05  fof(f39,plain,(
% 1.63/1.05    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f28])).
% 1.63/1.05  
% 1.63/1.05  fof(f9,axiom,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f20,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(ennf_transformation,[],[f9])).
% 1.63/1.05  
% 1.63/1.05  fof(f55,plain,(
% 1.63/1.05    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f20])).
% 1.63/1.05  
% 1.63/1.05  fof(f65,plain,(
% 1.63/1.05    r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7))),
% 1.63/1.05    inference(cnf_transformation,[],[f38])).
% 1.63/1.05  
% 1.63/1.05  fof(f46,plain,(
% 1.63/1.05    ( ! [X0,X5,X1] : (k1_funct_1(X0,sK3(X0,X5)) = X5 | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f35])).
% 1.63/1.05  
% 1.63/1.05  fof(f69,plain,(
% 1.63/1.05    ( ! [X0,X5] : (k1_funct_1(X0,sK3(X0,X5)) = X5 | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.63/1.05    inference(equality_resolution,[],[f46])).
% 1.63/1.05  
% 1.63/1.05  fof(f66,plain,(
% 1.63/1.05    ( ! [X4] : (k1_funct_1(sK7,X4) != sK6 | ~r2_hidden(X4,sK4)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f38])).
% 1.63/1.05  
% 1.63/1.05  fof(f40,plain,(
% 1.63/1.05    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f28])).
% 1.63/1.05  
% 1.63/1.05  fof(f41,plain,(
% 1.63/1.05    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f28])).
% 1.63/1.05  
% 1.63/1.05  fof(f7,axiom,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f18,plain,(
% 1.63/1.05    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.63/1.05    inference(ennf_transformation,[],[f7])).
% 1.63/1.05  
% 1.63/1.05  fof(f53,plain,(
% 1.63/1.05    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f18])).
% 1.63/1.05  
% 1.63/1.05  fof(f3,axiom,(
% 1.63/1.05    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f29,plain,(
% 1.63/1.05    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 1.63/1.05    inference(nnf_transformation,[],[f3])).
% 1.63/1.05  
% 1.63/1.05  fof(f43,plain,(
% 1.63/1.05    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.63/1.05    inference(cnf_transformation,[],[f29])).
% 1.63/1.05  
% 1.63/1.05  fof(f5,axiom,(
% 1.63/1.05    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f16,plain,(
% 1.63/1.05    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.63/1.05    inference(ennf_transformation,[],[f5])).
% 1.63/1.05  
% 1.63/1.05  fof(f51,plain,(
% 1.63/1.05    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f16])).
% 1.63/1.05  
% 1.63/1.05  fof(f2,axiom,(
% 1.63/1.05    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.63/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.63/1.05  
% 1.63/1.05  fof(f42,plain,(
% 1.63/1.05    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.63/1.05    inference(cnf_transformation,[],[f2])).
% 1.63/1.05  
% 1.63/1.05  cnf(c_22,plain,
% 1.63/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 1.63/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | k1_relset_1(X1,X2,X0) = X1
% 1.63/1.05      | k1_xboole_0 = X2 ),
% 1.63/1.05      inference(cnf_transformation,[],[f56]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_26,negated_conjecture,
% 1.63/1.05      ( v1_funct_2(sK7,sK4,sK5) ),
% 1.63/1.05      inference(cnf_transformation,[],[f63]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_827,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | k1_relset_1(X1,X2,X0) = X1
% 1.63/1.05      | sK5 != X2
% 1.63/1.05      | sK4 != X1
% 1.63/1.05      | sK7 != X0
% 1.63/1.05      | k1_xboole_0 = X2 ),
% 1.63/1.05      inference(resolution_lifted,[status(thm)],[c_22,c_26]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_828,plain,
% 1.63/1.05      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 1.63/1.05      | k1_relset_1(sK4,sK5,sK7) = sK4
% 1.63/1.05      | k1_xboole_0 = sK5 ),
% 1.63/1.05      inference(unflattening,[status(thm)],[c_827]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_25,negated_conjecture,
% 1.63/1.05      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
% 1.63/1.05      inference(cnf_transformation,[],[f64]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_830,plain,
% 1.63/1.05      ( k1_relset_1(sK4,sK5,sK7) = sK4 | k1_xboole_0 = sK5 ),
% 1.63/1.05      inference(global_propositional_subsumption,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_828,c_25]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1865,plain,
% 1.63/1.05      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_15,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.63/1.05      inference(cnf_transformation,[],[f54]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1869,plain,
% 1.63/1.05      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.63/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2846,plain,
% 1.63/1.05      ( k1_relset_1(sK4,sK5,sK7) = k1_relat_1(sK7) ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_1865,c_1869]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3033,plain,
% 1.63/1.05      ( k1_relat_1(sK7) = sK4 | sK5 = k1_xboole_0 ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_830,c_2846]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_11,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 1.63/1.05      | r2_hidden(sK3(X1,X0),k1_relat_1(X1))
% 1.63/1.05      | ~ v1_relat_1(X1)
% 1.63/1.05      | ~ v1_funct_1(X1) ),
% 1.63/1.05      inference(cnf_transformation,[],[f70]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_27,negated_conjecture,
% 1.63/1.05      ( v1_funct_1(sK7) ),
% 1.63/1.05      inference(cnf_transformation,[],[f62]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_413,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 1.63/1.05      | r2_hidden(sK3(X1,X0),k1_relat_1(X1))
% 1.63/1.05      | ~ v1_relat_1(X1)
% 1.63/1.05      | sK7 != X1 ),
% 1.63/1.05      inference(resolution_lifted,[status(thm)],[c_11,c_27]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_414,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(sK7))
% 1.63/1.05      | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7))
% 1.63/1.05      | ~ v1_relat_1(sK7) ),
% 1.63/1.05      inference(unflattening,[status(thm)],[c_413]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1862,plain,
% 1.63/1.05      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
% 1.63/1.05      | v1_relat_1(sK7) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_414]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_30,plain,
% 1.63/1.05      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_415,plain,
% 1.63/1.05      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
% 1.63/1.05      | v1_relat_1(sK7) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_414]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_13,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | v1_relat_1(X0) ),
% 1.63/1.05      inference(cnf_transformation,[],[f52]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2053,plain,
% 1.63/1.05      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 1.63/1.05      | v1_relat_1(sK7) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_13]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2054,plain,
% 1.63/1.05      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
% 1.63/1.05      | v1_relat_1(sK7) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2053]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2118,plain,
% 1.63/1.05      ( r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top
% 1.63/1.05      | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
% 1.63/1.05      inference(global_propositional_subsumption,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_1862,c_30,c_415,c_2054]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2119,plain,
% 1.63/1.05      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | r2_hidden(sK3(sK7,X0),k1_relat_1(sK7)) = iProver_top ),
% 1.63/1.05      inference(renaming,[status(thm)],[c_2118]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 1.63/1.05      inference(cnf_transformation,[],[f39]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1876,plain,
% 1.63/1.05      ( r2_hidden(X0,X1) != iProver_top
% 1.63/1.05      | r2_hidden(X0,X2) = iProver_top
% 1.63/1.05      | r1_tarski(X1,X2) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3421,plain,
% 1.63/1.05      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | r2_hidden(sK3(sK7,X0),X1) = iProver_top
% 1.63/1.05      | r1_tarski(k1_relat_1(sK7),X1) != iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_2119,c_1876]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_16,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.63/1.05      inference(cnf_transformation,[],[f55]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1868,plain,
% 1.63/1.05      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 1.63/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2662,plain,
% 1.63/1.05      ( k2_relset_1(sK4,sK5,sK7) = k2_relat_1(sK7) ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_1865,c_1868]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_24,negated_conjecture,
% 1.63/1.05      ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) ),
% 1.63/1.05      inference(cnf_transformation,[],[f65]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1866,plain,
% 1.63/1.05      ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2910,plain,
% 1.63/1.05      ( r2_hidden(sK6,k2_relat_1(sK7)) = iProver_top ),
% 1.63/1.05      inference(demodulation,[status(thm)],[c_2662,c_1866]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_10,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 1.63/1.05      | ~ v1_relat_1(X1)
% 1.63/1.05      | ~ v1_funct_1(X1)
% 1.63/1.05      | k1_funct_1(X1,sK3(X1,X0)) = X0 ),
% 1.63/1.05      inference(cnf_transformation,[],[f69]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_428,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 1.63/1.05      | ~ v1_relat_1(X1)
% 1.63/1.05      | k1_funct_1(X1,sK3(X1,X0)) = X0
% 1.63/1.05      | sK7 != X1 ),
% 1.63/1.05      inference(resolution_lifted,[status(thm)],[c_10,c_27]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_429,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,k2_relat_1(sK7))
% 1.63/1.05      | ~ v1_relat_1(sK7)
% 1.63/1.05      | k1_funct_1(sK7,sK3(sK7,X0)) = X0 ),
% 1.63/1.05      inference(unflattening,[status(thm)],[c_428]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1861,plain,
% 1.63/1.05      ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
% 1.63/1.05      | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | v1_relat_1(sK7) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_429]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_430,plain,
% 1.63/1.05      ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
% 1.63/1.05      | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | v1_relat_1(sK7) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_429]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2073,plain,
% 1.63/1.05      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | k1_funct_1(sK7,sK3(sK7,X0)) = X0 ),
% 1.63/1.05      inference(global_propositional_subsumption,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_1861,c_30,c_430,c_2054]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2074,plain,
% 1.63/1.05      ( k1_funct_1(sK7,sK3(sK7,X0)) = X0
% 1.63/1.05      | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
% 1.63/1.05      inference(renaming,[status(thm)],[c_2073]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3029,plain,
% 1.63/1.05      ( k1_funct_1(sK7,sK3(sK7,sK6)) = sK6 ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_2910,c_2074]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_23,negated_conjecture,
% 1.63/1.05      ( ~ r2_hidden(X0,sK4) | k1_funct_1(sK7,X0) != sK6 ),
% 1.63/1.05      inference(cnf_transformation,[],[f66]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1867,plain,
% 1.63/1.05      ( k1_funct_1(sK7,X0) != sK6 | r2_hidden(X0,sK4) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3269,plain,
% 1.63/1.05      ( r2_hidden(sK3(sK7,sK6),sK4) != iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_3029,c_1867]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3879,plain,
% 1.63/1.05      ( r2_hidden(sK6,k2_relat_1(sK7)) != iProver_top
% 1.63/1.05      | r1_tarski(k1_relat_1(sK7),sK4) != iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_3421,c_3269]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3922,plain,
% 1.63/1.05      ( r1_tarski(k1_relat_1(sK7),sK4) != iProver_top ),
% 1.63/1.05      inference(global_propositional_subsumption,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_3879,c_2910]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3927,plain,
% 1.63/1.05      ( sK5 = k1_xboole_0 | r1_tarski(sK4,sK4) != iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_3033,c_3922]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1,plain,
% 1.63/1.05      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 1.63/1.05      inference(cnf_transformation,[],[f40]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1877,plain,
% 1.63/1.05      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 1.63/1.05      | r1_tarski(X0,X1) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_0,plain,
% 1.63/1.05      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 1.63/1.05      inference(cnf_transformation,[],[f41]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1878,plain,
% 1.63/1.05      ( r2_hidden(sK0(X0,X1),X1) != iProver_top
% 1.63/1.05      | r1_tarski(X0,X1) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2840,plain,
% 1.63/1.05      ( r1_tarski(X0,X0) = iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_1877,c_1878]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_4021,plain,
% 1.63/1.05      ( sK5 = k1_xboole_0 ),
% 1.63/1.05      inference(forward_subsumption_resolution,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_3927,c_2840]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_14,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.63/1.05      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 1.63/1.05      inference(cnf_transformation,[],[f53]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1870,plain,
% 1.63/1.05      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 1.63/1.05      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3375,plain,
% 1.63/1.05      ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(sK5)) = iProver_top
% 1.63/1.05      | m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top ),
% 1.63/1.05      inference(superposition,[status(thm)],[c_2662,c_1870]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3692,plain,
% 1.63/1.05      ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(sK5)) = iProver_top ),
% 1.63/1.05      inference(global_propositional_subsumption,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_3375,c_30]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_4022,plain,
% 1.63/1.05      ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.63/1.05      inference(demodulation,[status(thm)],[c_4021,c_3692]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_5,plain,
% 1.63/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 1.63/1.05      inference(cnf_transformation,[],[f43]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3109,plain,
% 1.63/1.05      ( ~ m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(X0))
% 1.63/1.05      | r1_tarski(k2_relat_1(sK7),X0) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_5]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3110,plain,
% 1.63/1.05      ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(X0)) != iProver_top
% 1.63/1.05      | r1_tarski(k2_relat_1(sK7),X0) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_3109]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3112,plain,
% 1.63/1.05      ( m1_subset_1(k2_relat_1(sK7),k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.63/1.05      | r1_tarski(k2_relat_1(sK7),k1_xboole_0) = iProver_top ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_3110]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_1300,plain,
% 1.63/1.05      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 1.63/1.05      theory(equality) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2161,plain,
% 1.63/1.05      ( ~ r1_tarski(X0,X1)
% 1.63/1.05      | r1_tarski(k2_relset_1(sK4,sK5,sK7),X1)
% 1.63/1.05      | k2_relset_1(sK4,sK5,sK7) != X0 ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_1300]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2738,plain,
% 1.63/1.05      ( r1_tarski(k2_relset_1(sK4,sK5,sK7),X0)
% 1.63/1.05      | ~ r1_tarski(k2_relat_1(sK7),X0)
% 1.63/1.05      | k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_2161]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2739,plain,
% 1.63/1.05      ( k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7)
% 1.63/1.05      | r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) = iProver_top
% 1.63/1.05      | r1_tarski(k2_relat_1(sK7),X0) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2738]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2741,plain,
% 1.63/1.05      ( k2_relset_1(sK4,sK5,sK7) != k2_relat_1(sK7)
% 1.63/1.05      | r1_tarski(k2_relset_1(sK4,sK5,sK7),k1_xboole_0) = iProver_top
% 1.63/1.05      | r1_tarski(k2_relat_1(sK7),k1_xboole_0) != iProver_top ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_2739]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_12,plain,
% 1.63/1.05      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.63/1.05      inference(cnf_transformation,[],[f51]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2342,plain,
% 1.63/1.05      ( ~ r2_hidden(sK6,X0) | ~ r1_tarski(X0,sK6) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_12]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2343,plain,
% 1.63/1.05      ( r2_hidden(sK6,X0) != iProver_top
% 1.63/1.05      | r1_tarski(X0,sK6) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2342]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2345,plain,
% 1.63/1.05      ( r2_hidden(sK6,k1_xboole_0) != iProver_top
% 1.63/1.05      | r1_tarski(k1_xboole_0,sK6) != iProver_top ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_2343]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_3,plain,
% 1.63/1.05      ( r1_tarski(k1_xboole_0,X0) ),
% 1.63/1.05      inference(cnf_transformation,[],[f42]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2330,plain,
% 1.63/1.05      ( r1_tarski(k1_xboole_0,sK6) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_3]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2333,plain,
% 1.63/1.05      ( r1_tarski(k1_xboole_0,sK6) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2330]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2090,plain,
% 1.63/1.05      ( ~ m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 1.63/1.05      | k2_relset_1(sK4,sK5,sK7) = k2_relat_1(sK7) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_16]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2061,plain,
% 1.63/1.05      ( r2_hidden(sK6,X0)
% 1.63/1.05      | ~ r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7))
% 1.63/1.05      | ~ r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_2]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2062,plain,
% 1.63/1.05      ( r2_hidden(sK6,X0) = iProver_top
% 1.63/1.05      | r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) != iProver_top
% 1.63/1.05      | r1_tarski(k2_relset_1(sK4,sK5,sK7),X0) != iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_2061]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_2064,plain,
% 1.63/1.05      ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) != iProver_top
% 1.63/1.05      | r2_hidden(sK6,k1_xboole_0) = iProver_top
% 1.63/1.05      | r1_tarski(k2_relset_1(sK4,sK5,sK7),k1_xboole_0) != iProver_top ),
% 1.63/1.05      inference(instantiation,[status(thm)],[c_2062]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(c_31,plain,
% 1.63/1.05      ( r2_hidden(sK6,k2_relset_1(sK4,sK5,sK7)) = iProver_top ),
% 1.63/1.05      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.63/1.05  
% 1.63/1.05  cnf(contradiction,plain,
% 1.63/1.05      ( $false ),
% 1.63/1.05      inference(minisat,
% 1.63/1.05                [status(thm)],
% 1.63/1.05                [c_4022,c_3112,c_2741,c_2345,c_2333,c_2090,c_2064,c_31,
% 1.63/1.05                 c_25]) ).
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 1.63/1.05  
% 1.63/1.05  ------                               Statistics
% 1.63/1.05  
% 1.63/1.05  ------ General
% 1.63/1.05  
% 1.63/1.05  abstr_ref_over_cycles:                  0
% 1.63/1.05  abstr_ref_under_cycles:                 0
% 1.63/1.05  gc_basic_clause_elim:                   0
% 1.63/1.05  forced_gc_time:                         0
% 1.63/1.05  parsing_time:                           0.009
% 1.63/1.05  unif_index_cands_time:                  0.
% 1.63/1.05  unif_index_add_time:                    0.
% 1.63/1.05  orderings_time:                         0.
% 1.63/1.05  out_proof_time:                         0.009
% 1.63/1.05  total_time:                             0.135
% 1.63/1.05  num_of_symbols:                         53
% 1.63/1.05  num_of_terms:                           2761
% 1.63/1.05  
% 1.63/1.05  ------ Preprocessing
% 1.63/1.05  
% 1.63/1.05  num_of_splits:                          0
% 1.63/1.05  num_of_split_atoms:                     0
% 1.63/1.05  num_of_reused_defs:                     0
% 1.63/1.05  num_eq_ax_congr_red:                    26
% 1.63/1.05  num_of_sem_filtered_clauses:            1
% 1.63/1.05  num_of_subtypes:                        0
% 1.63/1.05  monotx_restored_types:                  0
% 1.63/1.05  sat_num_of_epr_types:                   0
% 1.63/1.05  sat_num_of_non_cyclic_types:            0
% 1.63/1.05  sat_guarded_non_collapsed_types:        0
% 1.63/1.05  num_pure_diseq_elim:                    0
% 1.63/1.05  simp_replaced_by:                       0
% 1.63/1.05  res_preprocessed:                       130
% 1.63/1.05  prep_upred:                             0
% 1.63/1.05  prep_unflattend:                        81
% 1.63/1.05  smt_new_axioms:                         0
% 1.63/1.05  pred_elim_cands:                        4
% 1.63/1.05  pred_elim:                              2
% 1.63/1.05  pred_elim_cl:                           5
% 1.63/1.05  pred_elim_cycles:                       7
% 1.63/1.05  merged_defs:                            8
% 1.63/1.05  merged_defs_ncl:                        0
% 1.63/1.05  bin_hyper_res:                          8
% 1.63/1.05  prep_cycles:                            4
% 1.63/1.05  pred_elim_time:                         0.012
% 1.63/1.05  splitting_time:                         0.
% 1.63/1.05  sem_filter_time:                        0.
% 1.63/1.05  monotx_time:                            0.
% 1.63/1.05  subtype_inf_time:                       0.
% 1.63/1.05  
% 1.63/1.05  ------ Problem properties
% 1.63/1.05  
% 1.63/1.05  clauses:                                23
% 1.63/1.05  conjectures:                            3
% 1.63/1.05  epr:                                    3
% 1.63/1.05  horn:                                   18
% 1.63/1.05  ground:                                 5
% 1.63/1.05  unary:                                  3
% 1.63/1.05  binary:                                 11
% 1.63/1.05  lits:                                   57
% 1.63/1.05  lits_eq:                                16
% 1.63/1.05  fd_pure:                                0
% 1.63/1.05  fd_pseudo:                              0
% 1.63/1.05  fd_cond:                                3
% 1.63/1.05  fd_pseudo_cond:                         0
% 1.63/1.05  ac_symbols:                             0
% 1.63/1.05  
% 1.63/1.05  ------ Propositional Solver
% 1.63/1.05  
% 1.63/1.05  prop_solver_calls:                      27
% 1.63/1.05  prop_fast_solver_calls:                 910
% 1.63/1.05  smt_solver_calls:                       0
% 1.63/1.05  smt_fast_solver_calls:                  0
% 1.63/1.05  prop_num_of_clauses:                    1115
% 1.63/1.05  prop_preprocess_simplified:             4741
% 1.63/1.05  prop_fo_subsumed:                       10
% 1.63/1.05  prop_solver_time:                       0.
% 1.63/1.05  smt_solver_time:                        0.
% 1.63/1.05  smt_fast_solver_time:                   0.
% 1.63/1.05  prop_fast_solver_time:                  0.
% 1.63/1.05  prop_unsat_core_time:                   0.
% 1.63/1.05  
% 1.63/1.05  ------ QBF
% 1.63/1.05  
% 1.63/1.05  qbf_q_res:                              0
% 1.63/1.05  qbf_num_tautologies:                    0
% 1.63/1.05  qbf_prep_cycles:                        0
% 1.63/1.05  
% 1.63/1.05  ------ BMC1
% 1.63/1.05  
% 1.63/1.05  bmc1_current_bound:                     -1
% 1.63/1.05  bmc1_last_solved_bound:                 -1
% 1.63/1.05  bmc1_unsat_core_size:                   -1
% 1.63/1.05  bmc1_unsat_core_parents_size:           -1
% 1.63/1.05  bmc1_merge_next_fun:                    0
% 1.63/1.05  bmc1_unsat_core_clauses_time:           0.
% 1.63/1.05  
% 1.63/1.05  ------ Instantiation
% 1.63/1.05  
% 1.63/1.05  inst_num_of_clauses:                    297
% 1.63/1.05  inst_num_in_passive:                    58
% 1.63/1.05  inst_num_in_active:                     180
% 1.63/1.05  inst_num_in_unprocessed:                59
% 1.63/1.05  inst_num_of_loops:                      230
% 1.63/1.05  inst_num_of_learning_restarts:          0
% 1.63/1.05  inst_num_moves_active_passive:          47
% 1.63/1.05  inst_lit_activity:                      0
% 1.63/1.05  inst_lit_activity_moves:                0
% 1.63/1.05  inst_num_tautologies:                   0
% 1.63/1.05  inst_num_prop_implied:                  0
% 1.63/1.05  inst_num_existing_simplified:           0
% 1.63/1.05  inst_num_eq_res_simplified:             0
% 1.63/1.05  inst_num_child_elim:                    0
% 1.63/1.05  inst_num_of_dismatching_blockings:      82
% 1.63/1.05  inst_num_of_non_proper_insts:           271
% 1.63/1.05  inst_num_of_duplicates:                 0
% 1.63/1.05  inst_inst_num_from_inst_to_res:         0
% 1.63/1.05  inst_dismatching_checking_time:         0.
% 1.63/1.05  
% 1.63/1.05  ------ Resolution
% 1.63/1.05  
% 1.63/1.05  res_num_of_clauses:                     0
% 1.63/1.05  res_num_in_passive:                     0
% 1.63/1.05  res_num_in_active:                      0
% 1.63/1.05  res_num_of_loops:                       134
% 1.63/1.05  res_forward_subset_subsumed:            18
% 1.63/1.05  res_backward_subset_subsumed:           2
% 1.63/1.05  res_forward_subsumed:                   0
% 1.63/1.05  res_backward_subsumed:                  1
% 1.63/1.05  res_forward_subsumption_resolution:     0
% 1.63/1.05  res_backward_subsumption_resolution:    1
% 1.63/1.05  res_clause_to_clause_subsumption:       210
% 1.63/1.05  res_orphan_elimination:                 0
% 1.63/1.05  res_tautology_del:                      55
% 1.63/1.05  res_num_eq_res_simplified:              0
% 1.63/1.05  res_num_sel_changes:                    0
% 1.63/1.05  res_moves_from_active_to_pass:          0
% 1.63/1.05  
% 1.63/1.05  ------ Superposition
% 1.63/1.05  
% 1.63/1.05  sup_time_total:                         0.
% 1.63/1.05  sup_time_generating:                    0.
% 1.63/1.05  sup_time_sim_full:                      0.
% 1.63/1.05  sup_time_sim_immed:                     0.
% 1.63/1.05  
% 1.63/1.05  sup_num_of_clauses:                     68
% 1.63/1.05  sup_num_in_active:                      33
% 1.63/1.05  sup_num_in_passive:                     35
% 1.63/1.05  sup_num_of_loops:                       44
% 1.63/1.05  sup_fw_superposition:                   34
% 1.63/1.05  sup_bw_superposition:                   32
% 1.63/1.05  sup_immediate_simplified:               4
% 1.63/1.05  sup_given_eliminated:                   0
% 1.63/1.05  comparisons_done:                       0
% 1.63/1.05  comparisons_avoided:                    5
% 1.63/1.05  
% 1.63/1.05  ------ Simplifications
% 1.63/1.05  
% 1.63/1.05  
% 1.63/1.05  sim_fw_subset_subsumed:                 3
% 1.63/1.05  sim_bw_subset_subsumed:                 2
% 1.63/1.05  sim_fw_subsumed:                        0
% 1.63/1.05  sim_bw_subsumed:                        0
% 1.63/1.05  sim_fw_subsumption_res:                 2
% 1.63/1.05  sim_bw_subsumption_res:                 0
% 1.63/1.05  sim_tautology_del:                      1
% 1.63/1.05  sim_eq_tautology_del:                   6
% 1.63/1.05  sim_eq_res_simp:                        1
% 1.63/1.05  sim_fw_demodulated:                     0
% 1.63/1.05  sim_bw_demodulated:                     10
% 1.63/1.05  sim_light_normalised:                   1
% 1.63/1.05  sim_joinable_taut:                      0
% 1.63/1.05  sim_joinable_simp:                      0
% 1.63/1.05  sim_ac_normalised:                      0
% 1.63/1.05  sim_smt_subsumption:                    0
% 1.63/1.05  
%------------------------------------------------------------------------------
