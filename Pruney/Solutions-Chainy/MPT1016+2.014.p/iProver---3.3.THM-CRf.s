%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:54 EST 2020

% Result     : Theorem 2.23s
% Output     : CNFRefutation 2.23s
% Verified   : 
% Statistics : Number of formulae       :  177 (2485 expanded)
%              Number of clauses        :  119 ( 660 expanded)
%              Number of leaves         :   18 ( 503 expanded)
%              Depth                    :   21
%              Number of atoms          :  654 (18329 expanded)
%              Number of equality atoms :  278 (5719 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( ( k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f13])).

fof(f28,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ? [X1,X2] :
              ( X1 != X2
              & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) ) )
        & ( ! [X1,X2] :
              ( X1 = X2
              | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
              | ~ r2_hidden(X2,k1_relat_1(X0))
              | ~ r2_hidden(X1,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f29,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ? [X1,X2] :
              ( X1 != X2
              & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
              & r2_hidden(X2,k1_relat_1(X0))
              & r2_hidden(X1,k1_relat_1(X0)) ) )
        & ( ! [X3,X4] :
              ( X3 = X4
              | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
              | ~ r2_hidden(X4,k1_relat_1(X0))
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f28])).

fof(f30,plain,(
    ! [X0] :
      ( ? [X1,X2] :
          ( X1 != X2
          & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
          & r2_hidden(X2,k1_relat_1(X0))
          & r2_hidden(X1,k1_relat_1(X0)) )
     => ( sK1(X0) != sK2(X0)
        & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
        & r2_hidden(sK2(X0),k1_relat_1(X0))
        & r2_hidden(sK1(X0),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ( sK1(X0) != sK2(X0)
            & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
            & r2_hidden(sK2(X0),k1_relat_1(X0))
            & r2_hidden(sK1(X0),k1_relat_1(X0)) ) )
        & ( ! [X3,X4] :
              ( X3 = X4
              | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
              | ~ r2_hidden(X4,k1_relat_1(X0))
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f29,f30])).

fof(f45,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK1(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f10,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
      <=> ! [X2,X3] :
            ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ( v2_funct_1(X1)
        <=> ! [X2,X3] :
              ( ( k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
                & r2_hidden(X3,X0)
                & r2_hidden(X2,X0) )
             => X2 = X3 ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f21,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f22,plain,(
    ? [X0,X1] :
      ( ( v2_funct_1(X1)
      <~> ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) ) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f21])).

fof(f32,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f33,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X2,X3] :
            ( X2 = X3
            | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X2,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f34,plain,(
    ? [X0,X1] :
      ( ( ? [X2,X3] :
            ( X2 != X3
            & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
            & r2_hidden(X3,X0)
            & r2_hidden(X2,X0) )
        | ~ v2_funct_1(X1) )
      & ( ! [X4,X5] :
            ( X4 = X5
            | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
            | ~ r2_hidden(X5,X0)
            | ~ r2_hidden(X4,X0) )
        | v2_funct_1(X1) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(rectify,[],[f33])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ? [X2,X3] :
          ( X2 != X3
          & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
          & r2_hidden(X3,X0)
          & r2_hidden(X2,X0) )
     => ( sK5 != sK6
        & k1_funct_1(X1,sK5) = k1_funct_1(X1,sK6)
        & r2_hidden(sK6,X0)
        & r2_hidden(sK5,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ? [X0,X1] :
        ( ( ? [X2,X3] :
              ( X2 != X3
              & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | ~ v2_funct_1(X1) )
        & ( ! [X4,X5] :
              ( X4 = X5
              | k1_funct_1(X1,X4) != k1_funct_1(X1,X5)
              | ~ r2_hidden(X5,X0)
              | ~ r2_hidden(X4,X0) )
          | v2_funct_1(X1) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ( ? [X3,X2] :
            ( X2 != X3
            & k1_funct_1(sK4,X2) = k1_funct_1(sK4,X3)
            & r2_hidden(X3,sK3)
            & r2_hidden(X2,sK3) )
        | ~ v2_funct_1(sK4) )
      & ( ! [X5,X4] :
            ( X4 = X5
            | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
            | ~ r2_hidden(X5,sK3)
            | ~ r2_hidden(X4,sK3) )
        | v2_funct_1(sK4) )
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
      & v1_funct_2(sK4,sK3,sK3)
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ( ( sK5 != sK6
        & k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
        & r2_hidden(sK6,sK3)
        & r2_hidden(sK5,sK3) )
      | ~ v2_funct_1(sK4) )
    & ( ! [X4,X5] :
          ( X4 = X5
          | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
          | ~ r2_hidden(X5,sK3)
          | ~ r2_hidden(X4,sK3) )
      | v2_funct_1(sK4) )
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
    & v1_funct_2(sK4,sK3,sK3)
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f34,f36,f35])).

fof(f54,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f56,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
    inference(cnf_transformation,[],[f37])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f23])).

fof(f25,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).

fof(f38,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f46,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK2(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f47,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f48,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | sK1(X0) != sK2(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f44,plain,(
    ! [X4,X0,X3] :
      ( X3 = X4
      | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
      | ~ r2_hidden(X4,k1_relat_1(X0))
      | ~ r2_hidden(X3,k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f57,plain,(
    ! [X4,X5] :
      ( X4 = X5
      | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5)
      | ~ r2_hidden(X5,sK3)
      | ~ r2_hidden(X4,sK3)
      | v2_funct_1(sK4) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( ( r2_hidden(X2,X0)
          & v2_funct_1(X3) )
       => ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f19])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f55,plain,(
    v1_funct_2(sK4,sK3,sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f59,plain,
    ( r2_hidden(sK6,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f60,plain,
    ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f58,plain,
    ( r2_hidden(sK5,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f61,plain,
    ( sK5 != sK6
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_9,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_23,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_354,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | v2_funct_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_23])).

cnf(c_355,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | v2_funct_1(sK4) ),
    inference(unflattening,[status(thm)],[c_354])).

cnf(c_2965,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_355])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_26,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_356,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_355])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_3167,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_3168,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3167])).

cnf(c_3953,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2965,c_26,c_356,c_3168])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_2981,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4212,plain,
    ( r2_hidden(sK1(sK4),X0) = iProver_top
    | r1_tarski(k1_relat_1(sK4),X0) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3953,c_2981])).

cnf(c_24,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_52,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_54,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(instantiation,[status(thm)],[c_52])).

cnf(c_8,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_55,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_57,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(instantiation,[status(thm)],[c_55])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_58,plain,
    ( k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_60,plain,
    ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
    | v1_relat_1(sK4) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(instantiation,[status(thm)],[c_58])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | sK2(X0) != sK1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_61,plain,
    ( sK2(X0) != sK1(X0)
    | v1_relat_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_63,plain,
    ( sK2(sK4) != sK1(sK4)
    | v1_relat_1(sK4) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(instantiation,[status(thm)],[c_61])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | X0 = X2
    | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_406,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v2_funct_1(X1)
    | X2 = X0
    | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_23])).

cnf(c_407,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(X1,k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v2_funct_1(sK4)
    | X0 = X1
    | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1) ),
    inference(unflattening,[status(thm)],[c_406])).

cnf(c_2359,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | ~ r2_hidden(X1,k1_relat_1(sK4))
    | X0 = X1
    | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_407])).

cnf(c_3440,plain,
    ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ sP0_iProver_split
    | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4) ),
    inference(instantiation,[status(thm)],[c_2359])).

cnf(c_3441,plain,
    ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4)
    | r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
    | r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3440])).

cnf(c_380,plain,
    ( ~ v1_relat_1(X0)
    | v2_funct_1(X0)
    | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_23])).

cnf(c_381,plain,
    ( ~ v1_relat_1(sK4)
    | v2_funct_1(sK4)
    | k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4)) ),
    inference(unflattening,[status(thm)],[c_380])).

cnf(c_2963,plain,
    ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
    | v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_381])).

cnf(c_382,plain,
    ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
    | v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_381])).

cnf(c_3573,plain,
    ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
    | v2_funct_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2963,c_26,c_382,c_3168])).

cnf(c_2360,plain,
    ( ~ v1_relat_1(sK4)
    | ~ v2_funct_1(sK4)
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_407])).

cnf(c_2960,plain,
    ( v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2360])).

cnf(c_2392,plain,
    ( v1_relat_1(sK4) != iProver_top
    | v2_funct_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2360])).

cnf(c_3202,plain,
    ( v2_funct_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2960,c_26,c_2392,c_3168])).

cnf(c_3582,plain,
    ( k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
    | sP0_iProver_split = iProver_top ),
    inference(superposition,[status(thm)],[c_3573,c_3202])).

cnf(c_20,negated_conjecture,
    ( ~ r2_hidden(X0,sK3)
    | ~ r2_hidden(X1,sK3)
    | v2_funct_1(sK4)
    | X1 = X0
    | k1_funct_1(sK4,X1) != k1_funct_1(sK4,X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_3241,plain,
    ( ~ r2_hidden(sK2(sK4),sK3)
    | ~ r2_hidden(sK1(sK4),sK3)
    | v2_funct_1(sK4)
    | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4) ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_3242,plain,
    ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
    | sK2(sK4) = sK1(sK4)
    | r2_hidden(sK2(sK4),sK3) != iProver_top
    | r2_hidden(sK1(sK4),sK3) != iProver_top
    | v2_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3241])).

cnf(c_3216,plain,
    ( r2_hidden(sK1(sK4),X0)
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_3734,plain,
    ( ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | r2_hidden(sK1(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
    inference(instantiation,[status(thm)],[c_3216])).

cnf(c_3737,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
    | r2_hidden(sK1(sK4),sK3) = iProver_top
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3734])).

cnf(c_3229,plain,
    ( r2_hidden(sK2(sK4),X0)
    | ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ r1_tarski(k1_relat_1(sK4),X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_3761,plain,
    ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | r2_hidden(sK2(sK4),sK3)
    | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
    inference(instantiation,[status(thm)],[c_3229])).

cnf(c_3764,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
    | r2_hidden(sK2(sK4),sK3) = iProver_top
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3761])).

cnf(c_2968,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_2974,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3701,plain,
    ( k1_relset_1(sK3,sK3,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_2968,c_2974])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_2975,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_4105,plain,
    ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK3)) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3701,c_2975])).

cnf(c_4402,plain,
    ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4105,c_26])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_2978,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_4407,plain,
    ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_4402,c_2978])).

cnf(c_4464,plain,
    ( sP0_iProver_split = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3582,c_24,c_26,c_54,c_57,c_60,c_63,c_2392,c_3168,c_3242,c_3737,c_3764,c_4407])).

cnf(c_4524,plain,
    ( v2_funct_1(sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4212,c_24,c_26,c_54,c_57,c_60,c_63,c_3168,c_3242,c_3737,c_3764,c_4407])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_22,negated_conjecture,
    ( v1_funct_2(sK4,sK3,sK3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_325,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | sK3 != X2
    | sK3 != X1
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_22])).

cnf(c_326,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
    | ~ r2_hidden(X0,sK3)
    | ~ v1_funct_1(sK4)
    | ~ v2_funct_1(sK4)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_325])).

cnf(c_330,plain,
    ( ~ r2_hidden(X0,sK3)
    | ~ v2_funct_1(sK4)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | k1_xboole_0 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_326,c_23,c_21])).

cnf(c_2362,plain,
    ( ~ v2_funct_1(sK4)
    | sP1_iProver_split
    | k1_xboole_0 = sK3 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_330])).

cnf(c_2966,plain,
    ( k1_xboole_0 = sK3
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2362])).

cnf(c_4529,plain,
    ( sK3 = k1_xboole_0
    | sP1_iProver_split = iProver_top ),
    inference(superposition,[status(thm)],[c_4524,c_2966])).

cnf(c_18,negated_conjecture,
    ( r2_hidden(sK6,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2971,plain,
    ( r2_hidden(sK6,sK3) = iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2361,plain,
    ( ~ r2_hidden(X0,sK3)
    | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_330])).

cnf(c_2967,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
    | r2_hidden(X0,sK3) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2361])).

cnf(c_3479,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2971,c_2967])).

cnf(c_4531,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_4524,c_3479])).

cnf(c_17,negated_conjecture,
    ( ~ v2_funct_1(sK4)
    | k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_2972,plain,
    ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_4533,plain,
    ( k1_funct_1(sK4,sK6) = k1_funct_1(sK4,sK5) ),
    inference(superposition,[status(thm)],[c_4524,c_2972])).

cnf(c_4536,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
    | sP1_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4531,c_4533])).

cnf(c_4956,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
    | sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4529,c_4536])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_2977,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3366,plain,
    ( r1_tarski(sK3,sK6) != iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2971,c_2977])).

cnf(c_3376,plain,
    ( ~ r1_tarski(sK3,sK6)
    | ~ v2_funct_1(sK4) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3366])).

cnf(c_4526,plain,
    ( v2_funct_1(sK4) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4524])).

cnf(c_2366,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_3553,plain,
    ( ~ r1_tarski(X0,sK6)
    | r1_tarski(sK3,sK6)
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_2366])).

cnf(c_5303,plain,
    ( r1_tarski(sK3,sK6)
    | ~ r1_tarski(k1_xboole_0,sK6)
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3553])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_5304,plain,
    ( r1_tarski(k1_xboole_0,sK6) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_5992,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4956,c_3376,c_4526,c_5303,c_5304])).

cnf(c_19,negated_conjecture,
    ( r2_hidden(sK5,sK3)
    | ~ v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_2970,plain,
    ( r2_hidden(sK5,sK3) = iProver_top
    | v2_funct_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3480,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
    | v2_funct_1(sK4) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2970,c_2967])).

cnf(c_4530,plain,
    ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_4524,c_3480])).

cnf(c_5995,plain,
    ( sK6 = sK5
    | sP1_iProver_split != iProver_top ),
    inference(demodulation,[status(thm)],[c_5992,c_4530])).

cnf(c_4466,plain,
    ( sP0_iProver_split ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4464])).

cnf(c_3469,plain,
    ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ sP0_iProver_split
    | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(sK4))
    | sK1(sK4) = sK2(sK4) ),
    inference(instantiation,[status(thm)],[c_2359])).

cnf(c_2365,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_3244,plain,
    ( sK2(sK4) != X0
    | sK2(sK4) = sK1(sK4)
    | sK1(sK4) != X0 ),
    inference(instantiation,[status(thm)],[c_2365])).

cnf(c_3358,plain,
    ( sK2(sK4) != sK2(sK4)
    | sK2(sK4) = sK1(sK4)
    | sK1(sK4) != sK2(sK4) ),
    inference(instantiation,[status(thm)],[c_3244])).

cnf(c_2364,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2391,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_2364])).

cnf(c_2372,plain,
    ( X0 != X1
    | sK2(X0) = sK2(X1) ),
    theory(equality)).

cnf(c_2384,plain,
    ( sK2(sK4) = sK2(sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_2372])).

cnf(c_16,negated_conjecture,
    ( ~ v2_funct_1(sK4)
    | sK5 != sK6 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1056,plain,
    ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_355,c_16])).

cnf(c_367,plain,
    ( r2_hidden(sK2(X0),k1_relat_1(X0))
    | ~ v1_relat_1(X0)
    | v2_funct_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_23])).

cnf(c_368,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | v2_funct_1(sK4) ),
    inference(unflattening,[status(thm)],[c_367])).

cnf(c_965,plain,
    ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_368,c_16])).

cnf(c_874,plain,
    ( ~ v1_relat_1(sK4)
    | k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_381,c_16])).

cnf(c_393,plain,
    ( ~ v1_relat_1(X0)
    | v2_funct_1(X0)
    | sK2(X0) != sK1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_23])).

cnf(c_394,plain,
    ( ~ v1_relat_1(sK4)
    | v2_funct_1(sK4)
    | sK2(sK4) != sK1(sK4) ),
    inference(unflattening,[status(thm)],[c_393])).

cnf(c_783,plain,
    ( ~ v1_relat_1(sK4)
    | sK2(sK4) != sK1(sK4)
    | sK6 != sK5 ),
    inference(resolution,[status(thm)],[c_394,c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5995,c_5304,c_5303,c_4529,c_4526,c_4466,c_3469,c_3376,c_3358,c_3167,c_2391,c_2384,c_1056,c_965,c_874,c_783,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n012.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 11:43:52 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.23/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.23/1.00  
% 2.23/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.23/1.00  
% 2.23/1.00  ------  iProver source info
% 2.23/1.00  
% 2.23/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.23/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.23/1.00  git: non_committed_changes: false
% 2.23/1.00  git: last_make_outside_of_git: false
% 2.23/1.00  
% 2.23/1.00  ------ 
% 2.23/1.00  
% 2.23/1.00  ------ Input Options
% 2.23/1.00  
% 2.23/1.00  --out_options                           all
% 2.23/1.00  --tptp_safe_out                         true
% 2.23/1.00  --problem_path                          ""
% 2.23/1.00  --include_path                          ""
% 2.23/1.00  --clausifier                            res/vclausify_rel
% 2.23/1.00  --clausifier_options                    --mode clausify
% 2.23/1.00  --stdin                                 false
% 2.23/1.00  --stats_out                             all
% 2.23/1.00  
% 2.23/1.00  ------ General Options
% 2.23/1.00  
% 2.23/1.00  --fof                                   false
% 2.23/1.00  --time_out_real                         305.
% 2.23/1.00  --time_out_virtual                      -1.
% 2.23/1.00  --symbol_type_check                     false
% 2.23/1.00  --clausify_out                          false
% 2.23/1.00  --sig_cnt_out                           false
% 2.23/1.00  --trig_cnt_out                          false
% 2.23/1.00  --trig_cnt_out_tolerance                1.
% 2.23/1.00  --trig_cnt_out_sk_spl                   false
% 2.23/1.00  --abstr_cl_out                          false
% 2.23/1.00  
% 2.23/1.00  ------ Global Options
% 2.23/1.00  
% 2.23/1.00  --schedule                              default
% 2.23/1.00  --add_important_lit                     false
% 2.23/1.00  --prop_solver_per_cl                    1000
% 2.23/1.00  --min_unsat_core                        false
% 2.23/1.00  --soft_assumptions                      false
% 2.23/1.00  --soft_lemma_size                       3
% 2.23/1.00  --prop_impl_unit_size                   0
% 2.23/1.00  --prop_impl_unit                        []
% 2.23/1.00  --share_sel_clauses                     true
% 2.23/1.00  --reset_solvers                         false
% 2.23/1.00  --bc_imp_inh                            [conj_cone]
% 2.23/1.00  --conj_cone_tolerance                   3.
% 2.23/1.00  --extra_neg_conj                        none
% 2.23/1.00  --large_theory_mode                     true
% 2.23/1.00  --prolific_symb_bound                   200
% 2.23/1.00  --lt_threshold                          2000
% 2.23/1.00  --clause_weak_htbl                      true
% 2.23/1.00  --gc_record_bc_elim                     false
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing Options
% 2.23/1.00  
% 2.23/1.00  --preprocessing_flag                    true
% 2.23/1.00  --time_out_prep_mult                    0.1
% 2.23/1.00  --splitting_mode                        input
% 2.23/1.00  --splitting_grd                         true
% 2.23/1.00  --splitting_cvd                         false
% 2.23/1.00  --splitting_cvd_svl                     false
% 2.23/1.00  --splitting_nvd                         32
% 2.23/1.00  --sub_typing                            true
% 2.23/1.00  --prep_gs_sim                           true
% 2.23/1.00  --prep_unflatten                        true
% 2.23/1.00  --prep_res_sim                          true
% 2.23/1.00  --prep_upred                            true
% 2.23/1.00  --prep_sem_filter                       exhaustive
% 2.23/1.00  --prep_sem_filter_out                   false
% 2.23/1.00  --pred_elim                             true
% 2.23/1.00  --res_sim_input                         true
% 2.23/1.00  --eq_ax_congr_red                       true
% 2.23/1.00  --pure_diseq_elim                       true
% 2.23/1.00  --brand_transform                       false
% 2.23/1.00  --non_eq_to_eq                          false
% 2.23/1.00  --prep_def_merge                        true
% 2.23/1.00  --prep_def_merge_prop_impl              false
% 2.23/1.00  --prep_def_merge_mbd                    true
% 2.23/1.00  --prep_def_merge_tr_red                 false
% 2.23/1.00  --prep_def_merge_tr_cl                  false
% 2.23/1.00  --smt_preprocessing                     true
% 2.23/1.00  --smt_ac_axioms                         fast
% 2.23/1.00  --preprocessed_out                      false
% 2.23/1.00  --preprocessed_stats                    false
% 2.23/1.00  
% 2.23/1.00  ------ Abstraction refinement Options
% 2.23/1.00  
% 2.23/1.00  --abstr_ref                             []
% 2.23/1.00  --abstr_ref_prep                        false
% 2.23/1.00  --abstr_ref_until_sat                   false
% 2.23/1.00  --abstr_ref_sig_restrict                funpre
% 2.23/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.23/1.00  --abstr_ref_under                       []
% 2.23/1.00  
% 2.23/1.00  ------ SAT Options
% 2.23/1.00  
% 2.23/1.00  --sat_mode                              false
% 2.23/1.00  --sat_fm_restart_options                ""
% 2.23/1.00  --sat_gr_def                            false
% 2.23/1.00  --sat_epr_types                         true
% 2.23/1.00  --sat_non_cyclic_types                  false
% 2.23/1.00  --sat_finite_models                     false
% 2.23/1.00  --sat_fm_lemmas                         false
% 2.23/1.00  --sat_fm_prep                           false
% 2.23/1.00  --sat_fm_uc_incr                        true
% 2.23/1.00  --sat_out_model                         small
% 2.23/1.00  --sat_out_clauses                       false
% 2.23/1.00  
% 2.23/1.00  ------ QBF Options
% 2.23/1.00  
% 2.23/1.00  --qbf_mode                              false
% 2.23/1.00  --qbf_elim_univ                         false
% 2.23/1.00  --qbf_dom_inst                          none
% 2.23/1.00  --qbf_dom_pre_inst                      false
% 2.23/1.00  --qbf_sk_in                             false
% 2.23/1.00  --qbf_pred_elim                         true
% 2.23/1.00  --qbf_split                             512
% 2.23/1.00  
% 2.23/1.00  ------ BMC1 Options
% 2.23/1.00  
% 2.23/1.00  --bmc1_incremental                      false
% 2.23/1.00  --bmc1_axioms                           reachable_all
% 2.23/1.00  --bmc1_min_bound                        0
% 2.23/1.00  --bmc1_max_bound                        -1
% 2.23/1.00  --bmc1_max_bound_default                -1
% 2.23/1.00  --bmc1_symbol_reachability              true
% 2.23/1.00  --bmc1_property_lemmas                  false
% 2.23/1.00  --bmc1_k_induction                      false
% 2.23/1.00  --bmc1_non_equiv_states                 false
% 2.23/1.00  --bmc1_deadlock                         false
% 2.23/1.00  --bmc1_ucm                              false
% 2.23/1.00  --bmc1_add_unsat_core                   none
% 2.23/1.00  --bmc1_unsat_core_children              false
% 2.23/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.23/1.00  --bmc1_out_stat                         full
% 2.23/1.00  --bmc1_ground_init                      false
% 2.23/1.00  --bmc1_pre_inst_next_state              false
% 2.23/1.00  --bmc1_pre_inst_state                   false
% 2.23/1.00  --bmc1_pre_inst_reach_state             false
% 2.23/1.00  --bmc1_out_unsat_core                   false
% 2.23/1.00  --bmc1_aig_witness_out                  false
% 2.23/1.00  --bmc1_verbose                          false
% 2.23/1.00  --bmc1_dump_clauses_tptp                false
% 2.23/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.23/1.00  --bmc1_dump_file                        -
% 2.23/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.23/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.23/1.00  --bmc1_ucm_extend_mode                  1
% 2.23/1.00  --bmc1_ucm_init_mode                    2
% 2.23/1.00  --bmc1_ucm_cone_mode                    none
% 2.23/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.23/1.00  --bmc1_ucm_relax_model                  4
% 2.23/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.23/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.23/1.00  --bmc1_ucm_layered_model                none
% 2.23/1.00  --bmc1_ucm_max_lemma_size               10
% 2.23/1.00  
% 2.23/1.00  ------ AIG Options
% 2.23/1.00  
% 2.23/1.00  --aig_mode                              false
% 2.23/1.00  
% 2.23/1.00  ------ Instantiation Options
% 2.23/1.00  
% 2.23/1.00  --instantiation_flag                    true
% 2.23/1.00  --inst_sos_flag                         false
% 2.23/1.00  --inst_sos_phase                        true
% 2.23/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.23/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.23/1.00  --inst_lit_sel_side                     num_symb
% 2.23/1.00  --inst_solver_per_active                1400
% 2.23/1.00  --inst_solver_calls_frac                1.
% 2.23/1.00  --inst_passive_queue_type               priority_queues
% 2.23/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.23/1.00  --inst_passive_queues_freq              [25;2]
% 2.23/1.00  --inst_dismatching                      true
% 2.23/1.00  --inst_eager_unprocessed_to_passive     true
% 2.23/1.00  --inst_prop_sim_given                   true
% 2.23/1.00  --inst_prop_sim_new                     false
% 2.23/1.00  --inst_subs_new                         false
% 2.23/1.00  --inst_eq_res_simp                      false
% 2.23/1.00  --inst_subs_given                       false
% 2.23/1.00  --inst_orphan_elimination               true
% 2.23/1.00  --inst_learning_loop_flag               true
% 2.23/1.00  --inst_learning_start                   3000
% 2.23/1.00  --inst_learning_factor                  2
% 2.23/1.00  --inst_start_prop_sim_after_learn       3
% 2.23/1.00  --inst_sel_renew                        solver
% 2.23/1.00  --inst_lit_activity_flag                true
% 2.23/1.00  --inst_restr_to_given                   false
% 2.23/1.00  --inst_activity_threshold               500
% 2.23/1.00  --inst_out_proof                        true
% 2.23/1.00  
% 2.23/1.00  ------ Resolution Options
% 2.23/1.00  
% 2.23/1.00  --resolution_flag                       true
% 2.23/1.00  --res_lit_sel                           adaptive
% 2.23/1.00  --res_lit_sel_side                      none
% 2.23/1.00  --res_ordering                          kbo
% 2.23/1.00  --res_to_prop_solver                    active
% 2.23/1.00  --res_prop_simpl_new                    false
% 2.23/1.00  --res_prop_simpl_given                  true
% 2.23/1.00  --res_passive_queue_type                priority_queues
% 2.23/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.23/1.00  --res_passive_queues_freq               [15;5]
% 2.23/1.00  --res_forward_subs                      full
% 2.23/1.00  --res_backward_subs                     full
% 2.23/1.00  --res_forward_subs_resolution           true
% 2.23/1.00  --res_backward_subs_resolution          true
% 2.23/1.00  --res_orphan_elimination                true
% 2.23/1.00  --res_time_limit                        2.
% 2.23/1.00  --res_out_proof                         true
% 2.23/1.00  
% 2.23/1.00  ------ Superposition Options
% 2.23/1.00  
% 2.23/1.00  --superposition_flag                    true
% 2.23/1.00  --sup_passive_queue_type                priority_queues
% 2.23/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.23/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.23/1.00  --demod_completeness_check              fast
% 2.23/1.00  --demod_use_ground                      true
% 2.23/1.00  --sup_to_prop_solver                    passive
% 2.23/1.00  --sup_prop_simpl_new                    true
% 2.23/1.00  --sup_prop_simpl_given                  true
% 2.23/1.00  --sup_fun_splitting                     false
% 2.23/1.00  --sup_smt_interval                      50000
% 2.23/1.00  
% 2.23/1.00  ------ Superposition Simplification Setup
% 2.23/1.00  
% 2.23/1.00  --sup_indices_passive                   []
% 2.23/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.23/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_full_bw                           [BwDemod]
% 2.23/1.00  --sup_immed_triv                        [TrivRules]
% 2.23/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.23/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_immed_bw_main                     []
% 2.23/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.23/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.23/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.23/1.00  
% 2.23/1.00  ------ Combination Options
% 2.23/1.00  
% 2.23/1.00  --comb_res_mult                         3
% 2.23/1.00  --comb_sup_mult                         2
% 2.23/1.00  --comb_inst_mult                        10
% 2.23/1.00  
% 2.23/1.00  ------ Debug Options
% 2.23/1.00  
% 2.23/1.00  --dbg_backtrace                         false
% 2.23/1.00  --dbg_dump_prop_clauses                 false
% 2.23/1.00  --dbg_dump_prop_clauses_file            -
% 2.23/1.00  --dbg_out_stat                          false
% 2.23/1.00  ------ Parsing...
% 2.23/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.23/1.00  ------ Proving...
% 2.23/1.00  ------ Problem Properties 
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  clauses                                 24
% 2.23/1.00  conjectures                             6
% 2.23/1.00  EPR                                     8
% 2.23/1.00  Horn                                    18
% 2.23/1.00  unary                                   2
% 2.23/1.00  binary                                  12
% 2.23/1.00  lits                                    60
% 2.23/1.00  lits eq                                 11
% 2.23/1.00  fd_pure                                 0
% 2.23/1.00  fd_pseudo                               0
% 2.23/1.00  fd_cond                                 0
% 2.23/1.00  fd_pseudo_cond                          2
% 2.23/1.00  AC symbols                              0
% 2.23/1.00  
% 2.23/1.00  ------ Schedule dynamic 5 is on 
% 2.23/1.00  
% 2.23/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  ------ 
% 2.23/1.00  Current options:
% 2.23/1.00  ------ 
% 2.23/1.00  
% 2.23/1.00  ------ Input Options
% 2.23/1.00  
% 2.23/1.00  --out_options                           all
% 2.23/1.00  --tptp_safe_out                         true
% 2.23/1.00  --problem_path                          ""
% 2.23/1.00  --include_path                          ""
% 2.23/1.00  --clausifier                            res/vclausify_rel
% 2.23/1.00  --clausifier_options                    --mode clausify
% 2.23/1.00  --stdin                                 false
% 2.23/1.00  --stats_out                             all
% 2.23/1.00  
% 2.23/1.00  ------ General Options
% 2.23/1.00  
% 2.23/1.00  --fof                                   false
% 2.23/1.00  --time_out_real                         305.
% 2.23/1.00  --time_out_virtual                      -1.
% 2.23/1.00  --symbol_type_check                     false
% 2.23/1.00  --clausify_out                          false
% 2.23/1.00  --sig_cnt_out                           false
% 2.23/1.00  --trig_cnt_out                          false
% 2.23/1.00  --trig_cnt_out_tolerance                1.
% 2.23/1.00  --trig_cnt_out_sk_spl                   false
% 2.23/1.00  --abstr_cl_out                          false
% 2.23/1.00  
% 2.23/1.00  ------ Global Options
% 2.23/1.00  
% 2.23/1.00  --schedule                              default
% 2.23/1.00  --add_important_lit                     false
% 2.23/1.00  --prop_solver_per_cl                    1000
% 2.23/1.00  --min_unsat_core                        false
% 2.23/1.00  --soft_assumptions                      false
% 2.23/1.00  --soft_lemma_size                       3
% 2.23/1.00  --prop_impl_unit_size                   0
% 2.23/1.00  --prop_impl_unit                        []
% 2.23/1.00  --share_sel_clauses                     true
% 2.23/1.00  --reset_solvers                         false
% 2.23/1.00  --bc_imp_inh                            [conj_cone]
% 2.23/1.00  --conj_cone_tolerance                   3.
% 2.23/1.00  --extra_neg_conj                        none
% 2.23/1.00  --large_theory_mode                     true
% 2.23/1.00  --prolific_symb_bound                   200
% 2.23/1.00  --lt_threshold                          2000
% 2.23/1.00  --clause_weak_htbl                      true
% 2.23/1.00  --gc_record_bc_elim                     false
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing Options
% 2.23/1.00  
% 2.23/1.00  --preprocessing_flag                    true
% 2.23/1.00  --time_out_prep_mult                    0.1
% 2.23/1.00  --splitting_mode                        input
% 2.23/1.00  --splitting_grd                         true
% 2.23/1.00  --splitting_cvd                         false
% 2.23/1.00  --splitting_cvd_svl                     false
% 2.23/1.00  --splitting_nvd                         32
% 2.23/1.00  --sub_typing                            true
% 2.23/1.00  --prep_gs_sim                           true
% 2.23/1.00  --prep_unflatten                        true
% 2.23/1.00  --prep_res_sim                          true
% 2.23/1.00  --prep_upred                            true
% 2.23/1.00  --prep_sem_filter                       exhaustive
% 2.23/1.00  --prep_sem_filter_out                   false
% 2.23/1.00  --pred_elim                             true
% 2.23/1.00  --res_sim_input                         true
% 2.23/1.00  --eq_ax_congr_red                       true
% 2.23/1.00  --pure_diseq_elim                       true
% 2.23/1.00  --brand_transform                       false
% 2.23/1.00  --non_eq_to_eq                          false
% 2.23/1.00  --prep_def_merge                        true
% 2.23/1.00  --prep_def_merge_prop_impl              false
% 2.23/1.00  --prep_def_merge_mbd                    true
% 2.23/1.00  --prep_def_merge_tr_red                 false
% 2.23/1.00  --prep_def_merge_tr_cl                  false
% 2.23/1.00  --smt_preprocessing                     true
% 2.23/1.00  --smt_ac_axioms                         fast
% 2.23/1.00  --preprocessed_out                      false
% 2.23/1.00  --preprocessed_stats                    false
% 2.23/1.00  
% 2.23/1.00  ------ Abstraction refinement Options
% 2.23/1.00  
% 2.23/1.00  --abstr_ref                             []
% 2.23/1.00  --abstr_ref_prep                        false
% 2.23/1.00  --abstr_ref_until_sat                   false
% 2.23/1.00  --abstr_ref_sig_restrict                funpre
% 2.23/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.23/1.00  --abstr_ref_under                       []
% 2.23/1.00  
% 2.23/1.00  ------ SAT Options
% 2.23/1.00  
% 2.23/1.00  --sat_mode                              false
% 2.23/1.00  --sat_fm_restart_options                ""
% 2.23/1.00  --sat_gr_def                            false
% 2.23/1.00  --sat_epr_types                         true
% 2.23/1.00  --sat_non_cyclic_types                  false
% 2.23/1.00  --sat_finite_models                     false
% 2.23/1.00  --sat_fm_lemmas                         false
% 2.23/1.00  --sat_fm_prep                           false
% 2.23/1.00  --sat_fm_uc_incr                        true
% 2.23/1.00  --sat_out_model                         small
% 2.23/1.00  --sat_out_clauses                       false
% 2.23/1.00  
% 2.23/1.00  ------ QBF Options
% 2.23/1.00  
% 2.23/1.00  --qbf_mode                              false
% 2.23/1.00  --qbf_elim_univ                         false
% 2.23/1.00  --qbf_dom_inst                          none
% 2.23/1.00  --qbf_dom_pre_inst                      false
% 2.23/1.00  --qbf_sk_in                             false
% 2.23/1.00  --qbf_pred_elim                         true
% 2.23/1.00  --qbf_split                             512
% 2.23/1.00  
% 2.23/1.00  ------ BMC1 Options
% 2.23/1.00  
% 2.23/1.00  --bmc1_incremental                      false
% 2.23/1.00  --bmc1_axioms                           reachable_all
% 2.23/1.00  --bmc1_min_bound                        0
% 2.23/1.00  --bmc1_max_bound                        -1
% 2.23/1.00  --bmc1_max_bound_default                -1
% 2.23/1.00  --bmc1_symbol_reachability              true
% 2.23/1.00  --bmc1_property_lemmas                  false
% 2.23/1.00  --bmc1_k_induction                      false
% 2.23/1.00  --bmc1_non_equiv_states                 false
% 2.23/1.00  --bmc1_deadlock                         false
% 2.23/1.00  --bmc1_ucm                              false
% 2.23/1.00  --bmc1_add_unsat_core                   none
% 2.23/1.00  --bmc1_unsat_core_children              false
% 2.23/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.23/1.00  --bmc1_out_stat                         full
% 2.23/1.00  --bmc1_ground_init                      false
% 2.23/1.00  --bmc1_pre_inst_next_state              false
% 2.23/1.00  --bmc1_pre_inst_state                   false
% 2.23/1.00  --bmc1_pre_inst_reach_state             false
% 2.23/1.00  --bmc1_out_unsat_core                   false
% 2.23/1.00  --bmc1_aig_witness_out                  false
% 2.23/1.00  --bmc1_verbose                          false
% 2.23/1.00  --bmc1_dump_clauses_tptp                false
% 2.23/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.23/1.00  --bmc1_dump_file                        -
% 2.23/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.23/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.23/1.00  --bmc1_ucm_extend_mode                  1
% 2.23/1.00  --bmc1_ucm_init_mode                    2
% 2.23/1.00  --bmc1_ucm_cone_mode                    none
% 2.23/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.23/1.00  --bmc1_ucm_relax_model                  4
% 2.23/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.23/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.23/1.00  --bmc1_ucm_layered_model                none
% 2.23/1.00  --bmc1_ucm_max_lemma_size               10
% 2.23/1.00  
% 2.23/1.00  ------ AIG Options
% 2.23/1.00  
% 2.23/1.00  --aig_mode                              false
% 2.23/1.00  
% 2.23/1.00  ------ Instantiation Options
% 2.23/1.00  
% 2.23/1.00  --instantiation_flag                    true
% 2.23/1.00  --inst_sos_flag                         false
% 2.23/1.00  --inst_sos_phase                        true
% 2.23/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.23/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.23/1.00  --inst_lit_sel_side                     none
% 2.23/1.00  --inst_solver_per_active                1400
% 2.23/1.00  --inst_solver_calls_frac                1.
% 2.23/1.00  --inst_passive_queue_type               priority_queues
% 2.23/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.23/1.00  --inst_passive_queues_freq              [25;2]
% 2.23/1.00  --inst_dismatching                      true
% 2.23/1.00  --inst_eager_unprocessed_to_passive     true
% 2.23/1.00  --inst_prop_sim_given                   true
% 2.23/1.00  --inst_prop_sim_new                     false
% 2.23/1.00  --inst_subs_new                         false
% 2.23/1.00  --inst_eq_res_simp                      false
% 2.23/1.00  --inst_subs_given                       false
% 2.23/1.00  --inst_orphan_elimination               true
% 2.23/1.00  --inst_learning_loop_flag               true
% 2.23/1.00  --inst_learning_start                   3000
% 2.23/1.00  --inst_learning_factor                  2
% 2.23/1.00  --inst_start_prop_sim_after_learn       3
% 2.23/1.00  --inst_sel_renew                        solver
% 2.23/1.00  --inst_lit_activity_flag                true
% 2.23/1.00  --inst_restr_to_given                   false
% 2.23/1.00  --inst_activity_threshold               500
% 2.23/1.00  --inst_out_proof                        true
% 2.23/1.00  
% 2.23/1.00  ------ Resolution Options
% 2.23/1.00  
% 2.23/1.00  --resolution_flag                       false
% 2.23/1.00  --res_lit_sel                           adaptive
% 2.23/1.00  --res_lit_sel_side                      none
% 2.23/1.00  --res_ordering                          kbo
% 2.23/1.00  --res_to_prop_solver                    active
% 2.23/1.00  --res_prop_simpl_new                    false
% 2.23/1.00  --res_prop_simpl_given                  true
% 2.23/1.00  --res_passive_queue_type                priority_queues
% 2.23/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.23/1.00  --res_passive_queues_freq               [15;5]
% 2.23/1.00  --res_forward_subs                      full
% 2.23/1.00  --res_backward_subs                     full
% 2.23/1.00  --res_forward_subs_resolution           true
% 2.23/1.00  --res_backward_subs_resolution          true
% 2.23/1.00  --res_orphan_elimination                true
% 2.23/1.00  --res_time_limit                        2.
% 2.23/1.00  --res_out_proof                         true
% 2.23/1.00  
% 2.23/1.00  ------ Superposition Options
% 2.23/1.00  
% 2.23/1.00  --superposition_flag                    true
% 2.23/1.00  --sup_passive_queue_type                priority_queues
% 2.23/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.23/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.23/1.00  --demod_completeness_check              fast
% 2.23/1.00  --demod_use_ground                      true
% 2.23/1.00  --sup_to_prop_solver                    passive
% 2.23/1.00  --sup_prop_simpl_new                    true
% 2.23/1.00  --sup_prop_simpl_given                  true
% 2.23/1.00  --sup_fun_splitting                     false
% 2.23/1.00  --sup_smt_interval                      50000
% 2.23/1.00  
% 2.23/1.00  ------ Superposition Simplification Setup
% 2.23/1.00  
% 2.23/1.00  --sup_indices_passive                   []
% 2.23/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.23/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.23/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_full_bw                           [BwDemod]
% 2.23/1.00  --sup_immed_triv                        [TrivRules]
% 2.23/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.23/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_immed_bw_main                     []
% 2.23/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.23/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.23/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.23/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.23/1.00  
% 2.23/1.00  ------ Combination Options
% 2.23/1.00  
% 2.23/1.00  --comb_res_mult                         3
% 2.23/1.00  --comb_sup_mult                         2
% 2.23/1.00  --comb_inst_mult                        10
% 2.23/1.00  
% 2.23/1.00  ------ Debug Options
% 2.23/1.00  
% 2.23/1.00  --dbg_backtrace                         false
% 2.23/1.00  --dbg_dump_prop_clauses                 false
% 2.23/1.00  --dbg_dump_prop_clauses_file            -
% 2.23/1.00  --dbg_out_stat                          false
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  ------ Proving...
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  % SZS status Theorem for theBenchmark.p
% 2.23/1.00  
% 2.23/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.23/1.00  
% 2.23/1.00  fof(f4,axiom,(
% 2.23/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) <=> ! [X1,X2] : ((k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => X1 = X2)))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f13,plain,(
% 2.23/1.00    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | (k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.23/1.00    inference(ennf_transformation,[],[f4])).
% 2.23/1.00  
% 2.23/1.00  fof(f14,plain,(
% 2.23/1.00    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.23/1.00    inference(flattening,[],[f13])).
% 2.23/1.00  
% 2.23/1.00  fof(f28,plain,(
% 2.23/1.00    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.23/1.00    inference(nnf_transformation,[],[f14])).
% 2.23/1.00  
% 2.23/1.00  fof(f29,plain,(
% 2.23/1.00    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.23/1.00    inference(rectify,[],[f28])).
% 2.23/1.00  
% 2.23/1.00  fof(f30,plain,(
% 2.23/1.00    ! [X0] : (? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => (sK1(X0) != sK2(X0) & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) & r2_hidden(sK2(X0),k1_relat_1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0))))),
% 2.23/1.00    introduced(choice_axiom,[])).
% 2.23/1.00  
% 2.23/1.00  fof(f31,plain,(
% 2.23/1.00    ! [X0] : (((v2_funct_1(X0) | (sK1(X0) != sK2(X0) & k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) & r2_hidden(sK2(X0),k1_relat_1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.23/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f29,f30])).
% 2.23/1.00  
% 2.23/1.00  fof(f45,plain,(
% 2.23/1.00    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK1(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f31])).
% 2.23/1.00  
% 2.23/1.00  fof(f10,conjecture,(
% 2.23/1.00    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f11,negated_conjecture,(
% 2.23/1.00    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 2.23/1.00    inference(negated_conjecture,[],[f10])).
% 2.23/1.00  
% 2.23/1.00  fof(f21,plain,(
% 2.23/1.00    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | (k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 2.23/1.00    inference(ennf_transformation,[],[f11])).
% 2.23/1.00  
% 2.23/1.00  fof(f22,plain,(
% 2.23/1.00    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 2.23/1.00    inference(flattening,[],[f21])).
% 2.23/1.00  
% 2.23/1.00  fof(f32,plain,(
% 2.23/1.00    ? [X0,X1] : (((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 2.23/1.00    inference(nnf_transformation,[],[f22])).
% 2.23/1.00  
% 2.23/1.00  fof(f33,plain,(
% 2.23/1.00    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 2.23/1.00    inference(flattening,[],[f32])).
% 2.23/1.00  
% 2.23/1.00  fof(f34,plain,(
% 2.23/1.00    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 2.23/1.00    inference(rectify,[],[f33])).
% 2.23/1.00  
% 2.23/1.00  fof(f36,plain,(
% 2.23/1.00    ( ! [X0,X1] : (? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => (sK5 != sK6 & k1_funct_1(X1,sK5) = k1_funct_1(X1,sK6) & r2_hidden(sK6,X0) & r2_hidden(sK5,X0))) )),
% 2.23/1.00    introduced(choice_axiom,[])).
% 2.23/1.00  
% 2.23/1.00  fof(f35,plain,(
% 2.23/1.00    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((? [X3,X2] : (X2 != X3 & k1_funct_1(sK4,X2) = k1_funct_1(sK4,X3) & r2_hidden(X3,sK3) & r2_hidden(X2,sK3)) | ~v2_funct_1(sK4)) & (! [X5,X4] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3)) | v2_funct_1(sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) & v1_funct_2(sK4,sK3,sK3) & v1_funct_1(sK4))),
% 2.23/1.00    introduced(choice_axiom,[])).
% 2.23/1.00  
% 2.23/1.00  fof(f37,plain,(
% 2.23/1.00    ((sK5 != sK6 & k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) & r2_hidden(sK6,sK3) & r2_hidden(sK5,sK3)) | ~v2_funct_1(sK4)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3)) | v2_funct_1(sK4)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) & v1_funct_2(sK4,sK3,sK3) & v1_funct_1(sK4)),
% 2.23/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f34,f36,f35])).
% 2.23/1.00  
% 2.23/1.00  fof(f54,plain,(
% 2.23/1.00    v1_funct_1(sK4)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f56,plain,(
% 2.23/1.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f6,axiom,(
% 2.23/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f16,plain,(
% 2.23/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.23/1.00    inference(ennf_transformation,[],[f6])).
% 2.23/1.00  
% 2.23/1.00  fof(f50,plain,(
% 2.23/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.23/1.00    inference(cnf_transformation,[],[f16])).
% 2.23/1.00  
% 2.23/1.00  fof(f1,axiom,(
% 2.23/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f12,plain,(
% 2.23/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.23/1.00    inference(ennf_transformation,[],[f1])).
% 2.23/1.00  
% 2.23/1.00  fof(f23,plain,(
% 2.23/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.23/1.00    inference(nnf_transformation,[],[f12])).
% 2.23/1.00  
% 2.23/1.00  fof(f24,plain,(
% 2.23/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.23/1.00    inference(rectify,[],[f23])).
% 2.23/1.00  
% 2.23/1.00  fof(f25,plain,(
% 2.23/1.00    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.23/1.00    introduced(choice_axiom,[])).
% 2.23/1.00  
% 2.23/1.00  fof(f26,plain,(
% 2.23/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.23/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).
% 2.23/1.00  
% 2.23/1.00  fof(f38,plain,(
% 2.23/1.00    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f26])).
% 2.23/1.00  
% 2.23/1.00  fof(f46,plain,(
% 2.23/1.00    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK2(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f31])).
% 2.23/1.00  
% 2.23/1.00  fof(f47,plain,(
% 2.23/1.00    ( ! [X0] : (v2_funct_1(X0) | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK2(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f31])).
% 2.23/1.00  
% 2.23/1.00  fof(f48,plain,(
% 2.23/1.00    ( ! [X0] : (v2_funct_1(X0) | sK1(X0) != sK2(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f31])).
% 2.23/1.00  
% 2.23/1.00  fof(f44,plain,(
% 2.23/1.00    ( ! [X4,X0,X3] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f31])).
% 2.23/1.00  
% 2.23/1.00  fof(f57,plain,(
% 2.23/1.00    ( ! [X4,X5] : (X4 = X5 | k1_funct_1(sK4,X4) != k1_funct_1(sK4,X5) | ~r2_hidden(X5,sK3) | ~r2_hidden(X4,sK3) | v2_funct_1(sK4)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f8,axiom,(
% 2.23/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f18,plain,(
% 2.23/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.23/1.00    inference(ennf_transformation,[],[f8])).
% 2.23/1.00  
% 2.23/1.00  fof(f52,plain,(
% 2.23/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.23/1.00    inference(cnf_transformation,[],[f18])).
% 2.23/1.00  
% 2.23/1.00  fof(f7,axiom,(
% 2.23/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f17,plain,(
% 2.23/1.00    ! [X0,X1,X2] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.23/1.00    inference(ennf_transformation,[],[f7])).
% 2.23/1.00  
% 2.23/1.00  fof(f51,plain,(
% 2.23/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.23/1.00    inference(cnf_transformation,[],[f17])).
% 2.23/1.00  
% 2.23/1.00  fof(f3,axiom,(
% 2.23/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f27,plain,(
% 2.23/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.23/1.00    inference(nnf_transformation,[],[f3])).
% 2.23/1.00  
% 2.23/1.00  fof(f42,plain,(
% 2.23/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.23/1.00    inference(cnf_transformation,[],[f27])).
% 2.23/1.00  
% 2.23/1.00  fof(f9,axiom,(
% 2.23/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ((r2_hidden(X2,X0) & v2_funct_1(X3)) => (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1)))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f19,plain,(
% 2.23/1.00    ! [X0,X1,X2,X3] : (((k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1) | (~r2_hidden(X2,X0) | ~v2_funct_1(X3))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 2.23/1.00    inference(ennf_transformation,[],[f9])).
% 2.23/1.00  
% 2.23/1.00  fof(f20,plain,(
% 2.23/1.00    ! [X0,X1,X2,X3] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 2.23/1.00    inference(flattening,[],[f19])).
% 2.23/1.00  
% 2.23/1.00  fof(f53,plain,(
% 2.23/1.00    ( ! [X2,X0,X3,X1] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f20])).
% 2.23/1.00  
% 2.23/1.00  fof(f55,plain,(
% 2.23/1.00    v1_funct_2(sK4,sK3,sK3)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f59,plain,(
% 2.23/1.00    r2_hidden(sK6,sK3) | ~v2_funct_1(sK4)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f60,plain,(
% 2.23/1.00    k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) | ~v2_funct_1(sK4)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f5,axiom,(
% 2.23/1.00    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f15,plain,(
% 2.23/1.00    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 2.23/1.00    inference(ennf_transformation,[],[f5])).
% 2.23/1.00  
% 2.23/1.00  fof(f49,plain,(
% 2.23/1.00    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f15])).
% 2.23/1.00  
% 2.23/1.00  fof(f2,axiom,(
% 2.23/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.23/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.23/1.00  
% 2.23/1.00  fof(f41,plain,(
% 2.23/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.23/1.00    inference(cnf_transformation,[],[f2])).
% 2.23/1.00  
% 2.23/1.00  fof(f58,plain,(
% 2.23/1.00    r2_hidden(sK5,sK3) | ~v2_funct_1(sK4)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  fof(f61,plain,(
% 2.23/1.00    sK5 != sK6 | ~v2_funct_1(sK4)),
% 2.23/1.00    inference(cnf_transformation,[],[f37])).
% 2.23/1.00  
% 2.23/1.00  cnf(c_9,plain,
% 2.23/1.00      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 2.23/1.00      | ~ v1_relat_1(X0)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | v2_funct_1(X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f45]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_23,negated_conjecture,
% 2.23/1.00      ( v1_funct_1(sK4) ),
% 2.23/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_354,plain,
% 2.23/1.00      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 2.23/1.00      | ~ v1_relat_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | sK4 != X0 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_9,c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_355,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ v1_relat_1(sK4)
% 2.23/1.00      | v2_funct_1(sK4) ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_354]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2965,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_355]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_21,negated_conjecture,
% 2.23/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) ),
% 2.23/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_26,plain,
% 2.23/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_356,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_355]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_12,plain,
% 2.23/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.23/1.00      | v1_relat_1(X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3167,plain,
% 2.23/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
% 2.23/1.00      | v1_relat_1(sK4) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3168,plain,
% 2.23/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) != iProver_top
% 2.23/1.00      | v1_relat_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_3167]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3953,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_2965,c_26,c_356,c_3168]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 2.23/1.00      inference(cnf_transformation,[],[f38]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2981,plain,
% 2.23/1.00      ( r2_hidden(X0,X1) != iProver_top
% 2.23/1.00      | r2_hidden(X0,X2) = iProver_top
% 2.23/1.00      | r1_tarski(X1,X2) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4212,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),X0) = iProver_top
% 2.23/1.00      | r1_tarski(k1_relat_1(sK4),X0) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_3953,c_2981]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_24,plain,
% 2.23/1.00      ( v1_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_52,plain,
% 2.23/1.00      ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
% 2.23/1.00      | v1_relat_1(X0) != iProver_top
% 2.23/1.00      | v1_funct_1(X0) != iProver_top
% 2.23/1.00      | v2_funct_1(X0) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_54,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) = iProver_top
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v1_funct_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_52]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_8,plain,
% 2.23/1.00      ( r2_hidden(sK2(X0),k1_relat_1(X0))
% 2.23/1.00      | ~ v1_relat_1(X0)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | v2_funct_1(X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_55,plain,
% 2.23/1.00      ( r2_hidden(sK2(X0),k1_relat_1(X0)) = iProver_top
% 2.23/1.00      | v1_relat_1(X0) != iProver_top
% 2.23/1.00      | v1_funct_1(X0) != iProver_top
% 2.23/1.00      | v2_funct_1(X0) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_57,plain,
% 2.23/1.00      ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) = iProver_top
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v1_funct_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_55]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_7,plain,
% 2.23/1.00      ( ~ v1_relat_1(X0)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0)) ),
% 2.23/1.00      inference(cnf_transformation,[],[f47]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_58,plain,
% 2.23/1.00      ( k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
% 2.23/1.00      | v1_relat_1(X0) != iProver_top
% 2.23/1.00      | v1_funct_1(X0) != iProver_top
% 2.23/1.00      | v2_funct_1(X0) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_60,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v1_funct_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_58]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_6,plain,
% 2.23/1.00      ( ~ v1_relat_1(X0)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | sK2(X0) != sK1(X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_61,plain,
% 2.23/1.00      ( sK2(X0) != sK1(X0)
% 2.23/1.00      | v1_relat_1(X0) != iProver_top
% 2.23/1.00      | v1_funct_1(X0) != iProver_top
% 2.23/1.00      | v2_funct_1(X0) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_63,plain,
% 2.23/1.00      ( sK2(sK4) != sK1(sK4)
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v1_funct_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_61]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_10,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.23/1.00      | ~ r2_hidden(X2,k1_relat_1(X1))
% 2.23/1.00      | ~ v1_relat_1(X1)
% 2.23/1.00      | ~ v1_funct_1(X1)
% 2.23/1.00      | ~ v2_funct_1(X1)
% 2.23/1.00      | X0 = X2
% 2.23/1.00      | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
% 2.23/1.00      inference(cnf_transformation,[],[f44]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_406,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.23/1.00      | ~ r2_hidden(X2,k1_relat_1(X1))
% 2.23/1.00      | ~ v1_relat_1(X1)
% 2.23/1.00      | ~ v2_funct_1(X1)
% 2.23/1.00      | X2 = X0
% 2.23/1.00      | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
% 2.23/1.00      | sK4 != X1 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_10,c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_407,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.23/1.00      | ~ r2_hidden(X1,k1_relat_1(sK4))
% 2.23/1.00      | ~ v1_relat_1(sK4)
% 2.23/1.00      | ~ v2_funct_1(sK4)
% 2.23/1.00      | X0 = X1
% 2.23/1.00      | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1) ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_406]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2359,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.23/1.00      | ~ r2_hidden(X1,k1_relat_1(sK4))
% 2.23/1.00      | X0 = X1
% 2.23/1.00      | k1_funct_1(sK4,X0) != k1_funct_1(sK4,X1)
% 2.23/1.00      | ~ sP0_iProver_split ),
% 2.23/1.00      inference(splitting,
% 2.23/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.23/1.00                [c_407]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3440,plain,
% 2.23/1.00      ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ sP0_iProver_split
% 2.23/1.00      | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | sK2(sK4) = sK1(sK4) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2359]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3441,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | sK2(sK4) = sK1(sK4)
% 2.23/1.00      | r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
% 2.23/1.00      | r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
% 2.23/1.00      | sP0_iProver_split != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_3440]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_380,plain,
% 2.23/1.00      ( ~ v1_relat_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | k1_funct_1(X0,sK2(X0)) = k1_funct_1(X0,sK1(X0))
% 2.23/1.00      | sK4 != X0 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_381,plain,
% 2.23/1.00      ( ~ v1_relat_1(sK4)
% 2.23/1.00      | v2_funct_1(sK4)
% 2.23/1.00      | k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4)) ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_380]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2963,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_381]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_382,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_381]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3573,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) = k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_2963,c_26,c_382,c_3168]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2360,plain,
% 2.23/1.00      ( ~ v1_relat_1(sK4) | ~ v2_funct_1(sK4) | sP0_iProver_split ),
% 2.23/1.00      inference(splitting,
% 2.23/1.00                [splitting(split),new_symbols(definition,[])],
% 2.23/1.00                [c_407]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2960,plain,
% 2.23/1.00      ( v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP0_iProver_split = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_2360]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2392,plain,
% 2.23/1.00      ( v1_relat_1(sK4) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP0_iProver_split = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_2360]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3202,plain,
% 2.23/1.00      ( v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP0_iProver_split = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_2960,c_26,c_2392,c_3168]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3582,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
% 2.23/1.00      | sP0_iProver_split = iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_3573,c_3202]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_20,negated_conjecture,
% 2.23/1.00      ( ~ r2_hidden(X0,sK3)
% 2.23/1.00      | ~ r2_hidden(X1,sK3)
% 2.23/1.00      | v2_funct_1(sK4)
% 2.23/1.00      | X1 = X0
% 2.23/1.00      | k1_funct_1(sK4,X1) != k1_funct_1(sK4,X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3241,plain,
% 2.23/1.00      ( ~ r2_hidden(sK2(sK4),sK3)
% 2.23/1.00      | ~ r2_hidden(sK1(sK4),sK3)
% 2.23/1.00      | v2_funct_1(sK4)
% 2.23/1.00      | k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | sK2(sK4) = sK1(sK4) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_20]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3242,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK2(sK4)) != k1_funct_1(sK4,sK1(sK4))
% 2.23/1.00      | sK2(sK4) = sK1(sK4)
% 2.23/1.00      | r2_hidden(sK2(sK4),sK3) != iProver_top
% 2.23/1.00      | r2_hidden(sK1(sK4),sK3) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_3241]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3216,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),X0)
% 2.23/1.00      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3734,plain,
% 2.23/1.00      ( ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | r2_hidden(sK1(sK4),sK3)
% 2.23/1.00      | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_3216]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3737,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4)) != iProver_top
% 2.23/1.00      | r2_hidden(sK1(sK4),sK3) = iProver_top
% 2.23/1.00      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_3734]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3229,plain,
% 2.23/1.00      ( r2_hidden(sK2(sK4),X0)
% 2.23/1.00      | ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ r1_tarski(k1_relat_1(sK4),X0) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3761,plain,
% 2.23/1.00      ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | r2_hidden(sK2(sK4),sK3)
% 2.23/1.00      | ~ r1_tarski(k1_relat_1(sK4),sK3) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_3229]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3764,plain,
% 2.23/1.00      ( r2_hidden(sK2(sK4),k1_relat_1(sK4)) != iProver_top
% 2.23/1.00      | r2_hidden(sK2(sK4),sK3) = iProver_top
% 2.23/1.00      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_3761]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2968,plain,
% 2.23/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_14,plain,
% 2.23/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.23/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2974,plain,
% 2.23/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.23/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3701,plain,
% 2.23/1.00      ( k1_relset_1(sK3,sK3,sK4) = k1_relat_1(sK4) ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_2968,c_2974]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_13,plain,
% 2.23/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.23/1.00      | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 2.23/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2975,plain,
% 2.23/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.23/1.00      | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4105,plain,
% 2.23/1.00      ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK3)) = iProver_top
% 2.23/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3))) != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_3701,c_2975]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4402,plain,
% 2.23/1.00      ( m1_subset_1(k1_relat_1(sK4),k1_zfmisc_1(sK3)) = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_4105,c_26]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_5,plain,
% 2.23/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.23/1.00      inference(cnf_transformation,[],[f42]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2978,plain,
% 2.23/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.23/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4407,plain,
% 2.23/1.00      ( r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4402,c_2978]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4464,plain,
% 2.23/1.00      ( sP0_iProver_split = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_3582,c_24,c_26,c_54,c_57,c_60,c_63,c_2392,c_3168,
% 2.23/1.00                 c_3242,c_3737,c_3764,c_4407]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4524,plain,
% 2.23/1.00      ( v2_funct_1(sK4) = iProver_top ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_4212,c_24,c_26,c_54,c_57,c_60,c_63,c_3168,c_3242,
% 2.23/1.00                 c_3737,c_3764,c_4407]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_15,plain,
% 2.23/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 2.23/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.23/1.00      | ~ r2_hidden(X3,X1)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | ~ v2_funct_1(X0)
% 2.23/1.00      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 2.23/1.00      | k1_xboole_0 = X2 ),
% 2.23/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_22,negated_conjecture,
% 2.23/1.00      ( v1_funct_2(sK4,sK3,sK3) ),
% 2.23/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_325,plain,
% 2.23/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.23/1.00      | ~ r2_hidden(X3,X1)
% 2.23/1.00      | ~ v1_funct_1(X0)
% 2.23/1.00      | ~ v2_funct_1(X0)
% 2.23/1.00      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 2.23/1.00      | sK3 != X2
% 2.23/1.00      | sK3 != X1
% 2.23/1.00      | sK4 != X0
% 2.23/1.00      | k1_xboole_0 = X2 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_22]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_326,plain,
% 2.23/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK3)))
% 2.23/1.00      | ~ r2_hidden(X0,sK3)
% 2.23/1.00      | ~ v1_funct_1(sK4)
% 2.23/1.00      | ~ v2_funct_1(sK4)
% 2.23/1.00      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 2.23/1.00      | k1_xboole_0 = sK3 ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_325]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_330,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,sK3)
% 2.23/1.00      | ~ v2_funct_1(sK4)
% 2.23/1.00      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 2.23/1.00      | k1_xboole_0 = sK3 ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_326,c_23,c_21]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2362,plain,
% 2.23/1.00      ( ~ v2_funct_1(sK4) | sP1_iProver_split | k1_xboole_0 = sK3 ),
% 2.23/1.00      inference(splitting,
% 2.23/1.00                [splitting(split),new_symbols(definition,[])],
% 2.23/1.00                [c_330]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2966,plain,
% 2.23/1.00      ( k1_xboole_0 = sK3
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP1_iProver_split = iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_2362]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4529,plain,
% 2.23/1.00      ( sK3 = k1_xboole_0 | sP1_iProver_split = iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4524,c_2966]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_18,negated_conjecture,
% 2.23/1.00      ( r2_hidden(sK6,sK3) | ~ v2_funct_1(sK4) ),
% 2.23/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2971,plain,
% 2.23/1.00      ( r2_hidden(sK6,sK3) = iProver_top
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2361,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,sK3)
% 2.23/1.00      | k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 2.23/1.00      | ~ sP1_iProver_split ),
% 2.23/1.00      inference(splitting,
% 2.23/1.00                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 2.23/1.00                [c_330]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2967,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,X0)) = X0
% 2.23/1.00      | r2_hidden(X0,sK3) != iProver_top
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_2361]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3479,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_2971,c_2967]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4531,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK6)) = sK6
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4524,c_3479]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_17,negated_conjecture,
% 2.23/1.00      ( ~ v2_funct_1(sK4) | k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6) ),
% 2.23/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2972,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK5) = k1_funct_1(sK4,sK6)
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4533,plain,
% 2.23/1.00      ( k1_funct_1(sK4,sK6) = k1_funct_1(sK4,sK5) ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4524,c_2972]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4536,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(light_normalisation,[status(thm)],[c_4531,c_4533]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4956,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6
% 2.23/1.00      | sK3 = k1_xboole_0 ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4529,c_4536]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_11,plain,
% 2.23/1.00      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2977,plain,
% 2.23/1.00      ( r2_hidden(X0,X1) != iProver_top
% 2.23/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3366,plain,
% 2.23/1.00      ( r1_tarski(sK3,sK6) != iProver_top
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_2971,c_2977]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3376,plain,
% 2.23/1.00      ( ~ r1_tarski(sK3,sK6) | ~ v2_funct_1(sK4) ),
% 2.23/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_3366]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4526,plain,
% 2.23/1.00      ( v2_funct_1(sK4) ),
% 2.23/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_4524]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2366,plain,
% 2.23/1.00      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 2.23/1.00      theory(equality) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3553,plain,
% 2.23/1.00      ( ~ r1_tarski(X0,sK6) | r1_tarski(sK3,sK6) | sK3 != X0 ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2366]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_5303,plain,
% 2.23/1.00      ( r1_tarski(sK3,sK6)
% 2.23/1.00      | ~ r1_tarski(k1_xboole_0,sK6)
% 2.23/1.00      | sK3 != k1_xboole_0 ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_3553]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3,plain,
% 2.23/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 2.23/1.00      inference(cnf_transformation,[],[f41]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_5304,plain,
% 2.23/1.00      ( r1_tarski(k1_xboole_0,sK6) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_5992,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK6 ),
% 2.23/1.00      inference(global_propositional_subsumption,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_4956,c_3376,c_4526,c_5303,c_5304]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_19,negated_conjecture,
% 2.23/1.00      ( r2_hidden(sK5,sK3) | ~ v2_funct_1(sK4) ),
% 2.23/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2970,plain,
% 2.23/1.00      ( r2_hidden(sK5,sK3) = iProver_top
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top ),
% 2.23/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3480,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
% 2.23/1.00      | v2_funct_1(sK4) != iProver_top
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_2970,c_2967]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4530,plain,
% 2.23/1.00      ( k1_funct_1(k2_funct_1(sK4),k1_funct_1(sK4,sK5)) = sK5
% 2.23/1.00      | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(superposition,[status(thm)],[c_4524,c_3480]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_5995,plain,
% 2.23/1.00      ( sK6 = sK5 | sP1_iProver_split != iProver_top ),
% 2.23/1.00      inference(demodulation,[status(thm)],[c_5992,c_4530]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_4466,plain,
% 2.23/1.00      ( sP0_iProver_split ),
% 2.23/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_4464]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3469,plain,
% 2.23/1.00      ( ~ r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ sP0_iProver_split
% 2.23/1.00      | k1_funct_1(sK4,sK1(sK4)) != k1_funct_1(sK4,sK2(sK4))
% 2.23/1.00      | sK1(sK4) = sK2(sK4) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2359]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2365,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3244,plain,
% 2.23/1.00      ( sK2(sK4) != X0 | sK2(sK4) = sK1(sK4) | sK1(sK4) != X0 ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2365]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_3358,plain,
% 2.23/1.00      ( sK2(sK4) != sK2(sK4)
% 2.23/1.00      | sK2(sK4) = sK1(sK4)
% 2.23/1.00      | sK1(sK4) != sK2(sK4) ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_3244]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2364,plain,( X0 = X0 ),theory(equality) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2391,plain,
% 2.23/1.00      ( sK4 = sK4 ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2364]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2372,plain,( X0 != X1 | sK2(X0) = sK2(X1) ),theory(equality) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_2384,plain,
% 2.23/1.00      ( sK2(sK4) = sK2(sK4) | sK4 != sK4 ),
% 2.23/1.00      inference(instantiation,[status(thm)],[c_2372]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_16,negated_conjecture,
% 2.23/1.00      ( ~ v2_funct_1(sK4) | sK5 != sK6 ),
% 2.23/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_1056,plain,
% 2.23/1.00      ( r2_hidden(sK1(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ v1_relat_1(sK4)
% 2.23/1.00      | sK6 != sK5 ),
% 2.23/1.00      inference(resolution,[status(thm)],[c_355,c_16]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_367,plain,
% 2.23/1.00      ( r2_hidden(sK2(X0),k1_relat_1(X0))
% 2.23/1.00      | ~ v1_relat_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | sK4 != X0 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_8,c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_368,plain,
% 2.23/1.00      ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ v1_relat_1(sK4)
% 2.23/1.00      | v2_funct_1(sK4) ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_367]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_965,plain,
% 2.23/1.00      ( r2_hidden(sK2(sK4),k1_relat_1(sK4))
% 2.23/1.00      | ~ v1_relat_1(sK4)
% 2.23/1.00      | sK6 != sK5 ),
% 2.23/1.00      inference(resolution,[status(thm)],[c_368,c_16]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_874,plain,
% 2.23/1.00      ( ~ v1_relat_1(sK4)
% 2.23/1.00      | k1_funct_1(sK4,sK1(sK4)) = k1_funct_1(sK4,sK2(sK4))
% 2.23/1.00      | sK6 != sK5 ),
% 2.23/1.00      inference(resolution,[status(thm)],[c_381,c_16]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_393,plain,
% 2.23/1.00      ( ~ v1_relat_1(X0)
% 2.23/1.00      | v2_funct_1(X0)
% 2.23/1.00      | sK2(X0) != sK1(X0)
% 2.23/1.00      | sK4 != X0 ),
% 2.23/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_23]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_394,plain,
% 2.23/1.00      ( ~ v1_relat_1(sK4) | v2_funct_1(sK4) | sK2(sK4) != sK1(sK4) ),
% 2.23/1.00      inference(unflattening,[status(thm)],[c_393]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(c_783,plain,
% 2.23/1.00      ( ~ v1_relat_1(sK4) | sK2(sK4) != sK1(sK4) | sK6 != sK5 ),
% 2.23/1.00      inference(resolution,[status(thm)],[c_394,c_16]) ).
% 2.23/1.00  
% 2.23/1.00  cnf(contradiction,plain,
% 2.23/1.00      ( $false ),
% 2.23/1.00      inference(minisat,
% 2.23/1.00                [status(thm)],
% 2.23/1.00                [c_5995,c_5304,c_5303,c_4529,c_4526,c_4466,c_3469,c_3376,
% 2.23/1.00                 c_3358,c_3167,c_2391,c_2384,c_1056,c_965,c_874,c_783,
% 2.23/1.00                 c_21]) ).
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.23/1.00  
% 2.23/1.00  ------                               Statistics
% 2.23/1.00  
% 2.23/1.00  ------ General
% 2.23/1.00  
% 2.23/1.00  abstr_ref_over_cycles:                  0
% 2.23/1.00  abstr_ref_under_cycles:                 0
% 2.23/1.00  gc_basic_clause_elim:                   0
% 2.23/1.00  forced_gc_time:                         0
% 2.23/1.00  parsing_time:                           0.008
% 2.23/1.00  unif_index_cands_time:                  0.
% 2.23/1.00  unif_index_add_time:                    0.
% 2.23/1.00  orderings_time:                         0.
% 2.23/1.00  out_proof_time:                         0.011
% 2.23/1.00  total_time:                             0.152
% 2.23/1.00  num_of_symbols:                         54
% 2.23/1.00  num_of_terms:                           2929
% 2.23/1.00  
% 2.23/1.00  ------ Preprocessing
% 2.23/1.00  
% 2.23/1.00  num_of_splits:                          2
% 2.23/1.00  num_of_split_atoms:                     2
% 2.23/1.00  num_of_reused_defs:                     0
% 2.23/1.00  num_eq_ax_congr_red:                    23
% 2.23/1.00  num_of_sem_filtered_clauses:            1
% 2.23/1.00  num_of_subtypes:                        0
% 2.23/1.00  monotx_restored_types:                  0
% 2.23/1.00  sat_num_of_epr_types:                   0
% 2.23/1.00  sat_num_of_non_cyclic_types:            0
% 2.23/1.00  sat_guarded_non_collapsed_types:        0
% 2.23/1.00  num_pure_diseq_elim:                    0
% 2.23/1.00  simp_replaced_by:                       0
% 2.23/1.00  res_preprocessed:                       123
% 2.23/1.00  prep_upred:                             0
% 2.23/1.00  prep_unflattend:                        54
% 2.23/1.00  smt_new_axioms:                         0
% 2.23/1.00  pred_elim_cands:                        5
% 2.23/1.00  pred_elim:                              2
% 2.23/1.00  pred_elim_cl:                           2
% 2.23/1.00  pred_elim_cycles:                       8
% 2.23/1.00  merged_defs:                            8
% 2.23/1.00  merged_defs_ncl:                        0
% 2.23/1.00  bin_hyper_res:                          8
% 2.23/1.00  prep_cycles:                            4
% 2.23/1.00  pred_elim_time:                         0.026
% 2.23/1.00  splitting_time:                         0.
% 2.23/1.00  sem_filter_time:                        0.
% 2.23/1.00  monotx_time:                            0.
% 2.23/1.00  subtype_inf_time:                       0.
% 2.23/1.00  
% 2.23/1.00  ------ Problem properties
% 2.23/1.00  
% 2.23/1.00  clauses:                                24
% 2.23/1.00  conjectures:                            6
% 2.23/1.00  epr:                                    8
% 2.23/1.00  horn:                                   18
% 2.23/1.00  ground:                                 11
% 2.23/1.00  unary:                                  2
% 2.23/1.00  binary:                                 12
% 2.23/1.00  lits:                                   60
% 2.23/1.00  lits_eq:                                11
% 2.23/1.00  fd_pure:                                0
% 2.23/1.00  fd_pseudo:                              0
% 2.23/1.00  fd_cond:                                0
% 2.23/1.00  fd_pseudo_cond:                         2
% 2.23/1.00  ac_symbols:                             0
% 2.23/1.00  
% 2.23/1.00  ------ Propositional Solver
% 2.23/1.00  
% 2.23/1.00  prop_solver_calls:                      29
% 2.23/1.00  prop_fast_solver_calls:                 1223
% 2.23/1.00  smt_solver_calls:                       0
% 2.23/1.00  smt_fast_solver_calls:                  0
% 2.23/1.00  prop_num_of_clauses:                    1465
% 2.23/1.00  prop_preprocess_simplified:             5630
% 2.23/1.00  prop_fo_subsumed:                       35
% 2.23/1.00  prop_solver_time:                       0.
% 2.23/1.00  smt_solver_time:                        0.
% 2.23/1.00  smt_fast_solver_time:                   0.
% 2.23/1.00  prop_fast_solver_time:                  0.
% 2.23/1.00  prop_unsat_core_time:                   0.
% 2.23/1.00  
% 2.23/1.00  ------ QBF
% 2.23/1.00  
% 2.23/1.00  qbf_q_res:                              0
% 2.23/1.00  qbf_num_tautologies:                    0
% 2.23/1.00  qbf_prep_cycles:                        0
% 2.23/1.00  
% 2.23/1.00  ------ BMC1
% 2.23/1.00  
% 2.23/1.00  bmc1_current_bound:                     -1
% 2.23/1.00  bmc1_last_solved_bound:                 -1
% 2.23/1.00  bmc1_unsat_core_size:                   -1
% 2.23/1.00  bmc1_unsat_core_parents_size:           -1
% 2.23/1.00  bmc1_merge_next_fun:                    0
% 2.23/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.23/1.00  
% 2.23/1.00  ------ Instantiation
% 2.23/1.00  
% 2.23/1.00  inst_num_of_clauses:                    387
% 2.23/1.00  inst_num_in_passive:                    88
% 2.23/1.00  inst_num_in_active:                     249
% 2.23/1.00  inst_num_in_unprocessed:                50
% 2.23/1.00  inst_num_of_loops:                      360
% 2.23/1.00  inst_num_of_learning_restarts:          0
% 2.23/1.00  inst_num_moves_active_passive:          107
% 2.23/1.00  inst_lit_activity:                      0
% 2.23/1.00  inst_lit_activity_moves:                0
% 2.23/1.00  inst_num_tautologies:                   0
% 2.23/1.00  inst_num_prop_implied:                  0
% 2.23/1.00  inst_num_existing_simplified:           0
% 2.23/1.00  inst_num_eq_res_simplified:             0
% 2.23/1.00  inst_num_child_elim:                    0
% 2.23/1.00  inst_num_of_dismatching_blockings:      65
% 2.23/1.00  inst_num_of_non_proper_insts:           395
% 2.23/1.00  inst_num_of_duplicates:                 0
% 2.23/1.00  inst_inst_num_from_inst_to_res:         0
% 2.23/1.00  inst_dismatching_checking_time:         0.
% 2.23/1.00  
% 2.23/1.00  ------ Resolution
% 2.23/1.00  
% 2.23/1.00  res_num_of_clauses:                     0
% 2.23/1.00  res_num_in_passive:                     0
% 2.23/1.00  res_num_in_active:                      0
% 2.23/1.00  res_num_of_loops:                       127
% 2.23/1.00  res_forward_subset_subsumed:            11
% 2.23/1.00  res_backward_subset_subsumed:           0
% 2.23/1.00  res_forward_subsumed:                   0
% 2.23/1.00  res_backward_subsumed:                  1
% 2.23/1.00  res_forward_subsumption_resolution:     0
% 2.23/1.00  res_backward_subsumption_resolution:    0
% 2.23/1.00  res_clause_to_clause_subsumption:       207
% 2.23/1.00  res_orphan_elimination:                 0
% 2.23/1.00  res_tautology_del:                      72
% 2.23/1.00  res_num_eq_res_simplified:              0
% 2.23/1.00  res_num_sel_changes:                    0
% 2.23/1.00  res_moves_from_active_to_pass:          0
% 2.23/1.00  
% 2.23/1.00  ------ Superposition
% 2.23/1.00  
% 2.23/1.00  sup_time_total:                         0.
% 2.23/1.00  sup_time_generating:                    0.
% 2.23/1.00  sup_time_sim_full:                      0.
% 2.23/1.00  sup_time_sim_immed:                     0.
% 2.23/1.00  
% 2.23/1.00  sup_num_of_clauses:                     92
% 2.23/1.00  sup_num_in_active:                      64
% 2.23/1.00  sup_num_in_passive:                     28
% 2.23/1.00  sup_num_of_loops:                       70
% 2.23/1.00  sup_fw_superposition:                   46
% 2.23/1.00  sup_bw_superposition:                   58
% 2.23/1.00  sup_immediate_simplified:               11
% 2.23/1.00  sup_given_eliminated:                   0
% 2.23/1.00  comparisons_done:                       0
% 2.23/1.00  comparisons_avoided:                    6
% 2.23/1.00  
% 2.23/1.00  ------ Simplifications
% 2.23/1.00  
% 2.23/1.00  
% 2.23/1.00  sim_fw_subset_subsumed:                 7
% 2.23/1.00  sim_bw_subset_subsumed:                 4
% 2.23/1.00  sim_fw_subsumed:                        1
% 2.23/1.00  sim_bw_subsumed:                        1
% 2.23/1.00  sim_fw_subsumption_res:                 2
% 2.23/1.00  sim_bw_subsumption_res:                 0
% 2.23/1.00  sim_tautology_del:                      1
% 2.23/1.00  sim_eq_tautology_del:                   6
% 2.23/1.00  sim_eq_res_simp:                        0
% 2.23/1.00  sim_fw_demodulated:                     0
% 2.23/1.00  sim_bw_demodulated:                     5
% 2.23/1.00  sim_light_normalised:                   4
% 2.23/1.00  sim_joinable_taut:                      0
% 2.23/1.00  sim_joinable_simp:                      0
% 2.23/1.00  sim_ac_normalised:                      0
% 2.23/1.00  sim_smt_subsumption:                    0
% 2.23/1.00  
%------------------------------------------------------------------------------
