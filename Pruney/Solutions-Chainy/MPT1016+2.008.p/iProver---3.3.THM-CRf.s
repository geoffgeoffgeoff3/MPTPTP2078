%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:52 EST 2020

% Result     : Theorem 1.86s
% Output     : CNFRefutation 1.95s
% Verified   : 
% Statistics : Number of formulae       :  163 (1643 expanded)
%              Number of clauses        :  106 ( 466 expanded)
%              Number of leaves         :   16 ( 323 expanded)
%              Depth                    :   23
%              Number of atoms          :  612 (11409 expanded)
%              Number of equality atoms :  237 (3478 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( ( r2_hidden(X2,X0)
          & v2_funct_1(X3) )
       => ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f23])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ v2_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f11,conjecture,(
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

fof(f12,negated_conjecture,(
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
    inference(negated_conjecture,[],[f11])).

fof(f25,plain,(
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
    inference(ennf_transformation,[],[f12])).

fof(f26,plain,(
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
    inference(flattening,[],[f25])).

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
    inference(nnf_transformation,[],[f26])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f35,plain,(
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
    inference(rectify,[],[f34])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2,X3] :
          ( X2 != X3
          & k1_funct_1(X1,X2) = k1_funct_1(X1,X3)
          & r2_hidden(X3,X0)
          & r2_hidden(X2,X0) )
     => ( sK4 != sK5
        & k1_funct_1(X1,sK4) = k1_funct_1(X1,sK5)
        & r2_hidden(sK5,X0)
        & r2_hidden(sK4,X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
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
            & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3)
            & r2_hidden(X3,sK2)
            & r2_hidden(X2,sK2) )
        | ~ v2_funct_1(sK3) )
      & ( ! [X5,X4] :
            ( X4 = X5
            | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
            | ~ r2_hidden(X5,sK2)
            | ~ r2_hidden(X4,sK2) )
        | v2_funct_1(sK3) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
      & v1_funct_2(sK3,sK2,sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ( sK4 != sK5
        & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
        & r2_hidden(sK5,sK2)
        & r2_hidden(sK4,sK2) )
      | ~ v2_funct_1(sK3) )
    & ( ! [X4,X5] :
          ( X4 = X5
          | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
          | ~ r2_hidden(X5,sK2)
          | ~ r2_hidden(X4,sK2) )
      | v2_funct_1(sK3) )
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
    & v1_funct_2(sK3,sK2,sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f35,f37,f36])).

fof(f56,plain,(
    v1_funct_2(sK3,sK2,sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f55,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
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

fof(f18,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
      <=> ! [X1,X2] :
            ( X1 = X2
            | k1_funct_1(X0,X1) != k1_funct_1(X0,X2)
            | ~ r2_hidden(X2,k1_relat_1(X0))
            | ~ r2_hidden(X1,k1_relat_1(X0)) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f18])).

fof(f29,plain,(
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
    inference(nnf_transformation,[],[f19])).

fof(f30,plain,(
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
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X0] :
      ( ? [X1,X2] :
          ( X1 != X2
          & k1_funct_1(X0,X1) = k1_funct_1(X0,X2)
          & r2_hidden(X2,k1_relat_1(X0))
          & r2_hidden(X1,k1_relat_1(X0)) )
     => ( sK0(X0) != sK1(X0)
        & k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0))
        & r2_hidden(sK1(X0),k1_relat_1(X0))
        & r2_hidden(sK0(X0),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0] :
      ( ( ( v2_funct_1(X0)
          | ( sK0(X0) != sK1(X0)
            & k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0))
            & r2_hidden(sK1(X0),k1_relat_1(X0))
            & r2_hidden(sK0(X0),k1_relat_1(X0)) ) )
        & ( ! [X3,X4] :
              ( X3 = X4
              | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
              | ~ r2_hidden(X4,k1_relat_1(X0))
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ v2_funct_1(X0) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f30,f31])).

fof(f47,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK0(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f48,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | r2_hidden(sK1(X0),k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f49,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f50,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | sK0(X0) != sK1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f58,plain,(
    ! [X4,X5] :
      ( X4 = X5
      | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5)
      | ~ r2_hidden(X5,sK2)
      | ~ r2_hidden(X4,sK2)
      | v2_funct_1(sK3) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

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
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f59,plain,
    ( r2_hidden(sK4,sK2)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f61,plain,
    ( k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f60,plain,
    ( r2_hidden(sK5,sK2)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f62,plain,
    ( sK4 != sK5
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f46,plain,(
    ! [X4,X0,X3] :
      ( X3 = X4
      | k1_funct_1(X0,X3) != k1_funct_1(X0,X4)
      | ~ r2_hidden(X4,k1_relat_1(X0))
      | ~ r2_hidden(X3,k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f2,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f7,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_22,negated_conjecture,
    ( v1_funct_2(sK3,sK2,sK2) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_325,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
    | sK2 != X2
    | sK2 != X1
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_22])).

cnf(c_326,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
    | ~ r2_hidden(X0,sK2)
    | ~ v1_funct_1(sK3)
    | ~ v2_funct_1(sK3)
    | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_325])).

cnf(c_23,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_330,plain,
    ( ~ r2_hidden(X0,sK2)
    | ~ v2_funct_1(sK3)
    | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
    | k1_xboole_0 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_326,c_23,c_21])).

cnf(c_2229,plain,
    ( ~ v2_funct_1(sK3)
    | sP1_iProver_split
    | k1_xboole_0 = sK2 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_330])).

cnf(c_2800,plain,
    ( k1_xboole_0 = sK2
    | v2_funct_1(sK3) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2229])).

cnf(c_24,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_26,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_10,plain,
    ( r2_hidden(sK0(X0),k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_49,plain,
    ( r2_hidden(sK0(X0),k1_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_51,plain,
    ( r2_hidden(sK0(sK3),k1_relat_1(sK3)) = iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_49])).

cnf(c_9,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_52,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_54,plain,
    ( r2_hidden(sK1(sK3),k1_relat_1(sK3)) = iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_52])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK0(X0)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_55,plain,
    ( k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK0(X0))
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_57,plain,
    ( k1_funct_1(sK3,sK1(sK3)) = k1_funct_1(sK3,sK0(sK3))
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_55])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK1(X0) != sK0(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_58,plain,
    ( sK1(X0) != sK0(X0)
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_60,plain,
    ( sK1(sK3) != sK0(sK3)
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_58])).

cnf(c_2266,plain,
    ( k1_xboole_0 = sK2
    | v2_funct_1(sK3) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2229])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_3001,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_3002,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3001])).

cnf(c_14,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_6,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_354,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_14,c_6])).

cnf(c_358,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_354,c_14,c_13,c_6])).

cnf(c_359,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(renaming,[status(thm)],[c_358])).

cnf(c_3012,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
    inference(instantiation,[status(thm)],[c_359])).

cnf(c_3013,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3012])).

cnf(c_20,negated_conjecture,
    ( ~ r2_hidden(X0,sK2)
    | ~ r2_hidden(X1,sK2)
    | v2_funct_1(sK3)
    | X1 = X0
    | k1_funct_1(sK3,X1) != k1_funct_1(sK3,X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_3082,plain,
    ( ~ r2_hidden(sK1(sK3),sK2)
    | ~ r2_hidden(sK0(sK3),sK2)
    | v2_funct_1(sK3)
    | k1_funct_1(sK3,sK1(sK3)) != k1_funct_1(sK3,sK0(sK3))
    | sK1(sK3) = sK0(sK3) ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_3083,plain,
    ( k1_funct_1(sK3,sK1(sK3)) != k1_funct_1(sK3,sK0(sK3))
    | sK1(sK3) = sK0(sK3)
    | r2_hidden(sK1(sK3),sK2) != iProver_top
    | r2_hidden(sK0(sK3),sK2) != iProver_top
    | v2_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3082])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_187,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_2])).

cnf(c_238,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(bin_hyper_res,[status(thm)],[c_0,c_187])).

cnf(c_3088,plain,
    ( ~ r1_tarski(k1_relat_1(sK3),sK2)
    | ~ r2_hidden(X0,k1_relat_1(sK3))
    | r2_hidden(X0,sK2) ),
    inference(instantiation,[status(thm)],[c_238])).

cnf(c_3248,plain,
    ( ~ r1_tarski(k1_relat_1(sK3),sK2)
    | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
    | r2_hidden(sK0(sK3),sK2) ),
    inference(instantiation,[status(thm)],[c_3088])).

cnf(c_3249,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
    | r2_hidden(sK0(sK3),k1_relat_1(sK3)) != iProver_top
    | r2_hidden(sK0(sK3),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3248])).

cnf(c_3251,plain,
    ( ~ r1_tarski(k1_relat_1(sK3),sK2)
    | ~ r2_hidden(sK1(sK3),k1_relat_1(sK3))
    | r2_hidden(sK1(sK3),sK2) ),
    inference(instantiation,[status(thm)],[c_3088])).

cnf(c_3252,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
    | r2_hidden(sK1(sK3),k1_relat_1(sK3)) != iProver_top
    | r2_hidden(sK1(sK3),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3251])).

cnf(c_3517,plain,
    ( k1_xboole_0 = sK2
    | sP1_iProver_split = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2800,c_24,c_26,c_51,c_54,c_57,c_60,c_2266,c_3002,c_3013,c_3083,c_3249,c_3252])).

cnf(c_19,negated_conjecture,
    ( r2_hidden(sK4,sK2)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_2805,plain,
    ( r2_hidden(sK4,sK2) = iProver_top
    | v2_funct_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2228,plain,
    ( ~ r2_hidden(X0,sK2)
    | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_330])).

cnf(c_2801,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
    | r2_hidden(X0,sK2) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2228])).

cnf(c_3399,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
    | v2_funct_1(sK3) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2805,c_2801])).

cnf(c_3446,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
    | sP1_iProver_split != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3399,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,c_3249,c_3252])).

cnf(c_3523,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3517,c_3446])).

cnf(c_487,plain,
    ( r2_hidden(sK1(X0),k1_relat_1(X0))
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_23])).

cnf(c_488,plain,
    ( r2_hidden(sK1(sK3),k1_relat_1(sK3))
    | v2_funct_1(sK3)
    | ~ v1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_487])).

cnf(c_2795,plain,
    ( r2_hidden(sK1(sK3),k1_relat_1(sK3)) = iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_488])).

cnf(c_3626,plain,
    ( v2_funct_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2795,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,c_3249,c_3252])).

cnf(c_17,negated_conjecture,
    ( ~ v2_funct_1(sK3)
    | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2807,plain,
    ( k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
    | v2_funct_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3632,plain,
    ( k1_funct_1(sK3,sK5) = k1_funct_1(sK3,sK4) ),
    inference(superposition,[status(thm)],[c_3626,c_2807])).

cnf(c_18,negated_conjecture,
    ( r2_hidden(sK5,sK2)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_2806,plain,
    ( r2_hidden(sK5,sK2) = iProver_top
    | v2_funct_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_3398,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) = sK5
    | v2_funct_1(sK3) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_2806,c_2801])).

cnf(c_3415,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) = sK5
    | sP1_iProver_split != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3398,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,c_3249,c_3252])).

cnf(c_3786,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK5
    | sP1_iProver_split != iProver_top ),
    inference(demodulation,[status(thm)],[c_3632,c_3415])).

cnf(c_3879,plain,
    ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK5
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3517,c_3786])).

cnf(c_4220,plain,
    ( sK2 = k1_xboole_0
    | sK5 = sK4 ),
    inference(superposition,[status(thm)],[c_3523,c_3879])).

cnf(c_513,plain,
    ( v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK1(X0) != sK0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_23])).

cnf(c_514,plain,
    ( v2_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | sK1(sK3) != sK0(sK3) ),
    inference(unflattening,[status(thm)],[c_513])).

cnf(c_16,negated_conjecture,
    ( ~ v2_funct_1(sK3)
    | sK4 != sK5 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_728,plain,
    ( ~ v1_relat_1(sK3)
    | sK1(sK3) != sK0(sK3)
    | sK5 != sK4 ),
    inference(resolution,[status(thm)],[c_514,c_16])).

cnf(c_500,plain,
    ( v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_23])).

cnf(c_501,plain,
    ( v2_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | k1_funct_1(sK3,sK0(sK3)) = k1_funct_1(sK3,sK1(sK3)) ),
    inference(unflattening,[status(thm)],[c_500])).

cnf(c_819,plain,
    ( ~ v1_relat_1(sK3)
    | k1_funct_1(sK3,sK0(sK3)) = k1_funct_1(sK3,sK1(sK3))
    | sK5 != sK4 ),
    inference(resolution,[status(thm)],[c_501,c_16])).

cnf(c_910,plain,
    ( r2_hidden(sK1(sK3),k1_relat_1(sK3))
    | ~ v1_relat_1(sK3)
    | sK5 != sK4 ),
    inference(resolution,[status(thm)],[c_488,c_16])).

cnf(c_474,plain,
    ( r2_hidden(sK0(X0),k1_relat_1(X0))
    | v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_23])).

cnf(c_475,plain,
    ( r2_hidden(sK0(sK3),k1_relat_1(sK3))
    | v2_funct_1(sK3)
    | ~ v1_relat_1(sK3) ),
    inference(unflattening,[status(thm)],[c_474])).

cnf(c_1001,plain,
    ( r2_hidden(sK0(sK3),k1_relat_1(sK3))
    | ~ v1_relat_1(sK3)
    | sK5 != sK4 ),
    inference(resolution,[status(thm)],[c_475,c_16])).

cnf(c_2241,plain,
    ( X0 != X1
    | sK1(X0) = sK1(X1) ),
    theory(equality)).

cnf(c_2253,plain,
    ( sK1(sK3) = sK1(sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2241])).

cnf(c_2231,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2258,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_2231])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | X0 = X2
    | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_450,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | X2 = X0
    | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_23])).

cnf(c_451,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK3))
    | ~ r2_hidden(X1,k1_relat_1(sK3))
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | X0 = X1
    | k1_funct_1(sK3,X0) != k1_funct_1(sK3,X1) ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_2227,plain,
    ( ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_451])).

cnf(c_2232,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_3085,plain,
    ( sK1(sK3) != X0
    | sK1(sK3) = sK0(sK3)
    | sK0(sK3) != X0 ),
    inference(instantiation,[status(thm)],[c_2232])).

cnf(c_3231,plain,
    ( sK1(sK3) != sK1(sK3)
    | sK1(sK3) = sK0(sK3)
    | sK0(sK3) != sK1(sK3) ),
    inference(instantiation,[status(thm)],[c_3085])).

cnf(c_3628,plain,
    ( v2_funct_1(sK3) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3626])).

cnf(c_2226,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK3))
    | ~ r2_hidden(X1,k1_relat_1(sK3))
    | X0 = X1
    | k1_funct_1(sK3,X0) != k1_funct_1(sK3,X1)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_451])).

cnf(c_3849,plain,
    ( ~ r2_hidden(sK1(X0),k1_relat_1(sK3))
    | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
    | ~ sP0_iProver_split
    | k1_funct_1(sK3,sK0(sK3)) != k1_funct_1(sK3,sK1(X0))
    | sK0(sK3) = sK1(X0) ),
    inference(instantiation,[status(thm)],[c_2226])).

cnf(c_3851,plain,
    ( ~ r2_hidden(sK1(sK3),k1_relat_1(sK3))
    | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
    | ~ sP0_iProver_split
    | k1_funct_1(sK3,sK0(sK3)) != k1_funct_1(sK3,sK1(sK3))
    | sK0(sK3) = sK1(sK3) ),
    inference(instantiation,[status(thm)],[c_3849])).

cnf(c_4461,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4220,c_21,c_728,c_819,c_910,c_1001,c_2253,c_2258,c_2227,c_3001,c_3231,c_3628,c_3851])).

cnf(c_4474,plain,
    ( r2_hidden(sK5,k1_xboole_0) = iProver_top
    | v2_funct_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4461,c_2806])).

cnf(c_4615,plain,
    ( r2_hidden(sK5,k1_xboole_0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4474,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,c_3249,c_3252])).

cnf(c_1,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_2814,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_2812,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_3192,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2814,c_2812])).

cnf(c_12,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X1,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_2810,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3964,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3192,c_2810])).

cnf(c_4620,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4615,c_3964])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.11  % Command    : iproveropt_run.sh %d %s
% 0.11/0.32  % Computer   : n014.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 17:42:52 EST 2020
% 0.11/0.33  % CPUTime    : 
% 0.11/0.33  % Running in FOF mode
% 1.86/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.86/0.97  
% 1.86/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.86/0.97  
% 1.86/0.97  ------  iProver source info
% 1.86/0.97  
% 1.86/0.97  git: date: 2020-06-30 10:37:57 +0100
% 1.86/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.86/0.97  git: non_committed_changes: false
% 1.86/0.97  git: last_make_outside_of_git: false
% 1.86/0.97  
% 1.86/0.97  ------ 
% 1.86/0.97  
% 1.86/0.97  ------ Input Options
% 1.86/0.97  
% 1.86/0.97  --out_options                           all
% 1.86/0.97  --tptp_safe_out                         true
% 1.86/0.97  --problem_path                          ""
% 1.86/0.97  --include_path                          ""
% 1.86/0.97  --clausifier                            res/vclausify_rel
% 1.86/0.97  --clausifier_options                    --mode clausify
% 1.86/0.97  --stdin                                 false
% 1.86/0.97  --stats_out                             all
% 1.86/0.97  
% 1.86/0.97  ------ General Options
% 1.86/0.97  
% 1.86/0.97  --fof                                   false
% 1.86/0.97  --time_out_real                         305.
% 1.86/0.97  --time_out_virtual                      -1.
% 1.86/0.97  --symbol_type_check                     false
% 1.86/0.97  --clausify_out                          false
% 1.86/0.97  --sig_cnt_out                           false
% 1.86/0.97  --trig_cnt_out                          false
% 1.86/0.97  --trig_cnt_out_tolerance                1.
% 1.86/0.97  --trig_cnt_out_sk_spl                   false
% 1.86/0.97  --abstr_cl_out                          false
% 1.86/0.97  
% 1.86/0.97  ------ Global Options
% 1.86/0.97  
% 1.86/0.97  --schedule                              default
% 1.86/0.97  --add_important_lit                     false
% 1.86/0.97  --prop_solver_per_cl                    1000
% 1.86/0.97  --min_unsat_core                        false
% 1.86/0.97  --soft_assumptions                      false
% 1.86/0.97  --soft_lemma_size                       3
% 1.86/0.97  --prop_impl_unit_size                   0
% 1.86/0.97  --prop_impl_unit                        []
% 1.86/0.97  --share_sel_clauses                     true
% 1.86/0.97  --reset_solvers                         false
% 1.86/0.97  --bc_imp_inh                            [conj_cone]
% 1.86/0.97  --conj_cone_tolerance                   3.
% 1.86/0.97  --extra_neg_conj                        none
% 1.86/0.97  --large_theory_mode                     true
% 1.86/0.97  --prolific_symb_bound                   200
% 1.86/0.97  --lt_threshold                          2000
% 1.86/0.97  --clause_weak_htbl                      true
% 1.86/0.97  --gc_record_bc_elim                     false
% 1.86/0.97  
% 1.86/0.97  ------ Preprocessing Options
% 1.86/0.97  
% 1.86/0.97  --preprocessing_flag                    true
% 1.86/0.97  --time_out_prep_mult                    0.1
% 1.86/0.97  --splitting_mode                        input
% 1.86/0.97  --splitting_grd                         true
% 1.86/0.97  --splitting_cvd                         false
% 1.86/0.97  --splitting_cvd_svl                     false
% 1.86/0.97  --splitting_nvd                         32
% 1.86/0.97  --sub_typing                            true
% 1.86/0.97  --prep_gs_sim                           true
% 1.86/0.97  --prep_unflatten                        true
% 1.86/0.97  --prep_res_sim                          true
% 1.86/0.97  --prep_upred                            true
% 1.86/0.97  --prep_sem_filter                       exhaustive
% 1.86/0.97  --prep_sem_filter_out                   false
% 1.86/0.97  --pred_elim                             true
% 1.86/0.97  --res_sim_input                         true
% 1.86/0.97  --eq_ax_congr_red                       true
% 1.86/0.97  --pure_diseq_elim                       true
% 1.86/0.97  --brand_transform                       false
% 1.86/0.97  --non_eq_to_eq                          false
% 1.86/0.97  --prep_def_merge                        true
% 1.86/0.97  --prep_def_merge_prop_impl              false
% 1.86/0.97  --prep_def_merge_mbd                    true
% 1.86/0.97  --prep_def_merge_tr_red                 false
% 1.86/0.97  --prep_def_merge_tr_cl                  false
% 1.86/0.97  --smt_preprocessing                     true
% 1.86/0.97  --smt_ac_axioms                         fast
% 1.86/0.97  --preprocessed_out                      false
% 1.86/0.97  --preprocessed_stats                    false
% 1.86/0.97  
% 1.86/0.97  ------ Abstraction refinement Options
% 1.86/0.97  
% 1.86/0.97  --abstr_ref                             []
% 1.86/0.97  --abstr_ref_prep                        false
% 1.86/0.97  --abstr_ref_until_sat                   false
% 1.86/0.97  --abstr_ref_sig_restrict                funpre
% 1.86/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.86/0.97  --abstr_ref_under                       []
% 1.86/0.97  
% 1.86/0.97  ------ SAT Options
% 1.86/0.97  
% 1.86/0.97  --sat_mode                              false
% 1.86/0.97  --sat_fm_restart_options                ""
% 1.86/0.97  --sat_gr_def                            false
% 1.86/0.97  --sat_epr_types                         true
% 1.86/0.97  --sat_non_cyclic_types                  false
% 1.86/0.97  --sat_finite_models                     false
% 1.86/0.97  --sat_fm_lemmas                         false
% 1.86/0.97  --sat_fm_prep                           false
% 1.86/0.97  --sat_fm_uc_incr                        true
% 1.86/0.97  --sat_out_model                         small
% 1.86/0.97  --sat_out_clauses                       false
% 1.86/0.97  
% 1.86/0.97  ------ QBF Options
% 1.86/0.97  
% 1.86/0.97  --qbf_mode                              false
% 1.86/0.97  --qbf_elim_univ                         false
% 1.86/0.97  --qbf_dom_inst                          none
% 1.86/0.97  --qbf_dom_pre_inst                      false
% 1.86/0.97  --qbf_sk_in                             false
% 1.86/0.97  --qbf_pred_elim                         true
% 1.86/0.97  --qbf_split                             512
% 1.86/0.97  
% 1.86/0.97  ------ BMC1 Options
% 1.86/0.97  
% 1.86/0.97  --bmc1_incremental                      false
% 1.86/0.97  --bmc1_axioms                           reachable_all
% 1.86/0.97  --bmc1_min_bound                        0
% 1.86/0.97  --bmc1_max_bound                        -1
% 1.86/0.97  --bmc1_max_bound_default                -1
% 1.86/0.97  --bmc1_symbol_reachability              true
% 1.86/0.97  --bmc1_property_lemmas                  false
% 1.86/0.97  --bmc1_k_induction                      false
% 1.86/0.97  --bmc1_non_equiv_states                 false
% 1.86/0.97  --bmc1_deadlock                         false
% 1.86/0.97  --bmc1_ucm                              false
% 1.86/0.97  --bmc1_add_unsat_core                   none
% 1.86/0.97  --bmc1_unsat_core_children              false
% 1.86/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.86/0.97  --bmc1_out_stat                         full
% 1.86/0.97  --bmc1_ground_init                      false
% 1.86/0.97  --bmc1_pre_inst_next_state              false
% 1.86/0.97  --bmc1_pre_inst_state                   false
% 1.86/0.97  --bmc1_pre_inst_reach_state             false
% 1.86/0.97  --bmc1_out_unsat_core                   false
% 1.86/0.97  --bmc1_aig_witness_out                  false
% 1.86/0.97  --bmc1_verbose                          false
% 1.86/0.97  --bmc1_dump_clauses_tptp                false
% 1.86/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.86/0.97  --bmc1_dump_file                        -
% 1.86/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.86/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.86/0.97  --bmc1_ucm_extend_mode                  1
% 1.86/0.97  --bmc1_ucm_init_mode                    2
% 1.86/0.97  --bmc1_ucm_cone_mode                    none
% 1.86/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.86/0.97  --bmc1_ucm_relax_model                  4
% 1.86/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.86/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.86/0.97  --bmc1_ucm_layered_model                none
% 1.86/0.97  --bmc1_ucm_max_lemma_size               10
% 1.86/0.97  
% 1.86/0.97  ------ AIG Options
% 1.86/0.97  
% 1.86/0.97  --aig_mode                              false
% 1.86/0.97  
% 1.86/0.97  ------ Instantiation Options
% 1.86/0.97  
% 1.86/0.97  --instantiation_flag                    true
% 1.86/0.97  --inst_sos_flag                         false
% 1.86/0.97  --inst_sos_phase                        true
% 1.86/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.86/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.86/0.97  --inst_lit_sel_side                     num_symb
% 1.86/0.97  --inst_solver_per_active                1400
% 1.86/0.97  --inst_solver_calls_frac                1.
% 1.86/0.97  --inst_passive_queue_type               priority_queues
% 1.86/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.86/0.97  --inst_passive_queues_freq              [25;2]
% 1.86/0.97  --inst_dismatching                      true
% 1.86/0.97  --inst_eager_unprocessed_to_passive     true
% 1.86/0.97  --inst_prop_sim_given                   true
% 1.86/0.97  --inst_prop_sim_new                     false
% 1.86/0.97  --inst_subs_new                         false
% 1.86/0.97  --inst_eq_res_simp                      false
% 1.86/0.97  --inst_subs_given                       false
% 1.86/0.97  --inst_orphan_elimination               true
% 1.86/0.97  --inst_learning_loop_flag               true
% 1.86/0.97  --inst_learning_start                   3000
% 1.86/0.97  --inst_learning_factor                  2
% 1.86/0.97  --inst_start_prop_sim_after_learn       3
% 1.86/0.97  --inst_sel_renew                        solver
% 1.86/0.97  --inst_lit_activity_flag                true
% 1.86/0.97  --inst_restr_to_given                   false
% 1.86/0.97  --inst_activity_threshold               500
% 1.86/0.97  --inst_out_proof                        true
% 1.86/0.97  
% 1.86/0.97  ------ Resolution Options
% 1.86/0.97  
% 1.86/0.97  --resolution_flag                       true
% 1.86/0.97  --res_lit_sel                           adaptive
% 1.86/0.97  --res_lit_sel_side                      none
% 1.86/0.97  --res_ordering                          kbo
% 1.86/0.97  --res_to_prop_solver                    active
% 1.86/0.97  --res_prop_simpl_new                    false
% 1.86/0.97  --res_prop_simpl_given                  true
% 1.86/0.97  --res_passive_queue_type                priority_queues
% 1.86/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.86/0.97  --res_passive_queues_freq               [15;5]
% 1.86/0.97  --res_forward_subs                      full
% 1.86/0.97  --res_backward_subs                     full
% 1.86/0.97  --res_forward_subs_resolution           true
% 1.86/0.97  --res_backward_subs_resolution          true
% 1.86/0.97  --res_orphan_elimination                true
% 1.86/0.97  --res_time_limit                        2.
% 1.86/0.97  --res_out_proof                         true
% 1.86/0.97  
% 1.86/0.97  ------ Superposition Options
% 1.86/0.97  
% 1.86/0.97  --superposition_flag                    true
% 1.86/0.97  --sup_passive_queue_type                priority_queues
% 1.86/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.86/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.86/0.97  --demod_completeness_check              fast
% 1.86/0.97  --demod_use_ground                      true
% 1.86/0.97  --sup_to_prop_solver                    passive
% 1.86/0.97  --sup_prop_simpl_new                    true
% 1.86/0.97  --sup_prop_simpl_given                  true
% 1.86/0.97  --sup_fun_splitting                     false
% 1.86/0.97  --sup_smt_interval                      50000
% 1.86/0.97  
% 1.86/0.97  ------ Superposition Simplification Setup
% 1.86/0.97  
% 1.86/0.97  --sup_indices_passive                   []
% 1.86/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.86/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_full_bw                           [BwDemod]
% 1.86/0.97  --sup_immed_triv                        [TrivRules]
% 1.86/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.86/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_immed_bw_main                     []
% 1.86/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.86/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/0.97  
% 1.86/0.97  ------ Combination Options
% 1.86/0.97  
% 1.86/0.97  --comb_res_mult                         3
% 1.86/0.97  --comb_sup_mult                         2
% 1.86/0.97  --comb_inst_mult                        10
% 1.86/0.97  
% 1.86/0.97  ------ Debug Options
% 1.86/0.97  
% 1.86/0.97  --dbg_backtrace                         false
% 1.86/0.97  --dbg_dump_prop_clauses                 false
% 1.86/0.97  --dbg_dump_prop_clauses_file            -
% 1.86/0.97  --dbg_out_stat                          false
% 1.86/0.97  ------ Parsing...
% 1.86/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.86/0.97  
% 1.86/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.86/0.97  
% 1.86/0.97  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.86/0.97  
% 1.86/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.86/0.97  ------ Proving...
% 1.86/0.97  ------ Problem Properties 
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  clauses                                 22
% 1.86/0.97  conjectures                             6
% 1.86/0.97  EPR                                     7
% 1.86/0.97  Horn                                    17
% 1.86/0.97  unary                                   2
% 1.86/0.97  binary                                  9
% 1.86/0.97  lits                                    57
% 1.86/0.97  lits eq                                 10
% 1.86/0.97  fd_pure                                 0
% 1.86/0.97  fd_pseudo                               0
% 1.86/0.97  fd_cond                                 0
% 1.86/0.97  fd_pseudo_cond                          2
% 1.86/0.97  AC symbols                              0
% 1.86/0.97  
% 1.86/0.97  ------ Schedule dynamic 5 is on 
% 1.86/0.97  
% 1.86/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  ------ 
% 1.86/0.97  Current options:
% 1.86/0.97  ------ 
% 1.86/0.97  
% 1.86/0.97  ------ Input Options
% 1.86/0.97  
% 1.86/0.97  --out_options                           all
% 1.86/0.97  --tptp_safe_out                         true
% 1.86/0.97  --problem_path                          ""
% 1.86/0.97  --include_path                          ""
% 1.86/0.97  --clausifier                            res/vclausify_rel
% 1.86/0.97  --clausifier_options                    --mode clausify
% 1.86/0.97  --stdin                                 false
% 1.86/0.97  --stats_out                             all
% 1.86/0.97  
% 1.86/0.97  ------ General Options
% 1.86/0.97  
% 1.86/0.97  --fof                                   false
% 1.86/0.97  --time_out_real                         305.
% 1.86/0.97  --time_out_virtual                      -1.
% 1.86/0.97  --symbol_type_check                     false
% 1.86/0.97  --clausify_out                          false
% 1.86/0.97  --sig_cnt_out                           false
% 1.86/0.97  --trig_cnt_out                          false
% 1.86/0.97  --trig_cnt_out_tolerance                1.
% 1.86/0.97  --trig_cnt_out_sk_spl                   false
% 1.86/0.97  --abstr_cl_out                          false
% 1.86/0.97  
% 1.86/0.97  ------ Global Options
% 1.86/0.97  
% 1.86/0.97  --schedule                              default
% 1.86/0.97  --add_important_lit                     false
% 1.86/0.97  --prop_solver_per_cl                    1000
% 1.86/0.97  --min_unsat_core                        false
% 1.86/0.97  --soft_assumptions                      false
% 1.86/0.97  --soft_lemma_size                       3
% 1.86/0.97  --prop_impl_unit_size                   0
% 1.86/0.97  --prop_impl_unit                        []
% 1.86/0.97  --share_sel_clauses                     true
% 1.86/0.97  --reset_solvers                         false
% 1.86/0.97  --bc_imp_inh                            [conj_cone]
% 1.86/0.97  --conj_cone_tolerance                   3.
% 1.86/0.97  --extra_neg_conj                        none
% 1.86/0.97  --large_theory_mode                     true
% 1.86/0.97  --prolific_symb_bound                   200
% 1.86/0.97  --lt_threshold                          2000
% 1.86/0.97  --clause_weak_htbl                      true
% 1.86/0.97  --gc_record_bc_elim                     false
% 1.86/0.97  
% 1.86/0.97  ------ Preprocessing Options
% 1.86/0.97  
% 1.86/0.97  --preprocessing_flag                    true
% 1.86/0.97  --time_out_prep_mult                    0.1
% 1.86/0.97  --splitting_mode                        input
% 1.86/0.97  --splitting_grd                         true
% 1.86/0.97  --splitting_cvd                         false
% 1.86/0.97  --splitting_cvd_svl                     false
% 1.86/0.97  --splitting_nvd                         32
% 1.86/0.97  --sub_typing                            true
% 1.86/0.97  --prep_gs_sim                           true
% 1.86/0.97  --prep_unflatten                        true
% 1.86/0.97  --prep_res_sim                          true
% 1.86/0.97  --prep_upred                            true
% 1.86/0.97  --prep_sem_filter                       exhaustive
% 1.86/0.97  --prep_sem_filter_out                   false
% 1.86/0.97  --pred_elim                             true
% 1.86/0.97  --res_sim_input                         true
% 1.86/0.97  --eq_ax_congr_red                       true
% 1.86/0.97  --pure_diseq_elim                       true
% 1.86/0.97  --brand_transform                       false
% 1.86/0.97  --non_eq_to_eq                          false
% 1.86/0.97  --prep_def_merge                        true
% 1.86/0.97  --prep_def_merge_prop_impl              false
% 1.86/0.97  --prep_def_merge_mbd                    true
% 1.86/0.97  --prep_def_merge_tr_red                 false
% 1.86/0.97  --prep_def_merge_tr_cl                  false
% 1.86/0.97  --smt_preprocessing                     true
% 1.86/0.97  --smt_ac_axioms                         fast
% 1.86/0.97  --preprocessed_out                      false
% 1.86/0.97  --preprocessed_stats                    false
% 1.86/0.97  
% 1.86/0.97  ------ Abstraction refinement Options
% 1.86/0.97  
% 1.86/0.97  --abstr_ref                             []
% 1.86/0.97  --abstr_ref_prep                        false
% 1.86/0.97  --abstr_ref_until_sat                   false
% 1.86/0.97  --abstr_ref_sig_restrict                funpre
% 1.86/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.86/0.97  --abstr_ref_under                       []
% 1.86/0.97  
% 1.86/0.97  ------ SAT Options
% 1.86/0.97  
% 1.86/0.97  --sat_mode                              false
% 1.86/0.97  --sat_fm_restart_options                ""
% 1.86/0.97  --sat_gr_def                            false
% 1.86/0.97  --sat_epr_types                         true
% 1.86/0.97  --sat_non_cyclic_types                  false
% 1.86/0.97  --sat_finite_models                     false
% 1.86/0.97  --sat_fm_lemmas                         false
% 1.86/0.97  --sat_fm_prep                           false
% 1.86/0.97  --sat_fm_uc_incr                        true
% 1.86/0.97  --sat_out_model                         small
% 1.86/0.97  --sat_out_clauses                       false
% 1.86/0.97  
% 1.86/0.97  ------ QBF Options
% 1.86/0.97  
% 1.86/0.97  --qbf_mode                              false
% 1.86/0.97  --qbf_elim_univ                         false
% 1.86/0.97  --qbf_dom_inst                          none
% 1.86/0.97  --qbf_dom_pre_inst                      false
% 1.86/0.97  --qbf_sk_in                             false
% 1.86/0.97  --qbf_pred_elim                         true
% 1.86/0.97  --qbf_split                             512
% 1.86/0.97  
% 1.86/0.97  ------ BMC1 Options
% 1.86/0.97  
% 1.86/0.97  --bmc1_incremental                      false
% 1.86/0.97  --bmc1_axioms                           reachable_all
% 1.86/0.97  --bmc1_min_bound                        0
% 1.86/0.97  --bmc1_max_bound                        -1
% 1.86/0.97  --bmc1_max_bound_default                -1
% 1.86/0.97  --bmc1_symbol_reachability              true
% 1.86/0.97  --bmc1_property_lemmas                  false
% 1.86/0.97  --bmc1_k_induction                      false
% 1.86/0.97  --bmc1_non_equiv_states                 false
% 1.86/0.97  --bmc1_deadlock                         false
% 1.86/0.97  --bmc1_ucm                              false
% 1.86/0.97  --bmc1_add_unsat_core                   none
% 1.86/0.97  --bmc1_unsat_core_children              false
% 1.86/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.86/0.97  --bmc1_out_stat                         full
% 1.86/0.97  --bmc1_ground_init                      false
% 1.86/0.97  --bmc1_pre_inst_next_state              false
% 1.86/0.97  --bmc1_pre_inst_state                   false
% 1.86/0.97  --bmc1_pre_inst_reach_state             false
% 1.86/0.97  --bmc1_out_unsat_core                   false
% 1.86/0.97  --bmc1_aig_witness_out                  false
% 1.86/0.97  --bmc1_verbose                          false
% 1.86/0.97  --bmc1_dump_clauses_tptp                false
% 1.86/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.86/0.97  --bmc1_dump_file                        -
% 1.86/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.86/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.86/0.97  --bmc1_ucm_extend_mode                  1
% 1.86/0.97  --bmc1_ucm_init_mode                    2
% 1.86/0.97  --bmc1_ucm_cone_mode                    none
% 1.86/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.86/0.97  --bmc1_ucm_relax_model                  4
% 1.86/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.86/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.86/0.97  --bmc1_ucm_layered_model                none
% 1.86/0.97  --bmc1_ucm_max_lemma_size               10
% 1.86/0.97  
% 1.86/0.97  ------ AIG Options
% 1.86/0.97  
% 1.86/0.97  --aig_mode                              false
% 1.86/0.97  
% 1.86/0.97  ------ Instantiation Options
% 1.86/0.97  
% 1.86/0.97  --instantiation_flag                    true
% 1.86/0.97  --inst_sos_flag                         false
% 1.86/0.97  --inst_sos_phase                        true
% 1.86/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.86/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.86/0.97  --inst_lit_sel_side                     none
% 1.86/0.97  --inst_solver_per_active                1400
% 1.86/0.97  --inst_solver_calls_frac                1.
% 1.86/0.97  --inst_passive_queue_type               priority_queues
% 1.86/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.86/0.97  --inst_passive_queues_freq              [25;2]
% 1.86/0.97  --inst_dismatching                      true
% 1.86/0.97  --inst_eager_unprocessed_to_passive     true
% 1.86/0.97  --inst_prop_sim_given                   true
% 1.86/0.97  --inst_prop_sim_new                     false
% 1.86/0.97  --inst_subs_new                         false
% 1.86/0.97  --inst_eq_res_simp                      false
% 1.86/0.97  --inst_subs_given                       false
% 1.86/0.97  --inst_orphan_elimination               true
% 1.86/0.97  --inst_learning_loop_flag               true
% 1.86/0.97  --inst_learning_start                   3000
% 1.86/0.97  --inst_learning_factor                  2
% 1.86/0.97  --inst_start_prop_sim_after_learn       3
% 1.86/0.97  --inst_sel_renew                        solver
% 1.86/0.97  --inst_lit_activity_flag                true
% 1.86/0.97  --inst_restr_to_given                   false
% 1.86/0.97  --inst_activity_threshold               500
% 1.86/0.97  --inst_out_proof                        true
% 1.86/0.97  
% 1.86/0.97  ------ Resolution Options
% 1.86/0.97  
% 1.86/0.97  --resolution_flag                       false
% 1.86/0.97  --res_lit_sel                           adaptive
% 1.86/0.97  --res_lit_sel_side                      none
% 1.86/0.97  --res_ordering                          kbo
% 1.86/0.97  --res_to_prop_solver                    active
% 1.86/0.97  --res_prop_simpl_new                    false
% 1.86/0.97  --res_prop_simpl_given                  true
% 1.86/0.97  --res_passive_queue_type                priority_queues
% 1.86/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.86/0.97  --res_passive_queues_freq               [15;5]
% 1.86/0.97  --res_forward_subs                      full
% 1.86/0.97  --res_backward_subs                     full
% 1.86/0.97  --res_forward_subs_resolution           true
% 1.86/0.97  --res_backward_subs_resolution          true
% 1.86/0.97  --res_orphan_elimination                true
% 1.86/0.97  --res_time_limit                        2.
% 1.86/0.97  --res_out_proof                         true
% 1.86/0.97  
% 1.86/0.97  ------ Superposition Options
% 1.86/0.97  
% 1.86/0.97  --superposition_flag                    true
% 1.86/0.97  --sup_passive_queue_type                priority_queues
% 1.86/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.86/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.86/0.97  --demod_completeness_check              fast
% 1.86/0.97  --demod_use_ground                      true
% 1.86/0.97  --sup_to_prop_solver                    passive
% 1.86/0.97  --sup_prop_simpl_new                    true
% 1.86/0.97  --sup_prop_simpl_given                  true
% 1.86/0.97  --sup_fun_splitting                     false
% 1.86/0.97  --sup_smt_interval                      50000
% 1.86/0.97  
% 1.86/0.97  ------ Superposition Simplification Setup
% 1.86/0.97  
% 1.86/0.97  --sup_indices_passive                   []
% 1.86/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.86/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_full_bw                           [BwDemod]
% 1.86/0.97  --sup_immed_triv                        [TrivRules]
% 1.86/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.86/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_immed_bw_main                     []
% 1.86/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.86/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/0.97  
% 1.86/0.97  ------ Combination Options
% 1.86/0.97  
% 1.86/0.97  --comb_res_mult                         3
% 1.86/0.97  --comb_sup_mult                         2
% 1.86/0.97  --comb_inst_mult                        10
% 1.86/0.97  
% 1.86/0.97  ------ Debug Options
% 1.86/0.97  
% 1.86/0.97  --dbg_backtrace                         false
% 1.86/0.97  --dbg_dump_prop_clauses                 false
% 1.86/0.97  --dbg_dump_prop_clauses_file            -
% 1.86/0.97  --dbg_out_stat                          false
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  ------ Proving...
% 1.86/0.97  
% 1.86/0.97  
% 1.86/0.97  % SZS status Theorem for theBenchmark.p
% 1.86/0.97  
% 1.86/0.97   Resolution empty clause
% 1.86/0.97  
% 1.86/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 1.86/0.97  
% 1.86/0.97  fof(f10,axiom,(
% 1.86/0.97    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ((r2_hidden(X2,X0) & v2_funct_1(X3)) => (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1)))),
% 1.86/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.97  
% 1.86/0.97  fof(f23,plain,(
% 1.86/0.97    ! [X0,X1,X2,X3] : (((k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1) | (~r2_hidden(X2,X0) | ~v2_funct_1(X3))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.86/0.97    inference(ennf_transformation,[],[f10])).
% 1.86/0.97  
% 1.86/0.97  fof(f24,plain,(
% 1.86/0.97    ! [X0,X1,X2,X3] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.86/0.97    inference(flattening,[],[f23])).
% 1.86/0.97  
% 1.86/0.97  fof(f54,plain,(
% 1.86/0.97    ( ! [X2,X0,X3,X1] : (k1_funct_1(k2_funct_1(X3),k1_funct_1(X3,X2)) = X2 | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~v2_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.86/0.97    inference(cnf_transformation,[],[f24])).
% 1.86/0.97  
% 1.86/0.97  fof(f11,conjecture,(
% 1.86/0.97    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 1.86/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.97  
% 1.86/0.97  fof(f12,negated_conjecture,(
% 1.86/0.97    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (v2_funct_1(X1) <=> ! [X2,X3] : ((k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => X2 = X3)))),
% 1.86/0.97    inference(negated_conjecture,[],[f11])).
% 1.86/0.97  
% 1.86/0.97  fof(f25,plain,(
% 1.86/0.97    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | (k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 1.86/0.97    inference(ennf_transformation,[],[f12])).
% 1.86/0.97  
% 1.86/0.97  fof(f26,plain,(
% 1.86/0.97    ? [X0,X1] : ((v2_funct_1(X1) <~> ! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.86/0.97    inference(flattening,[],[f25])).
% 1.86/0.97  
% 1.86/0.97  fof(f33,plain,(
% 1.86/0.97    ? [X0,X1] : (((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.86/0.97    inference(nnf_transformation,[],[f26])).
% 1.86/0.97  
% 1.86/0.97  fof(f34,plain,(
% 1.86/0.97    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X2,X3] : (X2 = X3 | k1_funct_1(X1,X2) != k1_funct_1(X1,X3) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.86/0.97    inference(flattening,[],[f33])).
% 1.86/0.97  
% 1.86/0.97  fof(f35,plain,(
% 1.86/0.97    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.86/0.97    inference(rectify,[],[f34])).
% 1.86/0.97  
% 1.86/0.97  fof(f37,plain,(
% 1.86/0.97    ( ! [X0,X1] : (? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => (sK4 != sK5 & k1_funct_1(X1,sK4) = k1_funct_1(X1,sK5) & r2_hidden(sK5,X0) & r2_hidden(sK4,X0))) )),
% 1.86/0.97    introduced(choice_axiom,[])).
% 1.86/0.97  
% 1.86/0.97  fof(f36,plain,(
% 1.86/0.97    ? [X0,X1] : ((? [X2,X3] : (X2 != X3 & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | ~v2_funct_1(X1)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(X1,X4) != k1_funct_1(X1,X5) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) | v2_funct_1(X1)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((? [X3,X2] : (X2 != X3 & k1_funct_1(sK3,X2) = k1_funct_1(sK3,X3) & r2_hidden(X3,sK2) & r2_hidden(X2,sK2)) | ~v2_funct_1(sK3)) & (! [X5,X4] : (X4 = X5 | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | ~r2_hidden(X4,sK2)) | v2_funct_1(sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) & v1_funct_2(sK3,sK2,sK2) & v1_funct_1(sK3))),
% 1.86/0.97    introduced(choice_axiom,[])).
% 1.86/0.97  
% 1.86/0.97  fof(f38,plain,(
% 1.86/0.97    ((sK4 != sK5 & k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) & r2_hidden(sK5,sK2) & r2_hidden(sK4,sK2)) | ~v2_funct_1(sK3)) & (! [X4,X5] : (X4 = X5 | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | ~r2_hidden(X4,sK2)) | v2_funct_1(sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) & v1_funct_2(sK3,sK2,sK2) & v1_funct_1(sK3)),
% 1.86/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f35,f37,f36])).
% 1.86/0.97  
% 1.86/0.97  fof(f56,plain,(
% 1.86/0.97    v1_funct_2(sK3,sK2,sK2)),
% 1.86/0.97    inference(cnf_transformation,[],[f38])).
% 1.86/0.97  
% 1.86/0.97  fof(f55,plain,(
% 1.86/0.97    v1_funct_1(sK3)),
% 1.86/0.97    inference(cnf_transformation,[],[f38])).
% 1.86/0.97  
% 1.86/0.97  fof(f57,plain,(
% 1.86/0.97    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))),
% 1.86/0.97    inference(cnf_transformation,[],[f38])).
% 1.86/0.97  
% 1.86/0.97  fof(f6,axiom,(
% 1.86/0.97    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) <=> ! [X1,X2] : ((k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => X1 = X2)))),
% 1.86/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.97  
% 1.86/0.97  fof(f18,plain,(
% 1.86/0.97    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | (k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.86/0.97    inference(ennf_transformation,[],[f6])).
% 1.86/0.97  
% 1.86/0.97  fof(f19,plain,(
% 1.86/0.97    ! [X0] : ((v2_funct_1(X0) <=> ! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.86/0.97    inference(flattening,[],[f18])).
% 1.86/0.97  
% 1.86/0.97  fof(f29,plain,(
% 1.86/0.97    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X1,X2] : (X1 = X2 | k1_funct_1(X0,X1) != k1_funct_1(X0,X2) | ~r2_hidden(X2,k1_relat_1(X0)) | ~r2_hidden(X1,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.86/0.97    inference(nnf_transformation,[],[f19])).
% 1.86/0.97  
% 1.86/0.97  fof(f30,plain,(
% 1.86/0.97    ! [X0] : (((v2_funct_1(X0) | ? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.86/0.97    inference(rectify,[],[f29])).
% 1.86/0.97  
% 1.86/0.97  fof(f31,plain,(
% 1.86/0.97    ! [X0] : (? [X1,X2] : (X1 != X2 & k1_funct_1(X0,X1) = k1_funct_1(X0,X2) & r2_hidden(X2,k1_relat_1(X0)) & r2_hidden(X1,k1_relat_1(X0))) => (sK0(X0) != sK1(X0) & k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0)) & r2_hidden(sK0(X0),k1_relat_1(X0))))),
% 1.86/0.97    introduced(choice_axiom,[])).
% 1.86/0.97  
% 1.86/0.97  fof(f32,plain,(
% 1.86/0.97    ! [X0] : (((v2_funct_1(X0) | (sK0(X0) != sK1(X0) & k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0)) & r2_hidden(sK1(X0),k1_relat_1(X0)) & r2_hidden(sK0(X0),k1_relat_1(X0)))) & (! [X3,X4] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0))) | ~v2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.86/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f30,f31])).
% 1.86/0.97  
% 1.86/0.97  fof(f47,plain,(
% 1.86/0.97    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK0(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.86/0.97    inference(cnf_transformation,[],[f32])).
% 1.86/0.97  
% 1.86/0.97  fof(f48,plain,(
% 1.86/0.97    ( ! [X0] : (v2_funct_1(X0) | r2_hidden(sK1(X0),k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.86/0.97    inference(cnf_transformation,[],[f32])).
% 1.86/0.97  
% 1.86/0.97  fof(f49,plain,(
% 1.86/0.97    ( ! [X0] : (v2_funct_1(X0) | k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.86/0.97    inference(cnf_transformation,[],[f32])).
% 1.86/0.97  
% 1.86/0.97  fof(f50,plain,(
% 1.86/0.97    ( ! [X0] : (v2_funct_1(X0) | sK0(X0) != sK1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.86/0.97    inference(cnf_transformation,[],[f32])).
% 1.86/0.97  
% 1.86/0.97  fof(f8,axiom,(
% 1.86/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.86/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.97  
% 1.86/0.97  fof(f21,plain,(
% 1.86/0.97    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.86/0.97    inference(ennf_transformation,[],[f8])).
% 1.86/0.97  
% 1.86/0.97  fof(f52,plain,(
% 1.86/0.97    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.86/0.97    inference(cnf_transformation,[],[f21])).
% 1.86/0.97  
% 1.86/0.97  fof(f9,axiom,(
% 1.86/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.86/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.97  
% 1.86/0.97  fof(f13,plain,(
% 1.86/0.97    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.86/0.97    inference(pure_predicate_removal,[],[f9])).
% 1.86/0.98  
% 1.86/0.98  fof(f22,plain,(
% 1.86/0.98    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.86/0.98    inference(ennf_transformation,[],[f13])).
% 1.86/0.98  
% 1.86/0.98  fof(f53,plain,(
% 1.86/0.98    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.86/0.98    inference(cnf_transformation,[],[f22])).
% 1.86/0.98  
% 1.86/0.98  fof(f5,axiom,(
% 1.86/0.98    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.86/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.98  
% 1.86/0.98  fof(f17,plain,(
% 1.86/0.98    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.86/0.98    inference(ennf_transformation,[],[f5])).
% 1.86/0.98  
% 1.86/0.98  fof(f28,plain,(
% 1.86/0.98    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.86/0.98    inference(nnf_transformation,[],[f17])).
% 1.86/0.98  
% 1.86/0.98  fof(f44,plain,(
% 1.86/0.98    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.86/0.98    inference(cnf_transformation,[],[f28])).
% 1.86/0.98  
% 1.86/0.98  fof(f58,plain,(
% 1.86/0.98    ( ! [X4,X5] : (X4 = X5 | k1_funct_1(sK3,X4) != k1_funct_1(sK3,X5) | ~r2_hidden(X5,sK2) | ~r2_hidden(X4,sK2) | v2_funct_1(sK3)) )),
% 1.86/0.98    inference(cnf_transformation,[],[f38])).
% 1.86/0.98  
% 1.86/0.98  fof(f1,axiom,(
% 1.86/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 1.86/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.98  
% 1.86/0.98  fof(f14,plain,(
% 1.86/0.98    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.86/0.98    inference(ennf_transformation,[],[f1])).
% 1.86/0.98  
% 1.86/0.98  fof(f39,plain,(
% 1.86/0.98    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.86/0.98    inference(cnf_transformation,[],[f14])).
% 1.86/0.98  
% 1.86/0.98  fof(f3,axiom,(
% 1.86/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.86/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.98  
% 1.86/0.98  fof(f27,plain,(
% 1.86/0.98    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 1.86/0.98    inference(nnf_transformation,[],[f3])).
% 1.86/0.98  
% 1.86/0.98  fof(f42,plain,(
% 1.86/0.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 1.86/0.98    inference(cnf_transformation,[],[f27])).
% 1.86/0.98  
% 1.86/0.98  fof(f59,plain,(
% 1.86/0.98    r2_hidden(sK4,sK2) | ~v2_funct_1(sK3)),
% 1.86/0.98    inference(cnf_transformation,[],[f38])).
% 1.86/0.98  
% 1.86/0.98  fof(f61,plain,(
% 1.86/0.98    k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) | ~v2_funct_1(sK3)),
% 1.86/0.98    inference(cnf_transformation,[],[f38])).
% 1.86/0.98  
% 1.86/0.98  fof(f60,plain,(
% 1.86/0.98    r2_hidden(sK5,sK2) | ~v2_funct_1(sK3)),
% 1.86/0.98    inference(cnf_transformation,[],[f38])).
% 1.86/0.98  
% 1.86/0.98  fof(f62,plain,(
% 1.86/0.98    sK4 != sK5 | ~v2_funct_1(sK3)),
% 1.86/0.98    inference(cnf_transformation,[],[f38])).
% 1.86/0.98  
% 1.86/0.98  fof(f46,plain,(
% 1.86/0.98    ( ! [X4,X0,X3] : (X3 = X4 | k1_funct_1(X0,X3) != k1_funct_1(X0,X4) | ~r2_hidden(X4,k1_relat_1(X0)) | ~r2_hidden(X3,k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.86/0.98    inference(cnf_transformation,[],[f32])).
% 1.86/0.98  
% 1.86/0.98  fof(f2,axiom,(
% 1.86/0.98    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.86/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.98  
% 1.86/0.98  fof(f40,plain,(
% 1.86/0.98    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.86/0.98    inference(cnf_transformation,[],[f2])).
% 1.86/0.98  
% 1.86/0.98  fof(f41,plain,(
% 1.86/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.86/0.98    inference(cnf_transformation,[],[f27])).
% 1.86/0.98  
% 1.86/0.98  fof(f7,axiom,(
% 1.86/0.98    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.86/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/0.98  
% 1.86/0.98  fof(f20,plain,(
% 1.86/0.98    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.86/0.98    inference(ennf_transformation,[],[f7])).
% 1.86/0.98  
% 1.86/0.98  fof(f51,plain,(
% 1.86/0.98    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.86/0.98    inference(cnf_transformation,[],[f20])).
% 1.86/0.98  
% 1.86/0.98  cnf(c_15,plain,
% 1.86/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 1.86/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.86/0.98      | ~ r2_hidden(X3,X1)
% 1.86/0.98      | ~ v1_funct_1(X0)
% 1.86/0.98      | ~ v2_funct_1(X0)
% 1.86/0.98      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 1.86/0.98      | k1_xboole_0 = X2 ),
% 1.86/0.98      inference(cnf_transformation,[],[f54]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_22,negated_conjecture,
% 1.86/0.98      ( v1_funct_2(sK3,sK2,sK2) ),
% 1.86/0.98      inference(cnf_transformation,[],[f56]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_325,plain,
% 1.86/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.86/0.98      | ~ r2_hidden(X3,X1)
% 1.86/0.98      | ~ v1_funct_1(X0)
% 1.86/0.98      | ~ v2_funct_1(X0)
% 1.86/0.98      | k1_funct_1(k2_funct_1(X0),k1_funct_1(X0,X3)) = X3
% 1.86/0.98      | sK2 != X2
% 1.86/0.98      | sK2 != X1
% 1.86/0.98      | sK3 != X0
% 1.86/0.98      | k1_xboole_0 = X2 ),
% 1.86/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_22]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_326,plain,
% 1.86/0.98      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
% 1.86/0.98      | ~ r2_hidden(X0,sK2)
% 1.86/0.98      | ~ v1_funct_1(sK3)
% 1.86/0.98      | ~ v2_funct_1(sK3)
% 1.86/0.98      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
% 1.86/0.98      | k1_xboole_0 = sK2 ),
% 1.86/0.98      inference(unflattening,[status(thm)],[c_325]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_23,negated_conjecture,
% 1.86/0.98      ( v1_funct_1(sK3) ),
% 1.86/0.98      inference(cnf_transformation,[],[f55]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_21,negated_conjecture,
% 1.86/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
% 1.86/0.98      inference(cnf_transformation,[],[f57]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_330,plain,
% 1.86/0.98      ( ~ r2_hidden(X0,sK2)
% 1.86/0.98      | ~ v2_funct_1(sK3)
% 1.86/0.98      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
% 1.86/0.98      | k1_xboole_0 = sK2 ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_326,c_23,c_21]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2229,plain,
% 1.86/0.98      ( ~ v2_funct_1(sK3) | sP1_iProver_split | k1_xboole_0 = sK2 ),
% 1.86/0.98      inference(splitting,
% 1.86/0.98                [splitting(split),new_symbols(definition,[])],
% 1.86/0.98                [c_330]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2800,plain,
% 1.86/0.98      ( k1_xboole_0 = sK2
% 1.86/0.98      | v2_funct_1(sK3) != iProver_top
% 1.86/0.98      | sP1_iProver_split = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_2229]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_24,plain,
% 1.86/0.98      ( v1_funct_1(sK3) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_26,plain,
% 1.86/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_10,plain,
% 1.86/0.98      ( r2_hidden(sK0(X0),k1_relat_1(X0))
% 1.86/0.98      | ~ v1_funct_1(X0)
% 1.86/0.98      | v2_funct_1(X0)
% 1.86/0.98      | ~ v1_relat_1(X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f47]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_49,plain,
% 1.86/0.98      ( r2_hidden(sK0(X0),k1_relat_1(X0)) = iProver_top
% 1.86/0.98      | v1_funct_1(X0) != iProver_top
% 1.86/0.98      | v2_funct_1(X0) = iProver_top
% 1.86/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_51,plain,
% 1.86/0.98      ( r2_hidden(sK0(sK3),k1_relat_1(sK3)) = iProver_top
% 1.86/0.98      | v1_funct_1(sK3) != iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top
% 1.86/0.98      | v1_relat_1(sK3) != iProver_top ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_49]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_9,plain,
% 1.86/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 1.86/0.98      | ~ v1_funct_1(X0)
% 1.86/0.98      | v2_funct_1(X0)
% 1.86/0.98      | ~ v1_relat_1(X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f48]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_52,plain,
% 1.86/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0)) = iProver_top
% 1.86/0.98      | v1_funct_1(X0) != iProver_top
% 1.86/0.98      | v2_funct_1(X0) = iProver_top
% 1.86/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_54,plain,
% 1.86/0.98      ( r2_hidden(sK1(sK3),k1_relat_1(sK3)) = iProver_top
% 1.86/0.98      | v1_funct_1(sK3) != iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top
% 1.86/0.98      | v1_relat_1(sK3) != iProver_top ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_52]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_8,plain,
% 1.86/0.98      ( ~ v1_funct_1(X0)
% 1.86/0.98      | v2_funct_1(X0)
% 1.86/0.98      | ~ v1_relat_1(X0)
% 1.86/0.98      | k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK0(X0)) ),
% 1.86/0.98      inference(cnf_transformation,[],[f49]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_55,plain,
% 1.86/0.98      ( k1_funct_1(X0,sK1(X0)) = k1_funct_1(X0,sK0(X0))
% 1.86/0.98      | v1_funct_1(X0) != iProver_top
% 1.86/0.98      | v2_funct_1(X0) = iProver_top
% 1.86/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_57,plain,
% 1.86/0.98      ( k1_funct_1(sK3,sK1(sK3)) = k1_funct_1(sK3,sK0(sK3))
% 1.86/0.98      | v1_funct_1(sK3) != iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top
% 1.86/0.98      | v1_relat_1(sK3) != iProver_top ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_55]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_7,plain,
% 1.86/0.98      ( ~ v1_funct_1(X0)
% 1.86/0.98      | v2_funct_1(X0)
% 1.86/0.98      | ~ v1_relat_1(X0)
% 1.86/0.98      | sK1(X0) != sK0(X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f50]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_58,plain,
% 1.86/0.98      ( sK1(X0) != sK0(X0)
% 1.86/0.98      | v1_funct_1(X0) != iProver_top
% 1.86/0.98      | v2_funct_1(X0) = iProver_top
% 1.86/0.98      | v1_relat_1(X0) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_60,plain,
% 1.86/0.98      ( sK1(sK3) != sK0(sK3)
% 1.86/0.98      | v1_funct_1(sK3) != iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top
% 1.86/0.98      | v1_relat_1(sK3) != iProver_top ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_58]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2266,plain,
% 1.86/0.98      ( k1_xboole_0 = sK2
% 1.86/0.98      | v2_funct_1(sK3) != iProver_top
% 1.86/0.98      | sP1_iProver_split = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_2229]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_13,plain,
% 1.86/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f52]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3001,plain,
% 1.86/0.98      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2)))
% 1.86/0.98      | v1_relat_1(sK3) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_13]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3002,plain,
% 1.86/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) != iProver_top
% 1.86/0.98      | v1_relat_1(sK3) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_3001]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_14,plain,
% 1.86/0.98      ( v4_relat_1(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.86/0.98      inference(cnf_transformation,[],[f53]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_6,plain,
% 1.86/0.98      ( ~ v4_relat_1(X0,X1) | r1_tarski(k1_relat_1(X0),X1) | ~ v1_relat_1(X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_354,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(X0),X1)
% 1.86/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.86/0.98      | ~ v1_relat_1(X0) ),
% 1.86/0.98      inference(resolution,[status(thm)],[c_14,c_6]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_358,plain,
% 1.86/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.86/0.98      | r1_tarski(k1_relat_1(X0),X1) ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_354,c_14,c_13,c_6]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_359,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(X0),X1)
% 1.86/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.86/0.98      inference(renaming,[status(thm)],[c_358]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3012,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(sK3),sK2)
% 1.86/0.98      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_359]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3013,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top
% 1.86/0.98      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK2))) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_3012]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_20,negated_conjecture,
% 1.86/0.98      ( ~ r2_hidden(X0,sK2)
% 1.86/0.98      | ~ r2_hidden(X1,sK2)
% 1.86/0.98      | v2_funct_1(sK3)
% 1.86/0.98      | X1 = X0
% 1.86/0.98      | k1_funct_1(sK3,X1) != k1_funct_1(sK3,X0) ),
% 1.86/0.98      inference(cnf_transformation,[],[f58]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3082,plain,
% 1.86/0.98      ( ~ r2_hidden(sK1(sK3),sK2)
% 1.86/0.98      | ~ r2_hidden(sK0(sK3),sK2)
% 1.86/0.98      | v2_funct_1(sK3)
% 1.86/0.98      | k1_funct_1(sK3,sK1(sK3)) != k1_funct_1(sK3,sK0(sK3))
% 1.86/0.98      | sK1(sK3) = sK0(sK3) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_20]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3083,plain,
% 1.86/0.98      ( k1_funct_1(sK3,sK1(sK3)) != k1_funct_1(sK3,sK0(sK3))
% 1.86/0.98      | sK1(sK3) = sK0(sK3)
% 1.86/0.98      | r2_hidden(sK1(sK3),sK2) != iProver_top
% 1.86/0.98      | r2_hidden(sK0(sK3),sK2) != iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_3082]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_0,plain,
% 1.86/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.86/0.98      | ~ r2_hidden(X2,X0)
% 1.86/0.98      | r2_hidden(X2,X1) ),
% 1.86/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2,plain,
% 1.86/0.98      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.86/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_187,plain,
% 1.86/0.98      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.86/0.98      inference(prop_impl,[status(thm)],[c_2]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_238,plain,
% 1.86/0.98      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X2,X0) | r2_hidden(X2,X1) ),
% 1.86/0.98      inference(bin_hyper_res,[status(thm)],[c_0,c_187]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3088,plain,
% 1.86/0.98      ( ~ r1_tarski(k1_relat_1(sK3),sK2)
% 1.86/0.98      | ~ r2_hidden(X0,k1_relat_1(sK3))
% 1.86/0.98      | r2_hidden(X0,sK2) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_238]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3248,plain,
% 1.86/0.98      ( ~ r1_tarski(k1_relat_1(sK3),sK2)
% 1.86/0.98      | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
% 1.86/0.98      | r2_hidden(sK0(sK3),sK2) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_3088]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3249,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
% 1.86/0.98      | r2_hidden(sK0(sK3),k1_relat_1(sK3)) != iProver_top
% 1.86/0.98      | r2_hidden(sK0(sK3),sK2) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_3248]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3251,plain,
% 1.86/0.98      ( ~ r1_tarski(k1_relat_1(sK3),sK2)
% 1.86/0.98      | ~ r2_hidden(sK1(sK3),k1_relat_1(sK3))
% 1.86/0.98      | r2_hidden(sK1(sK3),sK2) ),
% 1.86/0.98      inference(instantiation,[status(thm)],[c_3088]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3252,plain,
% 1.86/0.98      ( r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
% 1.86/0.98      | r2_hidden(sK1(sK3),k1_relat_1(sK3)) != iProver_top
% 1.86/0.98      | r2_hidden(sK1(sK3),sK2) = iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_3251]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3517,plain,
% 1.86/0.98      ( k1_xboole_0 = sK2 | sP1_iProver_split = iProver_top ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_2800,c_24,c_26,c_51,c_54,c_57,c_60,c_2266,c_3002,c_3013,
% 1.86/0.98                 c_3083,c_3249,c_3252]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_19,negated_conjecture,
% 1.86/0.98      ( r2_hidden(sK4,sK2) | ~ v2_funct_1(sK3) ),
% 1.86/0.98      inference(cnf_transformation,[],[f59]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2805,plain,
% 1.86/0.98      ( r2_hidden(sK4,sK2) = iProver_top | v2_funct_1(sK3) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2228,plain,
% 1.86/0.98      ( ~ r2_hidden(X0,sK2)
% 1.86/0.98      | k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
% 1.86/0.98      | ~ sP1_iProver_split ),
% 1.86/0.98      inference(splitting,
% 1.86/0.98                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.86/0.98                [c_330]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2801,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,X0)) = X0
% 1.86/0.98      | r2_hidden(X0,sK2) != iProver_top
% 1.86/0.98      | sP1_iProver_split != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_2228]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3399,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
% 1.86/0.98      | v2_funct_1(sK3) != iProver_top
% 1.86/0.98      | sP1_iProver_split != iProver_top ),
% 1.86/0.98      inference(superposition,[status(thm)],[c_2805,c_2801]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3446,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
% 1.86/0.98      | sP1_iProver_split != iProver_top ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_3399,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,
% 1.86/0.98                 c_3249,c_3252]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3523,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK4
% 1.86/0.98      | sK2 = k1_xboole_0 ),
% 1.86/0.98      inference(superposition,[status(thm)],[c_3517,c_3446]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_487,plain,
% 1.86/0.98      ( r2_hidden(sK1(X0),k1_relat_1(X0))
% 1.86/0.98      | v2_funct_1(X0)
% 1.86/0.98      | ~ v1_relat_1(X0)
% 1.86/0.98      | sK3 != X0 ),
% 1.86/0.98      inference(resolution_lifted,[status(thm)],[c_9,c_23]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_488,plain,
% 1.86/0.98      ( r2_hidden(sK1(sK3),k1_relat_1(sK3))
% 1.86/0.98      | v2_funct_1(sK3)
% 1.86/0.98      | ~ v1_relat_1(sK3) ),
% 1.86/0.98      inference(unflattening,[status(thm)],[c_487]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2795,plain,
% 1.86/0.98      ( r2_hidden(sK1(sK3),k1_relat_1(sK3)) = iProver_top
% 1.86/0.98      | v2_funct_1(sK3) = iProver_top
% 1.86/0.98      | v1_relat_1(sK3) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_488]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3626,plain,
% 1.86/0.98      ( v2_funct_1(sK3) = iProver_top ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_2795,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,
% 1.86/0.98                 c_3249,c_3252]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_17,negated_conjecture,
% 1.86/0.98      ( ~ v2_funct_1(sK3) | k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5) ),
% 1.86/0.98      inference(cnf_transformation,[],[f61]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2807,plain,
% 1.86/0.98      ( k1_funct_1(sK3,sK4) = k1_funct_1(sK3,sK5)
% 1.86/0.98      | v2_funct_1(sK3) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3632,plain,
% 1.86/0.98      ( k1_funct_1(sK3,sK5) = k1_funct_1(sK3,sK4) ),
% 1.86/0.98      inference(superposition,[status(thm)],[c_3626,c_2807]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_18,negated_conjecture,
% 1.86/0.98      ( r2_hidden(sK5,sK2) | ~ v2_funct_1(sK3) ),
% 1.86/0.98      inference(cnf_transformation,[],[f60]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_2806,plain,
% 1.86/0.98      ( r2_hidden(sK5,sK2) = iProver_top | v2_funct_1(sK3) != iProver_top ),
% 1.86/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3398,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) = sK5
% 1.86/0.98      | v2_funct_1(sK3) != iProver_top
% 1.86/0.98      | sP1_iProver_split != iProver_top ),
% 1.86/0.98      inference(superposition,[status(thm)],[c_2806,c_2801]) ).
% 1.86/0.98  
% 1.86/0.98  cnf(c_3415,plain,
% 1.86/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK5)) = sK5
% 1.86/0.98      | sP1_iProver_split != iProver_top ),
% 1.86/0.98      inference(global_propositional_subsumption,
% 1.86/0.98                [status(thm)],
% 1.86/0.98                [c_3398,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,
% 1.86/0.98                 c_3249,c_3252]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3786,plain,
% 1.95/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK5
% 1.95/0.98      | sP1_iProver_split != iProver_top ),
% 1.95/0.98      inference(demodulation,[status(thm)],[c_3632,c_3415]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3879,plain,
% 1.95/0.98      ( k1_funct_1(k2_funct_1(sK3),k1_funct_1(sK3,sK4)) = sK5
% 1.95/0.98      | sK2 = k1_xboole_0 ),
% 1.95/0.98      inference(superposition,[status(thm)],[c_3517,c_3786]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_4220,plain,
% 1.95/0.98      ( sK2 = k1_xboole_0 | sK5 = sK4 ),
% 1.95/0.98      inference(superposition,[status(thm)],[c_3523,c_3879]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_513,plain,
% 1.95/0.98      ( v2_funct_1(X0) | ~ v1_relat_1(X0) | sK1(X0) != sK0(X0) | sK3 != X0 ),
% 1.95/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_23]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_514,plain,
% 1.95/0.98      ( v2_funct_1(sK3) | ~ v1_relat_1(sK3) | sK1(sK3) != sK0(sK3) ),
% 1.95/0.98      inference(unflattening,[status(thm)],[c_513]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_16,negated_conjecture,
% 1.95/0.98      ( ~ v2_funct_1(sK3) | sK4 != sK5 ),
% 1.95/0.98      inference(cnf_transformation,[],[f62]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_728,plain,
% 1.95/0.98      ( ~ v1_relat_1(sK3) | sK1(sK3) != sK0(sK3) | sK5 != sK4 ),
% 1.95/0.98      inference(resolution,[status(thm)],[c_514,c_16]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_500,plain,
% 1.95/0.98      ( v2_funct_1(X0)
% 1.95/0.98      | ~ v1_relat_1(X0)
% 1.95/0.98      | k1_funct_1(X0,sK0(X0)) = k1_funct_1(X0,sK1(X0))
% 1.95/0.98      | sK3 != X0 ),
% 1.95/0.98      inference(resolution_lifted,[status(thm)],[c_8,c_23]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_501,plain,
% 1.95/0.98      ( v2_funct_1(sK3)
% 1.95/0.98      | ~ v1_relat_1(sK3)
% 1.95/0.98      | k1_funct_1(sK3,sK0(sK3)) = k1_funct_1(sK3,sK1(sK3)) ),
% 1.95/0.98      inference(unflattening,[status(thm)],[c_500]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_819,plain,
% 1.95/0.98      ( ~ v1_relat_1(sK3)
% 1.95/0.98      | k1_funct_1(sK3,sK0(sK3)) = k1_funct_1(sK3,sK1(sK3))
% 1.95/0.98      | sK5 != sK4 ),
% 1.95/0.98      inference(resolution,[status(thm)],[c_501,c_16]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_910,plain,
% 1.95/0.98      ( r2_hidden(sK1(sK3),k1_relat_1(sK3)) | ~ v1_relat_1(sK3) | sK5 != sK4 ),
% 1.95/0.98      inference(resolution,[status(thm)],[c_488,c_16]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_474,plain,
% 1.95/0.98      ( r2_hidden(sK0(X0),k1_relat_1(X0))
% 1.95/0.98      | v2_funct_1(X0)
% 1.95/0.98      | ~ v1_relat_1(X0)
% 1.95/0.98      | sK3 != X0 ),
% 1.95/0.98      inference(resolution_lifted,[status(thm)],[c_10,c_23]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_475,plain,
% 1.95/0.98      ( r2_hidden(sK0(sK3),k1_relat_1(sK3))
% 1.95/0.98      | v2_funct_1(sK3)
% 1.95/0.98      | ~ v1_relat_1(sK3) ),
% 1.95/0.98      inference(unflattening,[status(thm)],[c_474]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_1001,plain,
% 1.95/0.98      ( r2_hidden(sK0(sK3),k1_relat_1(sK3)) | ~ v1_relat_1(sK3) | sK5 != sK4 ),
% 1.95/0.98      inference(resolution,[status(thm)],[c_475,c_16]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2241,plain,( X0 != X1 | sK1(X0) = sK1(X1) ),theory(equality) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2253,plain,
% 1.95/0.98      ( sK1(sK3) = sK1(sK3) | sK3 != sK3 ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_2241]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2231,plain,( X0 = X0 ),theory(equality) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2258,plain,
% 1.95/0.98      ( sK3 = sK3 ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_2231]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_11,plain,
% 1.95/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.95/0.98      | ~ r2_hidden(X2,k1_relat_1(X1))
% 1.95/0.98      | ~ v1_funct_1(X1)
% 1.95/0.98      | ~ v2_funct_1(X1)
% 1.95/0.98      | ~ v1_relat_1(X1)
% 1.95/0.98      | X0 = X2
% 1.95/0.98      | k1_funct_1(X1,X0) != k1_funct_1(X1,X2) ),
% 1.95/0.98      inference(cnf_transformation,[],[f46]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_450,plain,
% 1.95/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 1.95/0.98      | ~ r2_hidden(X2,k1_relat_1(X1))
% 1.95/0.98      | ~ v2_funct_1(X1)
% 1.95/0.98      | ~ v1_relat_1(X1)
% 1.95/0.98      | X2 = X0
% 1.95/0.98      | k1_funct_1(X1,X2) != k1_funct_1(X1,X0)
% 1.95/0.98      | sK3 != X1 ),
% 1.95/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_23]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_451,plain,
% 1.95/0.98      ( ~ r2_hidden(X0,k1_relat_1(sK3))
% 1.95/0.98      | ~ r2_hidden(X1,k1_relat_1(sK3))
% 1.95/0.98      | ~ v2_funct_1(sK3)
% 1.95/0.98      | ~ v1_relat_1(sK3)
% 1.95/0.98      | X0 = X1
% 1.95/0.98      | k1_funct_1(sK3,X0) != k1_funct_1(sK3,X1) ),
% 1.95/0.98      inference(unflattening,[status(thm)],[c_450]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2227,plain,
% 1.95/0.98      ( ~ v2_funct_1(sK3) | ~ v1_relat_1(sK3) | sP0_iProver_split ),
% 1.95/0.98      inference(splitting,
% 1.95/0.98                [splitting(split),new_symbols(definition,[])],
% 1.95/0.98                [c_451]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2232,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3085,plain,
% 1.95/0.98      ( sK1(sK3) != X0 | sK1(sK3) = sK0(sK3) | sK0(sK3) != X0 ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_2232]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3231,plain,
% 1.95/0.98      ( sK1(sK3) != sK1(sK3) | sK1(sK3) = sK0(sK3) | sK0(sK3) != sK1(sK3) ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_3085]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3628,plain,
% 1.95/0.98      ( v2_funct_1(sK3) ),
% 1.95/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_3626]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2226,plain,
% 1.95/0.98      ( ~ r2_hidden(X0,k1_relat_1(sK3))
% 1.95/0.98      | ~ r2_hidden(X1,k1_relat_1(sK3))
% 1.95/0.98      | X0 = X1
% 1.95/0.98      | k1_funct_1(sK3,X0) != k1_funct_1(sK3,X1)
% 1.95/0.98      | ~ sP0_iProver_split ),
% 1.95/0.98      inference(splitting,
% 1.95/0.98                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.95/0.98                [c_451]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3849,plain,
% 1.95/0.98      ( ~ r2_hidden(sK1(X0),k1_relat_1(sK3))
% 1.95/0.98      | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
% 1.95/0.98      | ~ sP0_iProver_split
% 1.95/0.98      | k1_funct_1(sK3,sK0(sK3)) != k1_funct_1(sK3,sK1(X0))
% 1.95/0.98      | sK0(sK3) = sK1(X0) ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_2226]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3851,plain,
% 1.95/0.98      ( ~ r2_hidden(sK1(sK3),k1_relat_1(sK3))
% 1.95/0.98      | ~ r2_hidden(sK0(sK3),k1_relat_1(sK3))
% 1.95/0.98      | ~ sP0_iProver_split
% 1.95/0.98      | k1_funct_1(sK3,sK0(sK3)) != k1_funct_1(sK3,sK1(sK3))
% 1.95/0.98      | sK0(sK3) = sK1(sK3) ),
% 1.95/0.98      inference(instantiation,[status(thm)],[c_3849]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_4461,plain,
% 1.95/0.98      ( sK2 = k1_xboole_0 ),
% 1.95/0.98      inference(global_propositional_subsumption,
% 1.95/0.98                [status(thm)],
% 1.95/0.98                [c_4220,c_21,c_728,c_819,c_910,c_1001,c_2253,c_2258,c_2227,
% 1.95/0.98                 c_3001,c_3231,c_3628,c_3851]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_4474,plain,
% 1.95/0.98      ( r2_hidden(sK5,k1_xboole_0) = iProver_top
% 1.95/0.98      | v2_funct_1(sK3) != iProver_top ),
% 1.95/0.98      inference(demodulation,[status(thm)],[c_4461,c_2806]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_4615,plain,
% 1.95/0.98      ( r2_hidden(sK5,k1_xboole_0) = iProver_top ),
% 1.95/0.98      inference(global_propositional_subsumption,
% 1.95/0.98                [status(thm)],
% 1.95/0.98                [c_4474,c_24,c_26,c_51,c_54,c_57,c_60,c_3002,c_3013,c_3083,
% 1.95/0.98                 c_3249,c_3252]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_1,plain,
% 1.95/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.95/0.98      inference(cnf_transformation,[],[f40]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2814,plain,
% 1.95/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.95/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3,plain,
% 1.95/0.98      ( r1_tarski(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.95/0.98      inference(cnf_transformation,[],[f41]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2812,plain,
% 1.95/0.98      ( r1_tarski(X0,X1) = iProver_top
% 1.95/0.98      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 1.95/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3192,plain,
% 1.95/0.98      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.95/0.98      inference(superposition,[status(thm)],[c_2814,c_2812]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_12,plain,
% 1.95/0.98      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X1,X0) ),
% 1.95/0.98      inference(cnf_transformation,[],[f51]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_2810,plain,
% 1.95/0.98      ( r1_tarski(X0,X1) != iProver_top | r2_hidden(X1,X0) != iProver_top ),
% 1.95/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_3964,plain,
% 1.95/0.98      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.95/0.98      inference(superposition,[status(thm)],[c_3192,c_2810]) ).
% 1.95/0.98  
% 1.95/0.98  cnf(c_4620,plain,
% 1.95/0.98      ( $false ),
% 1.95/0.98      inference(forward_subsumption_resolution,[status(thm)],[c_4615,c_3964]) ).
% 1.95/0.98  
% 1.95/0.98  
% 1.95/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.95/0.98  
% 1.95/0.98  ------                               Statistics
% 1.95/0.98  
% 1.95/0.98  ------ General
% 1.95/0.98  
% 1.95/0.98  abstr_ref_over_cycles:                  0
% 1.95/0.98  abstr_ref_under_cycles:                 0
% 1.95/0.98  gc_basic_clause_elim:                   0
% 1.95/0.98  forced_gc_time:                         0
% 1.95/0.98  parsing_time:                           0.009
% 1.95/0.98  unif_index_cands_time:                  0.
% 1.95/0.98  unif_index_add_time:                    0.
% 1.95/0.98  orderings_time:                         0.
% 1.95/0.98  out_proof_time:                         0.01
% 1.95/0.98  total_time:                             0.133
% 1.95/0.98  num_of_symbols:                         53
% 1.95/0.98  num_of_terms:                           1733
% 1.95/0.98  
% 1.95/0.98  ------ Preprocessing
% 1.95/0.98  
% 1.95/0.98  num_of_splits:                          2
% 1.95/0.98  num_of_split_atoms:                     2
% 1.95/0.98  num_of_reused_defs:                     0
% 1.95/0.98  num_eq_ax_congr_red:                    10
% 1.95/0.98  num_of_sem_filtered_clauses:            1
% 1.95/0.98  num_of_subtypes:                        0
% 1.95/0.98  monotx_restored_types:                  0
% 1.95/0.98  sat_num_of_epr_types:                   0
% 1.95/0.98  sat_num_of_non_cyclic_types:            0
% 1.95/0.98  sat_guarded_non_collapsed_types:        0
% 1.95/0.98  num_pure_diseq_elim:                    0
% 1.95/0.98  simp_replaced_by:                       0
% 1.95/0.98  res_preprocessed:                       117
% 1.95/0.98  prep_upred:                             0
% 1.95/0.98  prep_unflattend:                        30
% 1.95/0.98  smt_new_axioms:                         0
% 1.95/0.98  pred_elim_cands:                        5
% 1.95/0.98  pred_elim:                              3
% 1.95/0.98  pred_elim_cl:                           4
% 1.95/0.98  pred_elim_cycles:                       9
% 1.95/0.98  merged_defs:                            8
% 1.95/0.98  merged_defs_ncl:                        0
% 1.95/0.98  bin_hyper_res:                          9
% 1.95/0.98  prep_cycles:                            4
% 1.95/0.98  pred_elim_time:                         0.026
% 1.95/0.98  splitting_time:                         0.
% 1.95/0.98  sem_filter_time:                        0.
% 1.95/0.98  monotx_time:                            0.
% 1.95/0.98  subtype_inf_time:                       0.
% 1.95/0.98  
% 1.95/0.98  ------ Problem properties
% 1.95/0.98  
% 1.95/0.98  clauses:                                22
% 1.95/0.98  conjectures:                            6
% 1.95/0.98  epr:                                    7
% 1.95/0.98  horn:                                   17
% 1.95/0.98  ground:                                 11
% 1.95/0.98  unary:                                  2
% 1.95/0.98  binary:                                 9
% 1.95/0.98  lits:                                   57
% 1.95/0.98  lits_eq:                                10
% 1.95/0.98  fd_pure:                                0
% 1.95/0.98  fd_pseudo:                              0
% 1.95/0.98  fd_cond:                                0
% 1.95/0.98  fd_pseudo_cond:                         2
% 1.95/0.98  ac_symbols:                             0
% 1.95/0.98  
% 1.95/0.98  ------ Propositional Solver
% 1.95/0.98  
% 1.95/0.98  prop_solver_calls:                      28
% 1.95/0.98  prop_fast_solver_calls:                 1117
% 1.95/0.98  smt_solver_calls:                       0
% 1.95/0.98  smt_fast_solver_calls:                  0
% 1.95/0.98  prop_num_of_clauses:                    968
% 1.95/0.98  prop_preprocess_simplified:             4374
% 1.95/0.98  prop_fo_subsumed:                       28
% 1.95/0.98  prop_solver_time:                       0.
% 1.95/0.98  smt_solver_time:                        0.
% 1.95/0.98  smt_fast_solver_time:                   0.
% 1.95/0.98  prop_fast_solver_time:                  0.
% 1.95/0.98  prop_unsat_core_time:                   0.
% 1.95/0.98  
% 1.95/0.98  ------ QBF
% 1.95/0.98  
% 1.95/0.98  qbf_q_res:                              0
% 1.95/0.98  qbf_num_tautologies:                    0
% 1.95/0.98  qbf_prep_cycles:                        0
% 1.95/0.98  
% 1.95/0.98  ------ BMC1
% 1.95/0.98  
% 1.95/0.98  bmc1_current_bound:                     -1
% 1.95/0.98  bmc1_last_solved_bound:                 -1
% 1.95/0.98  bmc1_unsat_core_size:                   -1
% 1.95/0.98  bmc1_unsat_core_parents_size:           -1
% 1.95/0.98  bmc1_merge_next_fun:                    0
% 1.95/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.95/0.98  
% 1.95/0.98  ------ Instantiation
% 1.95/0.98  
% 1.95/0.98  inst_num_of_clauses:                    300
% 1.95/0.98  inst_num_in_passive:                    1
% 1.95/0.98  inst_num_in_active:                     221
% 1.95/0.98  inst_num_in_unprocessed:                78
% 1.95/0.98  inst_num_of_loops:                      240
% 1.95/0.98  inst_num_of_learning_restarts:          0
% 1.95/0.98  inst_num_moves_active_passive:          15
% 1.95/0.98  inst_lit_activity:                      0
% 1.95/0.98  inst_lit_activity_moves:                0
% 1.95/0.98  inst_num_tautologies:                   0
% 1.95/0.98  inst_num_prop_implied:                  0
% 1.95/0.98  inst_num_existing_simplified:           0
% 1.95/0.98  inst_num_eq_res_simplified:             0
% 1.95/0.98  inst_num_child_elim:                    0
% 1.95/0.98  inst_num_of_dismatching_blockings:      40
% 1.95/0.98  inst_num_of_non_proper_insts:           331
% 1.95/0.98  inst_num_of_duplicates:                 0
% 1.95/0.98  inst_inst_num_from_inst_to_res:         0
% 1.95/0.98  inst_dismatching_checking_time:         0.
% 1.95/0.98  
% 1.95/0.98  ------ Resolution
% 1.95/0.98  
% 1.95/0.98  res_num_of_clauses:                     0
% 1.95/0.98  res_num_in_passive:                     0
% 1.95/0.98  res_num_in_active:                      0
% 1.95/0.98  res_num_of_loops:                       121
% 1.95/0.98  res_forward_subset_subsumed:            30
% 1.95/0.98  res_backward_subset_subsumed:           0
% 1.95/0.98  res_forward_subsumed:                   0
% 1.95/0.98  res_backward_subsumed:                  0
% 1.95/0.98  res_forward_subsumption_resolution:     0
% 1.95/0.98  res_backward_subsumption_resolution:    0
% 1.95/0.98  res_clause_to_clause_subsumption:       110
% 1.95/0.98  res_orphan_elimination:                 0
% 1.95/0.98  res_tautology_del:                      61
% 1.95/0.98  res_num_eq_res_simplified:              0
% 1.95/0.98  res_num_sel_changes:                    0
% 1.95/0.98  res_moves_from_active_to_pass:          0
% 1.95/0.98  
% 1.95/0.98  ------ Superposition
% 1.95/0.98  
% 1.95/0.98  sup_time_total:                         0.
% 1.95/0.98  sup_time_generating:                    0.
% 1.95/0.98  sup_time_sim_full:                      0.
% 1.95/0.98  sup_time_sim_immed:                     0.
% 1.95/0.98  
% 1.95/0.98  sup_num_of_clauses:                     47
% 1.95/0.98  sup_num_in_active:                      32
% 1.95/0.98  sup_num_in_passive:                     15
% 1.95/0.98  sup_num_of_loops:                       47
% 1.95/0.98  sup_fw_superposition:                   24
% 1.95/0.98  sup_bw_superposition:                   24
% 1.95/0.98  sup_immediate_simplified:               6
% 1.95/0.98  sup_given_eliminated:                   0
% 1.95/0.98  comparisons_done:                       0
% 1.95/0.98  comparisons_avoided:                    9
% 1.95/0.98  
% 1.95/0.98  ------ Simplifications
% 1.95/0.98  
% 1.95/0.98  
% 1.95/0.98  sim_fw_subset_subsumed:                 6
% 1.95/0.98  sim_bw_subset_subsumed:                 0
% 1.95/0.98  sim_fw_subsumed:                        0
% 1.95/0.98  sim_bw_subsumed:                        0
% 1.95/0.98  sim_fw_subsumption_res:                 1
% 1.95/0.98  sim_bw_subsumption_res:                 0
% 1.95/0.98  sim_tautology_del:                      1
% 1.95/0.98  sim_eq_tautology_del:                   5
% 1.95/0.98  sim_eq_res_simp:                        0
% 1.95/0.98  sim_fw_demodulated:                     0
% 1.95/0.98  sim_bw_demodulated:                     15
% 1.95/0.98  sim_light_normalised:                   1
% 1.95/0.98  sim_joinable_taut:                      0
% 1.95/0.98  sim_joinable_simp:                      0
% 1.95/0.98  sim_ac_normalised:                      0
% 1.95/0.98  sim_smt_subsumption:                    0
% 1.95/0.98  
%------------------------------------------------------------------------------
