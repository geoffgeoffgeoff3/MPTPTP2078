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
% DateTime   : Thu Dec  3 12:06:15 EST 2020

% Result     : Theorem 3.43s
% Output     : CNFRefutation 3.43s
% Verified   : 
% Statistics : Number of formulae       :  157 (1725 expanded)
%              Number of clauses        :   85 ( 444 expanded)
%              Number of leaves         :   19 ( 388 expanded)
%              Depth                    :   28
%              Number of atoms          :  573 (5799 expanded)
%              Number of equality atoms :  353 (2329 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f14,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => k1_funct_1(X3,X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
          & v1_funct_2(X3,X0,k1_tarski(X1))
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => k1_funct_1(X3,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f25,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f26,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f25])).

fof(f39,plain,
    ( ? [X0,X1,X2,X3] :
        ( k1_funct_1(X3,X2) != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
   => ( k1_funct_1(sK5,sK4) != sK3
      & r2_hidden(sK4,sK2)
      & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))
      & v1_funct_2(sK5,sK2,k1_tarski(sK3))
      & v1_funct_1(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( k1_funct_1(sK5,sK4) != sK3
    & r2_hidden(sK4,sK2)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))
    & v1_funct_2(sK5,sK2,k1_tarski(sK3))
    & v1_funct_1(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f26,f39])).

fof(f80,plain,(
    r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f40])).

fof(f78,plain,(
    v1_funct_2(sK5,sK2,k1_tarski(sK3)) ),
    inference(cnf_transformation,[],[f40])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f82,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f44,f45])).

fof(f83,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f43,f82])).

fof(f84,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f42,f83])).

fof(f89,plain,(
    v1_funct_2(sK5,sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)) ),
    inference(definition_unfolding,[],[f78,f84])).

fof(f13,axiom,(
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
    inference(ennf_transformation,[],[f13])).

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
    inference(flattening,[],[f23])).

fof(f38,plain,(
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
    inference(nnf_transformation,[],[f24])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f79,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) ),
    inference(cnf_transformation,[],[f40])).

fof(f88,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))) ),
    inference(definition_unfolding,[],[f79,f84])).

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

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_enumset1(X0,X1,X2,X3,X4) = X5
    <=> ! [X6] :
          ( r2_hidden(X6,X5)
        <=> ~ ( X4 != X6
              & X3 != X6
              & X2 != X6
              & X1 != X6
              & X0 != X6 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_enumset1(X0,X1,X2,X3,X4) = X5
    <=> ! [X6] :
          ( r2_hidden(X6,X5)
        <=> ( X4 = X6
            | X3 = X6
            | X2 = X6
            | X1 = X6
            | X0 = X6 ) ) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X4,X3,X2,X1,X0,X5] :
      ( sP0(X4,X3,X2,X1,X0,X5)
    <=> ! [X6] :
          ( r2_hidden(X6,X5)
        <=> ( X4 = X6
            | X3 = X6
            | X2 = X6
            | X1 = X6
            | X0 = X6 ) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f28,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_enumset1(X0,X1,X2,X3,X4) = X5
    <=> sP0(X4,X3,X2,X1,X0,X5) ) ),
    inference(definition_folding,[],[f16,f27])).

fof(f36,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( k3_enumset1(X0,X1,X2,X3,X4) = X5
        | ~ sP0(X4,X3,X2,X1,X0,X5) )
      & ( sP0(X4,X3,X2,X1,X0,X5)
        | k3_enumset1(X0,X1,X2,X3,X4) != X5 ) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f61,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( sP0(X4,X3,X2,X1,X0,X5)
      | k3_enumset1(X0,X1,X2,X3,X4) != X5 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f96,plain,(
    ! [X4,X2,X0,X3,X1] : sP0(X4,X3,X2,X1,X0,k3_enumset1(X0,X1,X2,X3,X4)) ),
    inference(equality_resolution,[],[f61])).

fof(f31,plain,(
    ! [X4,X3,X2,X1,X0,X5] :
      ( ( sP0(X4,X3,X2,X1,X0,X5)
        | ? [X6] :
            ( ( ( X4 != X6
                & X3 != X6
                & X2 != X6
                & X1 != X6
                & X0 != X6 )
              | ~ r2_hidden(X6,X5) )
            & ( X4 = X6
              | X3 = X6
              | X2 = X6
              | X1 = X6
              | X0 = X6
              | r2_hidden(X6,X5) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X5)
              | ( X4 != X6
                & X3 != X6
                & X2 != X6
                & X1 != X6
                & X0 != X6 ) )
            & ( X4 = X6
              | X3 = X6
              | X2 = X6
              | X1 = X6
              | X0 = X6
              | ~ r2_hidden(X6,X5) ) )
        | ~ sP0(X4,X3,X2,X1,X0,X5) ) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f32,plain,(
    ! [X4,X3,X2,X1,X0,X5] :
      ( ( sP0(X4,X3,X2,X1,X0,X5)
        | ? [X6] :
            ( ( ( X4 != X6
                & X3 != X6
                & X2 != X6
                & X1 != X6
                & X0 != X6 )
              | ~ r2_hidden(X6,X5) )
            & ( X4 = X6
              | X3 = X6
              | X2 = X6
              | X1 = X6
              | X0 = X6
              | r2_hidden(X6,X5) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X5)
              | ( X4 != X6
                & X3 != X6
                & X2 != X6
                & X1 != X6
                & X0 != X6 ) )
            & ( X4 = X6
              | X3 = X6
              | X2 = X6
              | X1 = X6
              | X0 = X6
              | ~ r2_hidden(X6,X5) ) )
        | ~ sP0(X4,X3,X2,X1,X0,X5) ) ) ),
    inference(flattening,[],[f31])).

fof(f33,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( sP0(X0,X1,X2,X3,X4,X5)
        | ? [X6] :
            ( ( ( X0 != X6
                & X1 != X6
                & X2 != X6
                & X3 != X6
                & X4 != X6 )
              | ~ r2_hidden(X6,X5) )
            & ( X0 = X6
              | X1 = X6
              | X2 = X6
              | X3 = X6
              | X4 = X6
              | r2_hidden(X6,X5) ) ) )
      & ( ! [X7] :
            ( ( r2_hidden(X7,X5)
              | ( X0 != X7
                & X1 != X7
                & X2 != X7
                & X3 != X7
                & X4 != X7 ) )
            & ( X0 = X7
              | X1 = X7
              | X2 = X7
              | X3 = X7
              | X4 = X7
              | ~ r2_hidden(X7,X5) ) )
        | ~ sP0(X0,X1,X2,X3,X4,X5) ) ) ),
    inference(rectify,[],[f32])).

fof(f34,plain,(
    ! [X5,X4,X3,X2,X1,X0] :
      ( ? [X6] :
          ( ( ( X0 != X6
              & X1 != X6
              & X2 != X6
              & X3 != X6
              & X4 != X6 )
            | ~ r2_hidden(X6,X5) )
          & ( X0 = X6
            | X1 = X6
            | X2 = X6
            | X3 = X6
            | X4 = X6
            | r2_hidden(X6,X5) ) )
     => ( ( ( sK1(X0,X1,X2,X3,X4,X5) != X0
            & sK1(X0,X1,X2,X3,X4,X5) != X1
            & sK1(X0,X1,X2,X3,X4,X5) != X2
            & sK1(X0,X1,X2,X3,X4,X5) != X3
            & sK1(X0,X1,X2,X3,X4,X5) != X4 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5) )
        & ( sK1(X0,X1,X2,X3,X4,X5) = X0
          | sK1(X0,X1,X2,X3,X4,X5) = X1
          | sK1(X0,X1,X2,X3,X4,X5) = X2
          | sK1(X0,X1,X2,X3,X4,X5) = X3
          | sK1(X0,X1,X2,X3,X4,X5) = X4
          | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( sP0(X0,X1,X2,X3,X4,X5)
        | ( ( ( sK1(X0,X1,X2,X3,X4,X5) != X0
              & sK1(X0,X1,X2,X3,X4,X5) != X1
              & sK1(X0,X1,X2,X3,X4,X5) != X2
              & sK1(X0,X1,X2,X3,X4,X5) != X3
              & sK1(X0,X1,X2,X3,X4,X5) != X4 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5) )
          & ( sK1(X0,X1,X2,X3,X4,X5) = X0
            | sK1(X0,X1,X2,X3,X4,X5) = X1
            | sK1(X0,X1,X2,X3,X4,X5) = X2
            | sK1(X0,X1,X2,X3,X4,X5) = X3
            | sK1(X0,X1,X2,X3,X4,X5) = X4
            | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5) ) ) )
      & ( ! [X7] :
            ( ( r2_hidden(X7,X5)
              | ( X0 != X7
                & X1 != X7
                & X2 != X7
                & X3 != X7
                & X4 != X7 ) )
            & ( X0 = X7
              | X1 = X7
              | X2 = X7
              | X3 = X7
              | X4 = X7
              | ~ r2_hidden(X7,X5) ) )
        | ~ sP0(X0,X1,X2,X3,X4,X5) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).

fof(f54,plain,(
    ! [X4,X2,X0,X7,X5,X3,X1] :
      ( r2_hidden(X7,X5)
      | X0 != X7
      | ~ sP0(X0,X1,X2,X3,X4,X5) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f91,plain,(
    ! [X4,X2,X7,X5,X3,X1] :
      ( r2_hidden(X7,X5)
      | ~ sP0(X7,X1,X2,X3,X4,X5) ) ),
    inference(equality_resolution,[],[f54])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f102,plain,(
    ! [X2,X0] :
      ( k1_xboole_0 = X2
      | ~ v1_funct_2(X2,X0,k1_xboole_0)
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))) ) ),
    inference(equality_resolution,[],[f75])).

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

fof(f37,plain,(
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

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X0,X1) = X2
      | k1_xboole_0 != X2
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f97,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k1_funct_1(X0,X1)
      | r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f67])).

fof(f77,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f40])).

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

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(X1,X2),X0)
      | k1_funct_1(X0,X1) != X2
      | ~ r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f99,plain,(
    ! [X0,X1] :
      ( r2_hidden(k4_tarski(X1,k1_funct_1(X0,X1)),X0)
      | ~ r2_hidden(X1,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f64])).

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

fof(f63,plain,(
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

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))
        | X1 != X3
        | ~ r2_hidden(X0,X2) )
      & ( ( X1 = X3
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))
        | X1 != X3
        | ~ r2_hidden(X0,X2) )
      & ( ( X1 = X3
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ) ),
    inference(flattening,[],[f29])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( X1 = X3
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f86,plain,(
    ! [X2,X0,X3,X1] :
      ( X1 = X3
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k3_enumset1(X3,X3,X3,X3,X3))) ) ),
    inference(definition_unfolding,[],[f47,f84])).

fof(f81,plain,(
    k1_funct_1(sK5,sK4) != sK3 ),
    inference(cnf_transformation,[],[f40])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
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

fof(f68,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_33,negated_conjecture,
    ( r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_3308,plain,
    ( r2_hidden(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_35,negated_conjecture,
    ( v1_funct_2(sK5,sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_31,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_34,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_537,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK5 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_31,c_34])).

cnf(c_538,plain,
    ( ~ v1_funct_2(sK5,X0,X1)
    | k1_relset_1(X0,X1,sK5) = X0
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_537])).

cnf(c_759,plain,
    ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != X0
    | k1_relset_1(X1,X0,sK5) = X1
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
    | sK2 != X1
    | sK5 != sK5
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_35,c_538])).

cnf(c_760,plain,
    ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = sK2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))
    | k1_xboole_0 = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
    inference(unflattening,[status(thm)],[c_759])).

cnf(c_1769,plain,
    ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = sK2
    | k1_xboole_0 = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
    inference(equality_resolution_simp,[status(thm)],[c_760])).

cnf(c_25,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_573,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_34])).

cnf(c_574,plain,
    ( k1_relset_1(X0,X1,sK5) = k1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_573])).

cnf(c_3549,plain,
    ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = k1_relat_1(sK5) ),
    inference(equality_resolution,[status(thm)],[c_574])).

cnf(c_3709,plain,
    ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) = k1_xboole_0
    | k1_relat_1(sK5) = sK2 ),
    inference(demodulation,[status(thm)],[c_1769,c_3549])).

cnf(c_17,plain,
    ( sP0(X0,X1,X2,X3,X4,k3_enumset1(X4,X3,X2,X1,X0)) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_3309,plain,
    ( sP0(X0,X1,X2,X3,X4,k3_enumset1(X4,X3,X2,X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3745,plain,
    ( k1_relat_1(sK5) = sK2
    | sP0(sK3,sK3,sK3,sK3,sK3,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3709,c_3309])).

cnf(c_10,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5)
    | r2_hidden(X0,X5) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_3316,plain,
    ( sP0(X0,X1,X2,X3,X4,X5) != iProver_top
    | r2_hidden(X0,X5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_6896,plain,
    ( k1_relat_1(sK5) = sK2
    | r2_hidden(sK3,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3745,c_3316])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f102])).

cnf(c_611,plain,
    ( ~ v1_funct_2(X0,X1,k1_xboole_0)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0))
    | sK5 != X0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_34])).

cnf(c_612,plain,
    ( ~ v1_funct_2(sK5,X0,k1_xboole_0)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))
    | k1_xboole_0 = X0
    | k1_xboole_0 = sK5 ),
    inference(unflattening,[status(thm)],[c_611])).

cnf(c_770,plain,
    ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))
    | sK2 != X0
    | sK5 != sK5
    | sK5 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_35,c_612])).

cnf(c_771,plain,
    ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))
    | sK5 = k1_xboole_0
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_770])).

cnf(c_3713,plain,
    ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
    | k1_relat_1(sK5) = sK2
    | sK2 = k1_xboole_0
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3709,c_771])).

cnf(c_3734,plain,
    ( k1_relat_1(sK5) = sK2
    | sK2 = k1_xboole_0
    | sK5 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3713,c_3709])).

cnf(c_19,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f97])).

cnf(c_36,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_436,plain,
    ( r2_hidden(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,X0) = k1_xboole_0
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_36])).

cnf(c_437,plain,
    ( r2_hidden(X0,k1_relat_1(sK5))
    | ~ v1_relat_1(sK5)
    | k1_funct_1(sK5,X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_436])).

cnf(c_3304,plain,
    ( k1_funct_1(sK5,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_437])).

cnf(c_438,plain,
    ( k1_funct_1(sK5,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_437])).

cnf(c_2883,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_3534,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) = k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) ),
    inference(instantiation,[status(thm)],[c_2883])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_582,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_34])).

cnf(c_583,plain,
    ( v1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_582])).

cnf(c_3536,plain,
    ( v1_relat_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) ),
    inference(instantiation,[status(thm)],[c_583])).

cnf(c_3537,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))
    | v1_relat_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3536])).

cnf(c_4128,plain,
    ( r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
    | k1_funct_1(sK5,X0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3304,c_438,c_3534,c_3537])).

cnf(c_4129,plain,
    ( k1_funct_1(sK5,X0) = k1_xboole_0
    | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top ),
    inference(renaming,[status(thm)],[c_4128])).

cnf(c_22,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_403,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
    | ~ v1_relat_1(X1)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_36])).

cnf(c_404,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK5))
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5)
    | ~ v1_relat_1(sK5) ),
    inference(unflattening,[status(thm)],[c_403])).

cnf(c_3306,plain,
    ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_404])).

cnf(c_405,plain,
    ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
    | v1_relat_1(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_404])).

cnf(c_3640,plain,
    ( r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3306,c_405,c_3534,c_3537])).

cnf(c_3641,plain,
    ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top ),
    inference(renaming,[status(thm)],[c_3640])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_522,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X2)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_34])).

cnf(c_523,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_522])).

cnf(c_3303,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X0)
    | r2_hidden(X1,X0) = iProver_top
    | r2_hidden(X1,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_523])).

cnf(c_4003,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3303])).

cnf(c_2,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k3_enumset1(X3,X3,X3,X3,X3)))
    | X1 = X3 ),
    inference(cnf_transformation,[],[f86])).

cnf(c_3324,plain,
    ( X0 = X1
    | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,k3_enumset1(X1,X1,X1,X1,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_4889,plain,
    ( sK3 = X0
    | r2_hidden(k4_tarski(X1,X0),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_4003,c_3324])).

cnf(c_5190,plain,
    ( k1_funct_1(sK5,X0) = sK3
    | r2_hidden(X0,k1_relat_1(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3641,c_4889])).

cnf(c_5247,plain,
    ( k1_funct_1(sK5,X0) = sK3
    | k1_funct_1(sK5,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4129,c_5190])).

cnf(c_32,negated_conjecture,
    ( k1_funct_1(sK5,sK4) != sK3 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_5267,plain,
    ( k1_funct_1(sK5,sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5247,c_32])).

cnf(c_5542,plain,
    ( r2_hidden(k4_tarski(sK4,k1_xboole_0),sK5) = iProver_top
    | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5267,c_3641])).

cnf(c_6101,plain,
    ( sK3 = k1_xboole_0
    | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5542,c_4889])).

cnf(c_2884,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_3541,plain,
    ( k1_funct_1(sK5,sK4) != X0
    | k1_funct_1(sK5,sK4) = sK3
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_2884])).

cnf(c_3542,plain,
    ( k1_funct_1(sK5,sK4) = sK3
    | k1_funct_1(sK5,sK4) != k1_xboole_0
    | sK3 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3541])).

cnf(c_6108,plain,
    ( r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6101,c_32,c_3542,c_5267])).

cnf(c_6114,plain,
    ( sK2 = k1_xboole_0
    | sK5 = k1_xboole_0
    | r2_hidden(sK4,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3734,c_6108])).

cnf(c_40,plain,
    ( r2_hidden(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_6909,plain,
    ( sK5 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6114,c_40])).

cnf(c_6910,plain,
    ( sK2 = k1_xboole_0
    | sK5 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_6909])).

cnf(c_6925,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK4,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_6910,c_3308])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_23,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_392,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_23])).

cnf(c_393,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_392])).

cnf(c_3307,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_393])).

cnf(c_7637,plain,
    ( sK5 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_6925,c_3307])).

cnf(c_11297,plain,
    ( k1_relat_1(k1_xboole_0) = sK2
    | r2_hidden(sK3,k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6896,c_7637])).

cnf(c_11300,plain,
    ( k1_relat_1(k1_xboole_0) = sK2 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_11297,c_3307])).

cnf(c_7661,plain,
    ( r2_hidden(X0,k1_relat_1(k1_xboole_0)) != iProver_top
    | r2_hidden(k4_tarski(X0,k1_funct_1(k1_xboole_0,X0)),k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_7637,c_3641])).

cnf(c_8702,plain,
    ( r2_hidden(X0,k1_relat_1(k1_xboole_0)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7661,c_3307])).

cnf(c_11303,plain,
    ( r2_hidden(X0,sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_11300,c_8702])).

cnf(c_14853,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_3308,c_11303])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.31  % Computer   : n015.cluster.edu
% 0.12/0.31  % Model      : x86_64 x86_64
% 0.12/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.31  % Memory     : 8042.1875MB
% 0.12/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.31  % CPULimit   : 60
% 0.12/0.31  % WCLimit    : 600
% 0.12/0.31  % DateTime   : Tue Dec  1 11:04:53 EST 2020
% 0.17/0.32  % CPUTime    : 
% 0.17/0.32  % Running in FOF mode
% 3.43/0.96  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.43/0.96  
% 3.43/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.43/0.96  
% 3.43/0.96  ------  iProver source info
% 3.43/0.96  
% 3.43/0.96  git: date: 2020-06-30 10:37:57 +0100
% 3.43/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.43/0.96  git: non_committed_changes: false
% 3.43/0.96  git: last_make_outside_of_git: false
% 3.43/0.96  
% 3.43/0.96  ------ 
% 3.43/0.96  
% 3.43/0.96  ------ Input Options
% 3.43/0.96  
% 3.43/0.96  --out_options                           all
% 3.43/0.96  --tptp_safe_out                         true
% 3.43/0.96  --problem_path                          ""
% 3.43/0.96  --include_path                          ""
% 3.43/0.96  --clausifier                            res/vclausify_rel
% 3.43/0.96  --clausifier_options                    --mode clausify
% 3.43/0.96  --stdin                                 false
% 3.43/0.96  --stats_out                             all
% 3.43/0.96  
% 3.43/0.96  ------ General Options
% 3.43/0.96  
% 3.43/0.96  --fof                                   false
% 3.43/0.96  --time_out_real                         305.
% 3.43/0.96  --time_out_virtual                      -1.
% 3.43/0.96  --symbol_type_check                     false
% 3.43/0.96  --clausify_out                          false
% 3.43/0.96  --sig_cnt_out                           false
% 3.43/0.96  --trig_cnt_out                          false
% 3.43/0.96  --trig_cnt_out_tolerance                1.
% 3.43/0.96  --trig_cnt_out_sk_spl                   false
% 3.43/0.96  --abstr_cl_out                          false
% 3.43/0.96  
% 3.43/0.96  ------ Global Options
% 3.43/0.96  
% 3.43/0.96  --schedule                              default
% 3.43/0.96  --add_important_lit                     false
% 3.43/0.96  --prop_solver_per_cl                    1000
% 3.43/0.96  --min_unsat_core                        false
% 3.43/0.96  --soft_assumptions                      false
% 3.43/0.96  --soft_lemma_size                       3
% 3.43/0.96  --prop_impl_unit_size                   0
% 3.43/0.96  --prop_impl_unit                        []
% 3.43/0.96  --share_sel_clauses                     true
% 3.43/0.96  --reset_solvers                         false
% 3.43/0.96  --bc_imp_inh                            [conj_cone]
% 3.43/0.96  --conj_cone_tolerance                   3.
% 3.43/0.96  --extra_neg_conj                        none
% 3.43/0.96  --large_theory_mode                     true
% 3.43/0.96  --prolific_symb_bound                   200
% 3.43/0.96  --lt_threshold                          2000
% 3.43/0.96  --clause_weak_htbl                      true
% 3.43/0.96  --gc_record_bc_elim                     false
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing Options
% 3.43/0.96  
% 3.43/0.96  --preprocessing_flag                    true
% 3.43/0.96  --time_out_prep_mult                    0.1
% 3.43/0.96  --splitting_mode                        input
% 3.43/0.96  --splitting_grd                         true
% 3.43/0.96  --splitting_cvd                         false
% 3.43/0.96  --splitting_cvd_svl                     false
% 3.43/0.96  --splitting_nvd                         32
% 3.43/0.96  --sub_typing                            true
% 3.43/0.96  --prep_gs_sim                           true
% 3.43/0.96  --prep_unflatten                        true
% 3.43/0.96  --prep_res_sim                          true
% 3.43/0.96  --prep_upred                            true
% 3.43/0.96  --prep_sem_filter                       exhaustive
% 3.43/0.96  --prep_sem_filter_out                   false
% 3.43/0.96  --pred_elim                             true
% 3.43/0.96  --res_sim_input                         true
% 3.43/0.96  --eq_ax_congr_red                       true
% 3.43/0.96  --pure_diseq_elim                       true
% 3.43/0.96  --brand_transform                       false
% 3.43/0.96  --non_eq_to_eq                          false
% 3.43/0.96  --prep_def_merge                        true
% 3.43/0.96  --prep_def_merge_prop_impl              false
% 3.43/0.96  --prep_def_merge_mbd                    true
% 3.43/0.96  --prep_def_merge_tr_red                 false
% 3.43/0.96  --prep_def_merge_tr_cl                  false
% 3.43/0.96  --smt_preprocessing                     true
% 3.43/0.96  --smt_ac_axioms                         fast
% 3.43/0.96  --preprocessed_out                      false
% 3.43/0.96  --preprocessed_stats                    false
% 3.43/0.96  
% 3.43/0.96  ------ Abstraction refinement Options
% 3.43/0.96  
% 3.43/0.96  --abstr_ref                             []
% 3.43/0.96  --abstr_ref_prep                        false
% 3.43/0.96  --abstr_ref_until_sat                   false
% 3.43/0.96  --abstr_ref_sig_restrict                funpre
% 3.43/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 3.43/0.96  --abstr_ref_under                       []
% 3.43/0.96  
% 3.43/0.96  ------ SAT Options
% 3.43/0.96  
% 3.43/0.96  --sat_mode                              false
% 3.43/0.96  --sat_fm_restart_options                ""
% 3.43/0.96  --sat_gr_def                            false
% 3.43/0.96  --sat_epr_types                         true
% 3.43/0.96  --sat_non_cyclic_types                  false
% 3.43/0.96  --sat_finite_models                     false
% 3.43/0.96  --sat_fm_lemmas                         false
% 3.43/0.96  --sat_fm_prep                           false
% 3.43/0.96  --sat_fm_uc_incr                        true
% 3.43/0.96  --sat_out_model                         small
% 3.43/0.96  --sat_out_clauses                       false
% 3.43/0.96  
% 3.43/0.96  ------ QBF Options
% 3.43/0.96  
% 3.43/0.96  --qbf_mode                              false
% 3.43/0.96  --qbf_elim_univ                         false
% 3.43/0.96  --qbf_dom_inst                          none
% 3.43/0.96  --qbf_dom_pre_inst                      false
% 3.43/0.96  --qbf_sk_in                             false
% 3.43/0.96  --qbf_pred_elim                         true
% 3.43/0.96  --qbf_split                             512
% 3.43/0.96  
% 3.43/0.96  ------ BMC1 Options
% 3.43/0.96  
% 3.43/0.96  --bmc1_incremental                      false
% 3.43/0.96  --bmc1_axioms                           reachable_all
% 3.43/0.96  --bmc1_min_bound                        0
% 3.43/0.96  --bmc1_max_bound                        -1
% 3.43/0.96  --bmc1_max_bound_default                -1
% 3.43/0.96  --bmc1_symbol_reachability              true
% 3.43/0.96  --bmc1_property_lemmas                  false
% 3.43/0.96  --bmc1_k_induction                      false
% 3.43/0.96  --bmc1_non_equiv_states                 false
% 3.43/0.96  --bmc1_deadlock                         false
% 3.43/0.96  --bmc1_ucm                              false
% 3.43/0.96  --bmc1_add_unsat_core                   none
% 3.43/0.96  --bmc1_unsat_core_children              false
% 3.43/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 3.43/0.96  --bmc1_out_stat                         full
% 3.43/0.96  --bmc1_ground_init                      false
% 3.43/0.96  --bmc1_pre_inst_next_state              false
% 3.43/0.96  --bmc1_pre_inst_state                   false
% 3.43/0.96  --bmc1_pre_inst_reach_state             false
% 3.43/0.96  --bmc1_out_unsat_core                   false
% 3.43/0.96  --bmc1_aig_witness_out                  false
% 3.43/0.96  --bmc1_verbose                          false
% 3.43/0.96  --bmc1_dump_clauses_tptp                false
% 3.43/0.96  --bmc1_dump_unsat_core_tptp             false
% 3.43/0.96  --bmc1_dump_file                        -
% 3.43/0.96  --bmc1_ucm_expand_uc_limit              128
% 3.43/0.96  --bmc1_ucm_n_expand_iterations          6
% 3.43/0.96  --bmc1_ucm_extend_mode                  1
% 3.43/0.96  --bmc1_ucm_init_mode                    2
% 3.43/0.96  --bmc1_ucm_cone_mode                    none
% 3.43/0.96  --bmc1_ucm_reduced_relation_type        0
% 3.43/0.96  --bmc1_ucm_relax_model                  4
% 3.43/0.96  --bmc1_ucm_full_tr_after_sat            true
% 3.43/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 3.43/0.96  --bmc1_ucm_layered_model                none
% 3.43/0.96  --bmc1_ucm_max_lemma_size               10
% 3.43/0.96  
% 3.43/0.96  ------ AIG Options
% 3.43/0.96  
% 3.43/0.96  --aig_mode                              false
% 3.43/0.96  
% 3.43/0.96  ------ Instantiation Options
% 3.43/0.96  
% 3.43/0.96  --instantiation_flag                    true
% 3.43/0.96  --inst_sos_flag                         false
% 3.43/0.96  --inst_sos_phase                        true
% 3.43/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.43/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.43/0.96  --inst_lit_sel_side                     num_symb
% 3.43/0.96  --inst_solver_per_active                1400
% 3.43/0.96  --inst_solver_calls_frac                1.
% 3.43/0.96  --inst_passive_queue_type               priority_queues
% 3.43/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.43/0.96  --inst_passive_queues_freq              [25;2]
% 3.43/0.96  --inst_dismatching                      true
% 3.43/0.96  --inst_eager_unprocessed_to_passive     true
% 3.43/0.96  --inst_prop_sim_given                   true
% 3.43/0.96  --inst_prop_sim_new                     false
% 3.43/0.96  --inst_subs_new                         false
% 3.43/0.96  --inst_eq_res_simp                      false
% 3.43/0.96  --inst_subs_given                       false
% 3.43/0.96  --inst_orphan_elimination               true
% 3.43/0.96  --inst_learning_loop_flag               true
% 3.43/0.96  --inst_learning_start                   3000
% 3.43/0.96  --inst_learning_factor                  2
% 3.43/0.96  --inst_start_prop_sim_after_learn       3
% 3.43/0.96  --inst_sel_renew                        solver
% 3.43/0.96  --inst_lit_activity_flag                true
% 3.43/0.96  --inst_restr_to_given                   false
% 3.43/0.96  --inst_activity_threshold               500
% 3.43/0.96  --inst_out_proof                        true
% 3.43/0.96  
% 3.43/0.96  ------ Resolution Options
% 3.43/0.96  
% 3.43/0.96  --resolution_flag                       true
% 3.43/0.96  --res_lit_sel                           adaptive
% 3.43/0.96  --res_lit_sel_side                      none
% 3.43/0.96  --res_ordering                          kbo
% 3.43/0.96  --res_to_prop_solver                    active
% 3.43/0.96  --res_prop_simpl_new                    false
% 3.43/0.96  --res_prop_simpl_given                  true
% 3.43/0.96  --res_passive_queue_type                priority_queues
% 3.43/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.43/0.96  --res_passive_queues_freq               [15;5]
% 3.43/0.96  --res_forward_subs                      full
% 3.43/0.96  --res_backward_subs                     full
% 3.43/0.96  --res_forward_subs_resolution           true
% 3.43/0.96  --res_backward_subs_resolution          true
% 3.43/0.96  --res_orphan_elimination                true
% 3.43/0.96  --res_time_limit                        2.
% 3.43/0.96  --res_out_proof                         true
% 3.43/0.96  
% 3.43/0.96  ------ Superposition Options
% 3.43/0.96  
% 3.43/0.96  --superposition_flag                    true
% 3.43/0.96  --sup_passive_queue_type                priority_queues
% 3.43/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.43/0.96  --sup_passive_queues_freq               [8;1;4]
% 3.43/0.96  --demod_completeness_check              fast
% 3.43/0.96  --demod_use_ground                      true
% 3.43/0.96  --sup_to_prop_solver                    passive
% 3.43/0.96  --sup_prop_simpl_new                    true
% 3.43/0.96  --sup_prop_simpl_given                  true
% 3.43/0.96  --sup_fun_splitting                     false
% 3.43/0.96  --sup_smt_interval                      50000
% 3.43/0.96  
% 3.43/0.96  ------ Superposition Simplification Setup
% 3.43/0.96  
% 3.43/0.96  --sup_indices_passive                   []
% 3.43/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 3.43/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_full_bw                           [BwDemod]
% 3.43/0.96  --sup_immed_triv                        [TrivRules]
% 3.43/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.43/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_immed_bw_main                     []
% 3.43/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 3.43/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/0.96  
% 3.43/0.96  ------ Combination Options
% 3.43/0.96  
% 3.43/0.96  --comb_res_mult                         3
% 3.43/0.96  --comb_sup_mult                         2
% 3.43/0.96  --comb_inst_mult                        10
% 3.43/0.96  
% 3.43/0.96  ------ Debug Options
% 3.43/0.96  
% 3.43/0.96  --dbg_backtrace                         false
% 3.43/0.96  --dbg_dump_prop_clauses                 false
% 3.43/0.96  --dbg_dump_prop_clauses_file            -
% 3.43/0.96  --dbg_out_stat                          false
% 3.43/0.96  ------ Parsing...
% 3.43/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.43/0.96  ------ Proving...
% 3.43/0.96  ------ Problem Properties 
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  clauses                                 29
% 3.43/0.96  conjectures                             2
% 3.43/0.96  EPR                                     8
% 3.43/0.96  Horn                                    24
% 3.43/0.96  unary                                   4
% 3.43/0.96  binary                                  12
% 3.43/0.96  lits                                    77
% 3.43/0.96  lits eq                                 33
% 3.43/0.96  fd_pure                                 0
% 3.43/0.96  fd_pseudo                               0
% 3.43/0.96  fd_cond                                 0
% 3.43/0.96  fd_pseudo_cond                          4
% 3.43/0.96  AC symbols                              0
% 3.43/0.96  
% 3.43/0.96  ------ Schedule dynamic 5 is on 
% 3.43/0.96  
% 3.43/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  ------ 
% 3.43/0.96  Current options:
% 3.43/0.96  ------ 
% 3.43/0.96  
% 3.43/0.96  ------ Input Options
% 3.43/0.96  
% 3.43/0.96  --out_options                           all
% 3.43/0.96  --tptp_safe_out                         true
% 3.43/0.96  --problem_path                          ""
% 3.43/0.96  --include_path                          ""
% 3.43/0.96  --clausifier                            res/vclausify_rel
% 3.43/0.96  --clausifier_options                    --mode clausify
% 3.43/0.96  --stdin                                 false
% 3.43/0.96  --stats_out                             all
% 3.43/0.96  
% 3.43/0.96  ------ General Options
% 3.43/0.96  
% 3.43/0.96  --fof                                   false
% 3.43/0.96  --time_out_real                         305.
% 3.43/0.96  --time_out_virtual                      -1.
% 3.43/0.96  --symbol_type_check                     false
% 3.43/0.96  --clausify_out                          false
% 3.43/0.96  --sig_cnt_out                           false
% 3.43/0.96  --trig_cnt_out                          false
% 3.43/0.96  --trig_cnt_out_tolerance                1.
% 3.43/0.96  --trig_cnt_out_sk_spl                   false
% 3.43/0.96  --abstr_cl_out                          false
% 3.43/0.96  
% 3.43/0.96  ------ Global Options
% 3.43/0.96  
% 3.43/0.96  --schedule                              default
% 3.43/0.96  --add_important_lit                     false
% 3.43/0.96  --prop_solver_per_cl                    1000
% 3.43/0.96  --min_unsat_core                        false
% 3.43/0.96  --soft_assumptions                      false
% 3.43/0.96  --soft_lemma_size                       3
% 3.43/0.96  --prop_impl_unit_size                   0
% 3.43/0.96  --prop_impl_unit                        []
% 3.43/0.96  --share_sel_clauses                     true
% 3.43/0.96  --reset_solvers                         false
% 3.43/0.96  --bc_imp_inh                            [conj_cone]
% 3.43/0.96  --conj_cone_tolerance                   3.
% 3.43/0.96  --extra_neg_conj                        none
% 3.43/0.96  --large_theory_mode                     true
% 3.43/0.96  --prolific_symb_bound                   200
% 3.43/0.96  --lt_threshold                          2000
% 3.43/0.96  --clause_weak_htbl                      true
% 3.43/0.96  --gc_record_bc_elim                     false
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing Options
% 3.43/0.96  
% 3.43/0.96  --preprocessing_flag                    true
% 3.43/0.96  --time_out_prep_mult                    0.1
% 3.43/0.96  --splitting_mode                        input
% 3.43/0.96  --splitting_grd                         true
% 3.43/0.96  --splitting_cvd                         false
% 3.43/0.96  --splitting_cvd_svl                     false
% 3.43/0.96  --splitting_nvd                         32
% 3.43/0.96  --sub_typing                            true
% 3.43/0.96  --prep_gs_sim                           true
% 3.43/0.96  --prep_unflatten                        true
% 3.43/0.96  --prep_res_sim                          true
% 3.43/0.96  --prep_upred                            true
% 3.43/0.96  --prep_sem_filter                       exhaustive
% 3.43/0.96  --prep_sem_filter_out                   false
% 3.43/0.96  --pred_elim                             true
% 3.43/0.96  --res_sim_input                         true
% 3.43/0.96  --eq_ax_congr_red                       true
% 3.43/0.96  --pure_diseq_elim                       true
% 3.43/0.96  --brand_transform                       false
% 3.43/0.96  --non_eq_to_eq                          false
% 3.43/0.96  --prep_def_merge                        true
% 3.43/0.96  --prep_def_merge_prop_impl              false
% 3.43/0.96  --prep_def_merge_mbd                    true
% 3.43/0.96  --prep_def_merge_tr_red                 false
% 3.43/0.96  --prep_def_merge_tr_cl                  false
% 3.43/0.96  --smt_preprocessing                     true
% 3.43/0.96  --smt_ac_axioms                         fast
% 3.43/0.96  --preprocessed_out                      false
% 3.43/0.96  --preprocessed_stats                    false
% 3.43/0.96  
% 3.43/0.96  ------ Abstraction refinement Options
% 3.43/0.96  
% 3.43/0.96  --abstr_ref                             []
% 3.43/0.96  --abstr_ref_prep                        false
% 3.43/0.96  --abstr_ref_until_sat                   false
% 3.43/0.96  --abstr_ref_sig_restrict                funpre
% 3.43/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 3.43/0.96  --abstr_ref_under                       []
% 3.43/0.96  
% 3.43/0.96  ------ SAT Options
% 3.43/0.96  
% 3.43/0.96  --sat_mode                              false
% 3.43/0.96  --sat_fm_restart_options                ""
% 3.43/0.96  --sat_gr_def                            false
% 3.43/0.96  --sat_epr_types                         true
% 3.43/0.96  --sat_non_cyclic_types                  false
% 3.43/0.96  --sat_finite_models                     false
% 3.43/0.96  --sat_fm_lemmas                         false
% 3.43/0.96  --sat_fm_prep                           false
% 3.43/0.96  --sat_fm_uc_incr                        true
% 3.43/0.96  --sat_out_model                         small
% 3.43/0.96  --sat_out_clauses                       false
% 3.43/0.96  
% 3.43/0.96  ------ QBF Options
% 3.43/0.96  
% 3.43/0.96  --qbf_mode                              false
% 3.43/0.96  --qbf_elim_univ                         false
% 3.43/0.96  --qbf_dom_inst                          none
% 3.43/0.96  --qbf_dom_pre_inst                      false
% 3.43/0.96  --qbf_sk_in                             false
% 3.43/0.96  --qbf_pred_elim                         true
% 3.43/0.96  --qbf_split                             512
% 3.43/0.96  
% 3.43/0.96  ------ BMC1 Options
% 3.43/0.96  
% 3.43/0.96  --bmc1_incremental                      false
% 3.43/0.96  --bmc1_axioms                           reachable_all
% 3.43/0.96  --bmc1_min_bound                        0
% 3.43/0.96  --bmc1_max_bound                        -1
% 3.43/0.96  --bmc1_max_bound_default                -1
% 3.43/0.96  --bmc1_symbol_reachability              true
% 3.43/0.96  --bmc1_property_lemmas                  false
% 3.43/0.96  --bmc1_k_induction                      false
% 3.43/0.96  --bmc1_non_equiv_states                 false
% 3.43/0.96  --bmc1_deadlock                         false
% 3.43/0.96  --bmc1_ucm                              false
% 3.43/0.96  --bmc1_add_unsat_core                   none
% 3.43/0.96  --bmc1_unsat_core_children              false
% 3.43/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 3.43/0.96  --bmc1_out_stat                         full
% 3.43/0.96  --bmc1_ground_init                      false
% 3.43/0.96  --bmc1_pre_inst_next_state              false
% 3.43/0.96  --bmc1_pre_inst_state                   false
% 3.43/0.96  --bmc1_pre_inst_reach_state             false
% 3.43/0.96  --bmc1_out_unsat_core                   false
% 3.43/0.96  --bmc1_aig_witness_out                  false
% 3.43/0.96  --bmc1_verbose                          false
% 3.43/0.96  --bmc1_dump_clauses_tptp                false
% 3.43/0.96  --bmc1_dump_unsat_core_tptp             false
% 3.43/0.96  --bmc1_dump_file                        -
% 3.43/0.96  --bmc1_ucm_expand_uc_limit              128
% 3.43/0.96  --bmc1_ucm_n_expand_iterations          6
% 3.43/0.96  --bmc1_ucm_extend_mode                  1
% 3.43/0.96  --bmc1_ucm_init_mode                    2
% 3.43/0.96  --bmc1_ucm_cone_mode                    none
% 3.43/0.96  --bmc1_ucm_reduced_relation_type        0
% 3.43/0.96  --bmc1_ucm_relax_model                  4
% 3.43/0.96  --bmc1_ucm_full_tr_after_sat            true
% 3.43/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 3.43/0.96  --bmc1_ucm_layered_model                none
% 3.43/0.96  --bmc1_ucm_max_lemma_size               10
% 3.43/0.96  
% 3.43/0.96  ------ AIG Options
% 3.43/0.96  
% 3.43/0.96  --aig_mode                              false
% 3.43/0.96  
% 3.43/0.96  ------ Instantiation Options
% 3.43/0.96  
% 3.43/0.96  --instantiation_flag                    true
% 3.43/0.96  --inst_sos_flag                         false
% 3.43/0.96  --inst_sos_phase                        true
% 3.43/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.43/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.43/0.96  --inst_lit_sel_side                     none
% 3.43/0.96  --inst_solver_per_active                1400
% 3.43/0.96  --inst_solver_calls_frac                1.
% 3.43/0.96  --inst_passive_queue_type               priority_queues
% 3.43/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.43/0.96  --inst_passive_queues_freq              [25;2]
% 3.43/0.96  --inst_dismatching                      true
% 3.43/0.96  --inst_eager_unprocessed_to_passive     true
% 3.43/0.96  --inst_prop_sim_given                   true
% 3.43/0.96  --inst_prop_sim_new                     false
% 3.43/0.96  --inst_subs_new                         false
% 3.43/0.96  --inst_eq_res_simp                      false
% 3.43/0.96  --inst_subs_given                       false
% 3.43/0.96  --inst_orphan_elimination               true
% 3.43/0.96  --inst_learning_loop_flag               true
% 3.43/0.96  --inst_learning_start                   3000
% 3.43/0.96  --inst_learning_factor                  2
% 3.43/0.96  --inst_start_prop_sim_after_learn       3
% 3.43/0.96  --inst_sel_renew                        solver
% 3.43/0.96  --inst_lit_activity_flag                true
% 3.43/0.96  --inst_restr_to_given                   false
% 3.43/0.96  --inst_activity_threshold               500
% 3.43/0.96  --inst_out_proof                        true
% 3.43/0.96  
% 3.43/0.96  ------ Resolution Options
% 3.43/0.96  
% 3.43/0.96  --resolution_flag                       false
% 3.43/0.96  --res_lit_sel                           adaptive
% 3.43/0.96  --res_lit_sel_side                      none
% 3.43/0.96  --res_ordering                          kbo
% 3.43/0.96  --res_to_prop_solver                    active
% 3.43/0.96  --res_prop_simpl_new                    false
% 3.43/0.96  --res_prop_simpl_given                  true
% 3.43/0.96  --res_passive_queue_type                priority_queues
% 3.43/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.43/0.96  --res_passive_queues_freq               [15;5]
% 3.43/0.96  --res_forward_subs                      full
% 3.43/0.96  --res_backward_subs                     full
% 3.43/0.96  --res_forward_subs_resolution           true
% 3.43/0.96  --res_backward_subs_resolution          true
% 3.43/0.96  --res_orphan_elimination                true
% 3.43/0.96  --res_time_limit                        2.
% 3.43/0.96  --res_out_proof                         true
% 3.43/0.96  
% 3.43/0.96  ------ Superposition Options
% 3.43/0.96  
% 3.43/0.96  --superposition_flag                    true
% 3.43/0.96  --sup_passive_queue_type                priority_queues
% 3.43/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.43/0.96  --sup_passive_queues_freq               [8;1;4]
% 3.43/0.96  --demod_completeness_check              fast
% 3.43/0.96  --demod_use_ground                      true
% 3.43/0.96  --sup_to_prop_solver                    passive
% 3.43/0.96  --sup_prop_simpl_new                    true
% 3.43/0.96  --sup_prop_simpl_given                  true
% 3.43/0.96  --sup_fun_splitting                     false
% 3.43/0.96  --sup_smt_interval                      50000
% 3.43/0.96  
% 3.43/0.96  ------ Superposition Simplification Setup
% 3.43/0.96  
% 3.43/0.96  --sup_indices_passive                   []
% 3.43/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.43/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 3.43/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_full_bw                           [BwDemod]
% 3.43/0.96  --sup_immed_triv                        [TrivRules]
% 3.43/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.43/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_immed_bw_main                     []
% 3.43/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 3.43/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.43/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.43/0.96  
% 3.43/0.96  ------ Combination Options
% 3.43/0.96  
% 3.43/0.96  --comb_res_mult                         3
% 3.43/0.96  --comb_sup_mult                         2
% 3.43/0.96  --comb_inst_mult                        10
% 3.43/0.96  
% 3.43/0.96  ------ Debug Options
% 3.43/0.96  
% 3.43/0.96  --dbg_backtrace                         false
% 3.43/0.96  --dbg_dump_prop_clauses                 false
% 3.43/0.96  --dbg_dump_prop_clauses_file            -
% 3.43/0.96  --dbg_out_stat                          false
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  ------ Proving...
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  % SZS status Theorem for theBenchmark.p
% 3.43/0.96  
% 3.43/0.96   Resolution empty clause
% 3.43/0.96  
% 3.43/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 3.43/0.96  
% 3.43/0.96  fof(f14,conjecture,(
% 3.43/0.96    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f15,negated_conjecture,(
% 3.43/0.96    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 3.43/0.96    inference(negated_conjecture,[],[f14])).
% 3.43/0.96  
% 3.43/0.96  fof(f25,plain,(
% 3.43/0.96    ? [X0,X1,X2,X3] : ((k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)))),
% 3.43/0.96    inference(ennf_transformation,[],[f15])).
% 3.43/0.96  
% 3.43/0.96  fof(f26,plain,(
% 3.43/0.96    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3))),
% 3.43/0.96    inference(flattening,[],[f25])).
% 3.43/0.96  
% 3.43/0.96  fof(f39,plain,(
% 3.43/0.96    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (k1_funct_1(sK5,sK4) != sK3 & r2_hidden(sK4,sK2) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) & v1_funct_2(sK5,sK2,k1_tarski(sK3)) & v1_funct_1(sK5))),
% 3.43/0.96    introduced(choice_axiom,[])).
% 3.43/0.96  
% 3.43/0.96  fof(f40,plain,(
% 3.43/0.96    k1_funct_1(sK5,sK4) != sK3 & r2_hidden(sK4,sK2) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) & v1_funct_2(sK5,sK2,k1_tarski(sK3)) & v1_funct_1(sK5)),
% 3.43/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f26,f39])).
% 3.43/0.96  
% 3.43/0.96  fof(f80,plain,(
% 3.43/0.96    r2_hidden(sK4,sK2)),
% 3.43/0.96    inference(cnf_transformation,[],[f40])).
% 3.43/0.96  
% 3.43/0.96  fof(f78,plain,(
% 3.43/0.96    v1_funct_2(sK5,sK2,k1_tarski(sK3))),
% 3.43/0.96    inference(cnf_transformation,[],[f40])).
% 3.43/0.96  
% 3.43/0.96  fof(f2,axiom,(
% 3.43/0.96    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f42,plain,(
% 3.43/0.96    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f2])).
% 3.43/0.96  
% 3.43/0.96  fof(f3,axiom,(
% 3.43/0.96    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f43,plain,(
% 3.43/0.96    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f3])).
% 3.43/0.96  
% 3.43/0.96  fof(f4,axiom,(
% 3.43/0.96    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f44,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f4])).
% 3.43/0.96  
% 3.43/0.96  fof(f5,axiom,(
% 3.43/0.96    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f45,plain,(
% 3.43/0.96    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f5])).
% 3.43/0.96  
% 3.43/0.96  fof(f82,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 3.43/0.96    inference(definition_unfolding,[],[f44,f45])).
% 3.43/0.96  
% 3.43/0.96  fof(f83,plain,(
% 3.43/0.96    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 3.43/0.96    inference(definition_unfolding,[],[f43,f82])).
% 3.43/0.96  
% 3.43/0.96  fof(f84,plain,(
% 3.43/0.96    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 3.43/0.96    inference(definition_unfolding,[],[f42,f83])).
% 3.43/0.96  
% 3.43/0.96  fof(f89,plain,(
% 3.43/0.96    v1_funct_2(sK5,sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))),
% 3.43/0.96    inference(definition_unfolding,[],[f78,f84])).
% 3.43/0.96  
% 3.43/0.96  fof(f13,axiom,(
% 3.43/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f23,plain,(
% 3.43/0.96    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.43/0.96    inference(ennf_transformation,[],[f13])).
% 3.43/0.96  
% 3.43/0.96  fof(f24,plain,(
% 3.43/0.96    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.43/0.96    inference(flattening,[],[f23])).
% 3.43/0.96  
% 3.43/0.96  fof(f38,plain,(
% 3.43/0.96    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.43/0.96    inference(nnf_transformation,[],[f24])).
% 3.43/0.96  
% 3.43/0.96  fof(f71,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f38])).
% 3.43/0.96  
% 3.43/0.96  fof(f79,plain,(
% 3.43/0.96    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))),
% 3.43/0.96    inference(cnf_transformation,[],[f40])).
% 3.43/0.96  
% 3.43/0.96  fof(f88,plain,(
% 3.43/0.96    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))))),
% 3.43/0.96    inference(definition_unfolding,[],[f79,f84])).
% 3.43/0.96  
% 3.43/0.96  fof(f12,axiom,(
% 3.43/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f22,plain,(
% 3.43/0.96    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.43/0.96    inference(ennf_transformation,[],[f12])).
% 3.43/0.96  
% 3.43/0.96  fof(f70,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f22])).
% 3.43/0.96  
% 3.43/0.96  fof(f7,axiom,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> ! [X6] : (r2_hidden(X6,X5) <=> ~(X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f16,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> ! [X6] : (r2_hidden(X6,X5) <=> (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6)))),
% 3.43/0.96    inference(ennf_transformation,[],[f7])).
% 3.43/0.96  
% 3.43/0.96  fof(f27,plain,(
% 3.43/0.96    ! [X4,X3,X2,X1,X0,X5] : (sP0(X4,X3,X2,X1,X0,X5) <=> ! [X6] : (r2_hidden(X6,X5) <=> (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6)))),
% 3.43/0.96    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 3.43/0.96  
% 3.43/0.96  fof(f28,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> sP0(X4,X3,X2,X1,X0,X5))),
% 3.43/0.96    inference(definition_folding,[],[f16,f27])).
% 3.43/0.96  
% 3.43/0.96  fof(f36,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : ((k3_enumset1(X0,X1,X2,X3,X4) = X5 | ~sP0(X4,X3,X2,X1,X0,X5)) & (sP0(X4,X3,X2,X1,X0,X5) | k3_enumset1(X0,X1,X2,X3,X4) != X5))),
% 3.43/0.96    inference(nnf_transformation,[],[f28])).
% 3.43/0.96  
% 3.43/0.96  fof(f61,plain,(
% 3.43/0.96    ( ! [X4,X2,X0,X5,X3,X1] : (sP0(X4,X3,X2,X1,X0,X5) | k3_enumset1(X0,X1,X2,X3,X4) != X5) )),
% 3.43/0.96    inference(cnf_transformation,[],[f36])).
% 3.43/0.96  
% 3.43/0.96  fof(f96,plain,(
% 3.43/0.96    ( ! [X4,X2,X0,X3,X1] : (sP0(X4,X3,X2,X1,X0,k3_enumset1(X0,X1,X2,X3,X4))) )),
% 3.43/0.96    inference(equality_resolution,[],[f61])).
% 3.43/0.96  
% 3.43/0.96  fof(f31,plain,(
% 3.43/0.96    ! [X4,X3,X2,X1,X0,X5] : ((sP0(X4,X3,X2,X1,X0,X5) | ? [X6] : (((X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6) | ~r2_hidden(X6,X5)) & ((X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6) | r2_hidden(X6,X5)))) & (! [X6] : ((r2_hidden(X6,X5) | (X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)) & ((X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6) | ~r2_hidden(X6,X5))) | ~sP0(X4,X3,X2,X1,X0,X5)))),
% 3.43/0.96    inference(nnf_transformation,[],[f27])).
% 3.43/0.96  
% 3.43/0.96  fof(f32,plain,(
% 3.43/0.96    ! [X4,X3,X2,X1,X0,X5] : ((sP0(X4,X3,X2,X1,X0,X5) | ? [X6] : (((X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6) | ~r2_hidden(X6,X5)) & (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6 | r2_hidden(X6,X5)))) & (! [X6] : ((r2_hidden(X6,X5) | (X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)) & (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6 | ~r2_hidden(X6,X5))) | ~sP0(X4,X3,X2,X1,X0,X5)))),
% 3.43/0.96    inference(flattening,[],[f31])).
% 3.43/0.96  
% 3.43/0.96  fof(f33,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : ((sP0(X0,X1,X2,X3,X4,X5) | ? [X6] : (((X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6 & X4 != X6) | ~r2_hidden(X6,X5)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | X4 = X6 | r2_hidden(X6,X5)))) & (! [X7] : ((r2_hidden(X7,X5) | (X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | ~r2_hidden(X7,X5))) | ~sP0(X0,X1,X2,X3,X4,X5)))),
% 3.43/0.96    inference(rectify,[],[f32])).
% 3.43/0.96  
% 3.43/0.96  fof(f34,plain,(
% 3.43/0.96    ! [X5,X4,X3,X2,X1,X0] : (? [X6] : (((X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6 & X4 != X6) | ~r2_hidden(X6,X5)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | X4 = X6 | r2_hidden(X6,X5))) => (((sK1(X0,X1,X2,X3,X4,X5) != X0 & sK1(X0,X1,X2,X3,X4,X5) != X1 & sK1(X0,X1,X2,X3,X4,X5) != X2 & sK1(X0,X1,X2,X3,X4,X5) != X3 & sK1(X0,X1,X2,X3,X4,X5) != X4) | ~r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)) & (sK1(X0,X1,X2,X3,X4,X5) = X0 | sK1(X0,X1,X2,X3,X4,X5) = X1 | sK1(X0,X1,X2,X3,X4,X5) = X2 | sK1(X0,X1,X2,X3,X4,X5) = X3 | sK1(X0,X1,X2,X3,X4,X5) = X4 | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5))))),
% 3.43/0.96    introduced(choice_axiom,[])).
% 3.43/0.96  
% 3.43/0.96  fof(f35,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3,X4,X5] : ((sP0(X0,X1,X2,X3,X4,X5) | (((sK1(X0,X1,X2,X3,X4,X5) != X0 & sK1(X0,X1,X2,X3,X4,X5) != X1 & sK1(X0,X1,X2,X3,X4,X5) != X2 & sK1(X0,X1,X2,X3,X4,X5) != X3 & sK1(X0,X1,X2,X3,X4,X5) != X4) | ~r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)) & (sK1(X0,X1,X2,X3,X4,X5) = X0 | sK1(X0,X1,X2,X3,X4,X5) = X1 | sK1(X0,X1,X2,X3,X4,X5) = X2 | sK1(X0,X1,X2,X3,X4,X5) = X3 | sK1(X0,X1,X2,X3,X4,X5) = X4 | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)))) & (! [X7] : ((r2_hidden(X7,X5) | (X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | ~r2_hidden(X7,X5))) | ~sP0(X0,X1,X2,X3,X4,X5)))),
% 3.43/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).
% 3.43/0.96  
% 3.43/0.96  fof(f54,plain,(
% 3.43/0.96    ( ! [X4,X2,X0,X7,X5,X3,X1] : (r2_hidden(X7,X5) | X0 != X7 | ~sP0(X0,X1,X2,X3,X4,X5)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f35])).
% 3.43/0.96  
% 3.43/0.96  fof(f91,plain,(
% 3.43/0.96    ( ! [X4,X2,X7,X5,X3,X1] : (r2_hidden(X7,X5) | ~sP0(X7,X1,X2,X3,X4,X5)) )),
% 3.43/0.96    inference(equality_resolution,[],[f54])).
% 3.43/0.96  
% 3.43/0.96  fof(f75,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f38])).
% 3.43/0.96  
% 3.43/0.96  fof(f102,plain,(
% 3.43/0.96    ( ! [X2,X0] : (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,k1_xboole_0) | k1_xboole_0 = X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0)))) )),
% 3.43/0.96    inference(equality_resolution,[],[f75])).
% 3.43/0.96  
% 3.43/0.96  fof(f9,axiom,(
% 3.43/0.96    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1,X2] : ((~r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2)) & (r2_hidden(X1,k1_relat_1(X0)) => (k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)))))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f18,plain,(
% 3.43/0.96    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.43/0.96    inference(ennf_transformation,[],[f9])).
% 3.43/0.96  
% 3.43/0.96  fof(f19,plain,(
% 3.43/0.96    ! [X0] : (! [X1,X2] : (((k1_funct_1(X0,X1) = X2 <=> k1_xboole_0 = X2) | r2_hidden(X1,k1_relat_1(X0))) & ((k1_funct_1(X0,X1) = X2 <=> r2_hidden(k4_tarski(X1,X2),X0)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.43/0.96    inference(flattening,[],[f18])).
% 3.43/0.96  
% 3.43/0.96  fof(f37,plain,(
% 3.43/0.96    ! [X0] : (! [X1,X2] : ((((k1_funct_1(X0,X1) = X2 | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | k1_funct_1(X0,X1) != X2)) | r2_hidden(X1,k1_relat_1(X0))) & (((k1_funct_1(X0,X1) = X2 | ~r2_hidden(k4_tarski(X1,X2),X0)) & (r2_hidden(k4_tarski(X1,X2),X0) | k1_funct_1(X0,X1) != X2)) | ~r2_hidden(X1,k1_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.43/0.96    inference(nnf_transformation,[],[f19])).
% 3.43/0.96  
% 3.43/0.96  fof(f67,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (k1_funct_1(X0,X1) = X2 | k1_xboole_0 != X2 | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f37])).
% 3.43/0.96  
% 3.43/0.96  fof(f97,plain,(
% 3.43/0.96    ( ! [X0,X1] : (k1_xboole_0 = k1_funct_1(X0,X1) | r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.43/0.96    inference(equality_resolution,[],[f67])).
% 3.43/0.96  
% 3.43/0.96  fof(f77,plain,(
% 3.43/0.96    v1_funct_1(sK5)),
% 3.43/0.96    inference(cnf_transformation,[],[f40])).
% 3.43/0.96  
% 3.43/0.96  fof(f11,axiom,(
% 3.43/0.96    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f21,plain,(
% 3.43/0.96    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.43/0.96    inference(ennf_transformation,[],[f11])).
% 3.43/0.96  
% 3.43/0.96  fof(f69,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f21])).
% 3.43/0.96  
% 3.43/0.96  fof(f64,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(X1,X2),X0) | k1_funct_1(X0,X1) != X2 | ~r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f37])).
% 3.43/0.96  
% 3.43/0.96  fof(f99,plain,(
% 3.43/0.96    ( ! [X0,X1] : (r2_hidden(k4_tarski(X1,k1_funct_1(X0,X1)),X0) | ~r2_hidden(X1,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.43/0.96    inference(equality_resolution,[],[f64])).
% 3.43/0.96  
% 3.43/0.96  fof(f8,axiom,(
% 3.43/0.96    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f17,plain,(
% 3.43/0.96    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.43/0.96    inference(ennf_transformation,[],[f8])).
% 3.43/0.96  
% 3.43/0.96  fof(f63,plain,(
% 3.43/0.96    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f17])).
% 3.43/0.96  
% 3.43/0.96  fof(f6,axiom,(
% 3.43/0.96    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) <=> (X1 = X3 & r2_hidden(X0,X2)))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f29,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) | (X1 != X3 | ~r2_hidden(X0,X2))) & ((X1 = X3 & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))))),
% 3.43/0.96    inference(nnf_transformation,[],[f6])).
% 3.43/0.96  
% 3.43/0.96  fof(f30,plain,(
% 3.43/0.96    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3))) | X1 != X3 | ~r2_hidden(X0,X2)) & ((X1 = X3 & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))))),
% 3.43/0.96    inference(flattening,[],[f29])).
% 3.43/0.96  
% 3.43/0.96  fof(f47,plain,(
% 3.43/0.96    ( ! [X2,X0,X3,X1] : (X1 = X3 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k1_tarski(X3)))) )),
% 3.43/0.96    inference(cnf_transformation,[],[f30])).
% 3.43/0.96  
% 3.43/0.96  fof(f86,plain,(
% 3.43/0.96    ( ! [X2,X0,X3,X1] : (X1 = X3 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k3_enumset1(X3,X3,X3,X3,X3)))) )),
% 3.43/0.96    inference(definition_unfolding,[],[f47,f84])).
% 3.43/0.96  
% 3.43/0.96  fof(f81,plain,(
% 3.43/0.96    k1_funct_1(sK5,sK4) != sK3),
% 3.43/0.96    inference(cnf_transformation,[],[f40])).
% 3.43/0.96  
% 3.43/0.96  fof(f1,axiom,(
% 3.43/0.96    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f41,plain,(
% 3.43/0.96    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f1])).
% 3.43/0.96  
% 3.43/0.96  fof(f10,axiom,(
% 3.43/0.96    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 3.43/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.43/0.96  
% 3.43/0.96  fof(f20,plain,(
% 3.43/0.96    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 3.43/0.96    inference(ennf_transformation,[],[f10])).
% 3.43/0.96  
% 3.43/0.96  fof(f68,plain,(
% 3.43/0.96    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 3.43/0.96    inference(cnf_transformation,[],[f20])).
% 3.43/0.96  
% 3.43/0.96  cnf(c_33,negated_conjecture,
% 3.43/0.96      ( r2_hidden(sK4,sK2) ),
% 3.43/0.96      inference(cnf_transformation,[],[f80]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3308,plain,
% 3.43/0.96      ( r2_hidden(sK4,sK2) = iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_35,negated_conjecture,
% 3.43/0.96      ( v1_funct_2(sK5,sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)) ),
% 3.43/0.96      inference(cnf_transformation,[],[f89]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_31,plain,
% 3.43/0.96      ( ~ v1_funct_2(X0,X1,X2)
% 3.43/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.43/0.96      | k1_relset_1(X1,X2,X0) = X1
% 3.43/0.96      | k1_xboole_0 = X2 ),
% 3.43/0.96      inference(cnf_transformation,[],[f71]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_34,negated_conjecture,
% 3.43/0.96      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))) ),
% 3.43/0.96      inference(cnf_transformation,[],[f88]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_537,plain,
% 3.43/0.96      ( ~ v1_funct_2(X0,X1,X2)
% 3.43/0.96      | k1_relset_1(X1,X2,X0) = X1
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 3.43/0.96      | sK5 != X0
% 3.43/0.96      | k1_xboole_0 = X2 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_31,c_34]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_538,plain,
% 3.43/0.96      ( ~ v1_funct_2(sK5,X0,X1)
% 3.43/0.96      | k1_relset_1(X0,X1,sK5) = X0
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 3.43/0.96      | k1_xboole_0 = X1 ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_537]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_759,plain,
% 3.43/0.96      ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != X0
% 3.43/0.96      | k1_relset_1(X1,X0,sK5) = X1
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X0))
% 3.43/0.96      | sK2 != X1
% 3.43/0.96      | sK5 != sK5
% 3.43/0.96      | k1_xboole_0 = X0 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_35,c_538]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_760,plain,
% 3.43/0.96      ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = sK2
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))
% 3.43/0.96      | k1_xboole_0 = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_759]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_1769,plain,
% 3.43/0.96      ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = sK2
% 3.43/0.96      | k1_xboole_0 = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
% 3.43/0.96      inference(equality_resolution_simp,[status(thm)],[c_760]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_25,plain,
% 3.43/0.96      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.43/0.96      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.43/0.96      inference(cnf_transformation,[],[f70]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_573,plain,
% 3.43/0.96      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 3.43/0.96      | sK5 != X2 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_25,c_34]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_574,plain,
% 3.43/0.96      ( k1_relset_1(X0,X1,sK5) = k1_relat_1(sK5)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_573]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3549,plain,
% 3.43/0.96      ( k1_relset_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3),sK5) = k1_relat_1(sK5) ),
% 3.43/0.96      inference(equality_resolution,[status(thm)],[c_574]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3709,plain,
% 3.43/0.96      ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) = k1_xboole_0
% 3.43/0.96      | k1_relat_1(sK5) = sK2 ),
% 3.43/0.96      inference(demodulation,[status(thm)],[c_1769,c_3549]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_17,plain,
% 3.43/0.96      ( sP0(X0,X1,X2,X3,X4,k3_enumset1(X4,X3,X2,X1,X0)) ),
% 3.43/0.96      inference(cnf_transformation,[],[f96]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3309,plain,
% 3.43/0.96      ( sP0(X0,X1,X2,X3,X4,k3_enumset1(X4,X3,X2,X1,X0)) = iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3745,plain,
% 3.43/0.96      ( k1_relat_1(sK5) = sK2
% 3.43/0.96      | sP0(sK3,sK3,sK3,sK3,sK3,k1_xboole_0) = iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3709,c_3309]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_10,plain,
% 3.43/0.96      ( ~ sP0(X0,X1,X2,X3,X4,X5) | r2_hidden(X0,X5) ),
% 3.43/0.96      inference(cnf_transformation,[],[f91]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3316,plain,
% 3.43/0.96      ( sP0(X0,X1,X2,X3,X4,X5) != iProver_top
% 3.43/0.96      | r2_hidden(X0,X5) = iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6896,plain,
% 3.43/0.96      ( k1_relat_1(sK5) = sK2 | r2_hidden(sK3,k1_xboole_0) = iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3745,c_3316]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_27,plain,
% 3.43/0.96      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 3.43/0.96      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0)))
% 3.43/0.96      | k1_xboole_0 = X1
% 3.43/0.96      | k1_xboole_0 = X0 ),
% 3.43/0.96      inference(cnf_transformation,[],[f102]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_611,plain,
% 3.43/0.96      ( ~ v1_funct_2(X0,X1,k1_xboole_0)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0))
% 3.43/0.96      | sK5 != X0
% 3.43/0.96      | k1_xboole_0 = X0
% 3.43/0.96      | k1_xboole_0 = X1 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_27,c_34]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_612,plain,
% 3.43/0.96      ( ~ v1_funct_2(sK5,X0,k1_xboole_0)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))
% 3.43/0.96      | k1_xboole_0 = X0
% 3.43/0.96      | k1_xboole_0 = sK5 ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_611]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_770,plain,
% 3.43/0.96      ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,k1_xboole_0))
% 3.43/0.96      | sK2 != X0
% 3.43/0.96      | sK5 != sK5
% 3.43/0.96      | sK5 = k1_xboole_0
% 3.43/0.96      | k1_xboole_0 = X0 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_35,c_612]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_771,plain,
% 3.43/0.96      ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k1_xboole_0))
% 3.43/0.96      | sK5 = k1_xboole_0
% 3.43/0.96      | k1_xboole_0 = sK2 ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_770]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3713,plain,
% 3.43/0.96      ( k3_enumset1(sK3,sK3,sK3,sK3,sK3) != k1_xboole_0
% 3.43/0.96      | k1_relat_1(sK5) = sK2
% 3.43/0.96      | sK2 = k1_xboole_0
% 3.43/0.96      | sK5 = k1_xboole_0 ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3709,c_771]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3734,plain,
% 3.43/0.96      ( k1_relat_1(sK5) = sK2 | sK2 = k1_xboole_0 | sK5 = k1_xboole_0 ),
% 3.43/0.96      inference(forward_subsumption_resolution,[status(thm)],[c_3713,c_3709]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_19,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(X1))
% 3.43/0.96      | ~ v1_relat_1(X1)
% 3.43/0.96      | ~ v1_funct_1(X1)
% 3.43/0.96      | k1_funct_1(X1,X0) = k1_xboole_0 ),
% 3.43/0.96      inference(cnf_transformation,[],[f97]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_36,negated_conjecture,
% 3.43/0.96      ( v1_funct_1(sK5) ),
% 3.43/0.96      inference(cnf_transformation,[],[f77]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_436,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(X1))
% 3.43/0.96      | ~ v1_relat_1(X1)
% 3.43/0.96      | k1_funct_1(X1,X0) = k1_xboole_0
% 3.43/0.96      | sK5 != X1 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_19,c_36]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_437,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(sK5))
% 3.43/0.96      | ~ v1_relat_1(sK5)
% 3.43/0.96      | k1_funct_1(sK5,X0) = k1_xboole_0 ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_436]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3304,plain,
% 3.43/0.96      ( k1_funct_1(sK5,X0) = k1_xboole_0
% 3.43/0.96      | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
% 3.43/0.96      | v1_relat_1(sK5) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_437]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_438,plain,
% 3.43/0.96      ( k1_funct_1(sK5,X0) = k1_xboole_0
% 3.43/0.96      | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
% 3.43/0.96      | v1_relat_1(sK5) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_437]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_2883,plain,( X0 = X0 ),theory(equality) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3534,plain,
% 3.43/0.96      ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) = k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) ),
% 3.43/0.96      inference(instantiation,[status(thm)],[c_2883]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_24,plain,
% 3.43/0.96      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 3.43/0.96      inference(cnf_transformation,[],[f69]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_582,plain,
% 3.43/0.96      ( v1_relat_1(X0)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 3.43/0.96      | sK5 != X0 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_24,c_34]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_583,plain,
% 3.43/0.96      ( v1_relat_1(sK5)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_582]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3536,plain,
% 3.43/0.96      ( v1_relat_1(sK5)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) ),
% 3.43/0.96      inference(instantiation,[status(thm)],[c_583]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3537,plain,
% 3.43/0.96      ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3)))
% 3.43/0.96      | v1_relat_1(sK5) = iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_3536]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_4128,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(sK5)) = iProver_top
% 3.43/0.96      | k1_funct_1(sK5,X0) = k1_xboole_0 ),
% 3.43/0.96      inference(global_propositional_subsumption,
% 3.43/0.96                [status(thm)],
% 3.43/0.96                [c_3304,c_438,c_3534,c_3537]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_4129,plain,
% 3.43/0.96      ( k1_funct_1(sK5,X0) = k1_xboole_0
% 3.43/0.96      | r2_hidden(X0,k1_relat_1(sK5)) = iProver_top ),
% 3.43/0.96      inference(renaming,[status(thm)],[c_4128]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_22,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 3.43/0.96      | ~ v1_relat_1(X1)
% 3.43/0.96      | ~ v1_funct_1(X1) ),
% 3.43/0.96      inference(cnf_transformation,[],[f99]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_403,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(X1,X0)),X1)
% 3.43/0.96      | ~ v1_relat_1(X1)
% 3.43/0.96      | sK5 != X1 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_22,c_36]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_404,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,k1_relat_1(sK5))
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5)
% 3.43/0.96      | ~ v1_relat_1(sK5) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_403]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3306,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
% 3.43/0.96      | v1_relat_1(sK5) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_404]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_405,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
% 3.43/0.96      | v1_relat_1(sK5) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_404]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3640,plain,
% 3.43/0.96      ( r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top
% 3.43/0.96      | r2_hidden(X0,k1_relat_1(sK5)) != iProver_top ),
% 3.43/0.96      inference(global_propositional_subsumption,
% 3.43/0.96                [status(thm)],
% 3.43/0.96                [c_3306,c_405,c_3534,c_3537]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3641,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(sK5)) != iProver_top
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(sK5,X0)),sK5) = iProver_top ),
% 3.43/0.96      inference(renaming,[status(thm)],[c_3640]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_18,plain,
% 3.43/0.96      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.43/0.96      | ~ r2_hidden(X2,X0)
% 3.43/0.96      | r2_hidden(X2,X1) ),
% 3.43/0.96      inference(cnf_transformation,[],[f63]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_522,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,X1)
% 3.43/0.96      | r2_hidden(X0,X2)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X2)
% 3.43/0.96      | sK5 != X1 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_18,c_34]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_523,plain,
% 3.43/0.96      ( r2_hidden(X0,X1)
% 3.43/0.96      | ~ r2_hidden(X0,sK5)
% 3.43/0.96      | k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X1) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_522]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3303,plain,
% 3.43/0.96      ( k1_zfmisc_1(k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(X0)
% 3.43/0.96      | r2_hidden(X1,X0) = iProver_top
% 3.43/0.96      | r2_hidden(X1,sK5) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_523]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_4003,plain,
% 3.43/0.96      ( r2_hidden(X0,k2_zfmisc_1(sK2,k3_enumset1(sK3,sK3,sK3,sK3,sK3))) = iProver_top
% 3.43/0.96      | r2_hidden(X0,sK5) != iProver_top ),
% 3.43/0.96      inference(equality_resolution,[status(thm)],[c_3303]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_2,plain,
% 3.43/0.96      ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,k3_enumset1(X3,X3,X3,X3,X3)))
% 3.43/0.96      | X1 = X3 ),
% 3.43/0.96      inference(cnf_transformation,[],[f86]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3324,plain,
% 3.43/0.96      ( X0 = X1
% 3.43/0.96      | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,k3_enumset1(X1,X1,X1,X1,X1))) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_4889,plain,
% 3.43/0.96      ( sK3 = X0 | r2_hidden(k4_tarski(X1,X0),sK5) != iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_4003,c_3324]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_5190,plain,
% 3.43/0.96      ( k1_funct_1(sK5,X0) = sK3
% 3.43/0.96      | r2_hidden(X0,k1_relat_1(sK5)) != iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3641,c_4889]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_5247,plain,
% 3.43/0.96      ( k1_funct_1(sK5,X0) = sK3 | k1_funct_1(sK5,X0) = k1_xboole_0 ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_4129,c_5190]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_32,negated_conjecture,
% 3.43/0.96      ( k1_funct_1(sK5,sK4) != sK3 ),
% 3.43/0.96      inference(cnf_transformation,[],[f81]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_5267,plain,
% 3.43/0.96      ( k1_funct_1(sK5,sK4) = k1_xboole_0 ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_5247,c_32]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_5542,plain,
% 3.43/0.96      ( r2_hidden(k4_tarski(sK4,k1_xboole_0),sK5) = iProver_top
% 3.43/0.96      | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_5267,c_3641]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6101,plain,
% 3.43/0.96      ( sK3 = k1_xboole_0 | r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_5542,c_4889]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_2884,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3541,plain,
% 3.43/0.96      ( k1_funct_1(sK5,sK4) != X0 | k1_funct_1(sK5,sK4) = sK3 | sK3 != X0 ),
% 3.43/0.96      inference(instantiation,[status(thm)],[c_2884]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3542,plain,
% 3.43/0.96      ( k1_funct_1(sK5,sK4) = sK3
% 3.43/0.96      | k1_funct_1(sK5,sK4) != k1_xboole_0
% 3.43/0.96      | sK3 != k1_xboole_0 ),
% 3.43/0.96      inference(instantiation,[status(thm)],[c_3541]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6108,plain,
% 3.43/0.96      ( r2_hidden(sK4,k1_relat_1(sK5)) != iProver_top ),
% 3.43/0.96      inference(global_propositional_subsumption,
% 3.43/0.96                [status(thm)],
% 3.43/0.96                [c_6101,c_32,c_3542,c_5267]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6114,plain,
% 3.43/0.96      ( sK2 = k1_xboole_0
% 3.43/0.96      | sK5 = k1_xboole_0
% 3.43/0.96      | r2_hidden(sK4,sK2) != iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3734,c_6108]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_40,plain,
% 3.43/0.96      ( r2_hidden(sK4,sK2) = iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6909,plain,
% 3.43/0.96      ( sK5 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.43/0.96      inference(global_propositional_subsumption,[status(thm)],[c_6114,c_40]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6910,plain,
% 3.43/0.96      ( sK2 = k1_xboole_0 | sK5 = k1_xboole_0 ),
% 3.43/0.96      inference(renaming,[status(thm)],[c_6909]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_6925,plain,
% 3.43/0.96      ( sK5 = k1_xboole_0 | r2_hidden(sK4,k1_xboole_0) = iProver_top ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_6910,c_3308]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_0,plain,
% 3.43/0.96      ( r1_tarski(k1_xboole_0,X0) ),
% 3.43/0.96      inference(cnf_transformation,[],[f41]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_23,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 3.43/0.96      inference(cnf_transformation,[],[f68]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_392,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 3.43/0.96      inference(resolution_lifted,[status(thm)],[c_0,c_23]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_393,plain,
% 3.43/0.96      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 3.43/0.96      inference(unflattening,[status(thm)],[c_392]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_3307,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 3.43/0.96      inference(predicate_to_equality,[status(thm)],[c_393]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_7637,plain,
% 3.43/0.96      ( sK5 = k1_xboole_0 ),
% 3.43/0.96      inference(forward_subsumption_resolution,[status(thm)],[c_6925,c_3307]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_11297,plain,
% 3.43/0.96      ( k1_relat_1(k1_xboole_0) = sK2
% 3.43/0.96      | r2_hidden(sK3,k1_xboole_0) = iProver_top ),
% 3.43/0.96      inference(light_normalisation,[status(thm)],[c_6896,c_7637]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_11300,plain,
% 3.43/0.96      ( k1_relat_1(k1_xboole_0) = sK2 ),
% 3.43/0.96      inference(forward_subsumption_resolution,[status(thm)],[c_11297,c_3307]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_7661,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(k1_xboole_0)) != iProver_top
% 3.43/0.96      | r2_hidden(k4_tarski(X0,k1_funct_1(k1_xboole_0,X0)),k1_xboole_0) = iProver_top ),
% 3.43/0.96      inference(demodulation,[status(thm)],[c_7637,c_3641]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_8702,plain,
% 3.43/0.96      ( r2_hidden(X0,k1_relat_1(k1_xboole_0)) != iProver_top ),
% 3.43/0.96      inference(forward_subsumption_resolution,[status(thm)],[c_7661,c_3307]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_11303,plain,
% 3.43/0.96      ( r2_hidden(X0,sK2) != iProver_top ),
% 3.43/0.96      inference(demodulation,[status(thm)],[c_11300,c_8702]) ).
% 3.43/0.96  
% 3.43/0.96  cnf(c_14853,plain,
% 3.43/0.96      ( $false ),
% 3.43/0.96      inference(superposition,[status(thm)],[c_3308,c_11303]) ).
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  % SZS output end CNFRefutation for theBenchmark.p
% 3.43/0.96  
% 3.43/0.96  ------                               Statistics
% 3.43/0.96  
% 3.43/0.96  ------ General
% 3.43/0.96  
% 3.43/0.96  abstr_ref_over_cycles:                  0
% 3.43/0.96  abstr_ref_under_cycles:                 0
% 3.43/0.96  gc_basic_clause_elim:                   0
% 3.43/0.96  forced_gc_time:                         0
% 3.43/0.96  parsing_time:                           0.009
% 3.43/0.96  unif_index_cands_time:                  0.
% 3.43/0.96  unif_index_add_time:                    0.
% 3.43/0.96  orderings_time:                         0.
% 3.43/0.96  out_proof_time:                         0.008
% 3.43/0.96  total_time:                             0.431
% 3.43/0.96  num_of_symbols:                         51
% 3.43/0.96  num_of_terms:                           14967
% 3.43/0.96  
% 3.43/0.96  ------ Preprocessing
% 3.43/0.96  
% 3.43/0.96  num_of_splits:                          0
% 3.43/0.96  num_of_split_atoms:                     0
% 3.43/0.96  num_of_reused_defs:                     0
% 3.43/0.96  num_eq_ax_congr_red:                    41
% 3.43/0.96  num_of_sem_filtered_clauses:            1
% 3.43/0.96  num_of_subtypes:                        0
% 3.43/0.96  monotx_restored_types:                  0
% 3.43/0.96  sat_num_of_epr_types:                   0
% 3.43/0.96  sat_num_of_non_cyclic_types:            0
% 3.43/0.96  sat_guarded_non_collapsed_types:        0
% 3.43/0.96  num_pure_diseq_elim:                    0
% 3.43/0.96  simp_replaced_by:                       0
% 3.43/0.96  res_preprocessed:                       148
% 3.43/0.96  prep_upred:                             0
% 3.43/0.96  prep_unflattend:                        117
% 3.43/0.96  smt_new_axioms:                         0
% 3.43/0.96  pred_elim_cands:                        3
% 3.43/0.96  pred_elim:                              4
% 3.43/0.96  pred_elim_cl:                           7
% 3.43/0.96  pred_elim_cycles:                       9
% 3.43/0.96  merged_defs:                            0
% 3.43/0.96  merged_defs_ncl:                        0
% 3.43/0.96  bin_hyper_res:                          0
% 3.43/0.96  prep_cycles:                            4
% 3.43/0.96  pred_elim_time:                         0.035
% 3.43/0.96  splitting_time:                         0.
% 3.43/0.96  sem_filter_time:                        0.
% 3.43/0.96  monotx_time:                            0.001
% 3.43/0.96  subtype_inf_time:                       0.
% 3.43/0.96  
% 3.43/0.96  ------ Problem properties
% 3.43/0.96  
% 3.43/0.96  clauses:                                29
% 3.43/0.96  conjectures:                            2
% 3.43/0.96  epr:                                    8
% 3.43/0.96  horn:                                   24
% 3.43/0.96  ground:                                 5
% 3.43/0.96  unary:                                  4
% 3.43/0.96  binary:                                 12
% 3.43/0.96  lits:                                   77
% 3.43/0.96  lits_eq:                                33
% 3.43/0.96  fd_pure:                                0
% 3.43/0.96  fd_pseudo:                              0
% 3.43/0.96  fd_cond:                                0
% 3.43/0.96  fd_pseudo_cond:                         4
% 3.43/0.96  ac_symbols:                             0
% 3.43/0.96  
% 3.43/0.96  ------ Propositional Solver
% 3.43/0.96  
% 3.43/0.96  prop_solver_calls:                      27
% 3.43/0.96  prop_fast_solver_calls:                 1590
% 3.43/0.96  smt_solver_calls:                       0
% 3.43/0.96  smt_fast_solver_calls:                  0
% 3.43/0.96  prop_num_of_clauses:                    4174
% 3.43/0.96  prop_preprocess_simplified:             13028
% 3.43/0.96  prop_fo_subsumed:                       38
% 3.43/0.96  prop_solver_time:                       0.
% 3.43/0.96  smt_solver_time:                        0.
% 3.43/0.96  smt_fast_solver_time:                   0.
% 3.43/0.96  prop_fast_solver_time:                  0.
% 3.43/0.96  prop_unsat_core_time:                   0.
% 3.43/0.96  
% 3.43/0.96  ------ QBF
% 3.43/0.96  
% 3.43/0.96  qbf_q_res:                              0
% 3.43/0.96  qbf_num_tautologies:                    0
% 3.43/0.96  qbf_prep_cycles:                        0
% 3.43/0.96  
% 3.43/0.96  ------ BMC1
% 3.43/0.96  
% 3.43/0.96  bmc1_current_bound:                     -1
% 3.43/0.96  bmc1_last_solved_bound:                 -1
% 3.43/0.96  bmc1_unsat_core_size:                   -1
% 3.43/0.96  bmc1_unsat_core_parents_size:           -1
% 3.43/0.96  bmc1_merge_next_fun:                    0
% 3.43/0.96  bmc1_unsat_core_clauses_time:           0.
% 3.43/0.96  
% 3.43/0.96  ------ Instantiation
% 3.43/0.96  
% 3.43/0.96  inst_num_of_clauses:                    1226
% 3.43/0.96  inst_num_in_passive:                    430
% 3.43/0.96  inst_num_in_active:                     315
% 3.43/0.96  inst_num_in_unprocessed:                481
% 3.43/0.96  inst_num_of_loops:                      390
% 3.43/0.96  inst_num_of_learning_restarts:          0
% 3.43/0.96  inst_num_moves_active_passive:          74
% 3.43/0.96  inst_lit_activity:                      0
% 3.43/0.96  inst_lit_activity_moves:                0
% 3.43/0.96  inst_num_tautologies:                   0
% 3.43/0.96  inst_num_prop_implied:                  0
% 3.43/0.96  inst_num_existing_simplified:           0
% 3.43/0.96  inst_num_eq_res_simplified:             0
% 3.43/0.96  inst_num_child_elim:                    0
% 3.43/0.96  inst_num_of_dismatching_blockings:      935
% 3.43/0.96  inst_num_of_non_proper_insts:           1178
% 3.43/0.96  inst_num_of_duplicates:                 0
% 3.43/0.96  inst_inst_num_from_inst_to_res:         0
% 3.43/0.96  inst_dismatching_checking_time:         0.
% 3.43/0.96  
% 3.43/0.96  ------ Resolution
% 3.43/0.96  
% 3.43/0.96  res_num_of_clauses:                     0
% 3.43/0.96  res_num_in_passive:                     0
% 3.43/0.96  res_num_in_active:                      0
% 3.43/0.96  res_num_of_loops:                       152
% 3.43/0.96  res_forward_subset_subsumed:            176
% 3.43/0.96  res_backward_subset_subsumed:           0
% 3.43/0.96  res_forward_subsumed:                   0
% 3.43/0.96  res_backward_subsumed:                  0
% 3.43/0.96  res_forward_subsumption_resolution:     0
% 3.43/0.96  res_backward_subsumption_resolution:    0
% 3.43/0.96  res_clause_to_clause_subsumption:       4676
% 3.43/0.96  res_orphan_elimination:                 0
% 3.43/0.96  res_tautology_del:                      35
% 3.43/0.96  res_num_eq_res_simplified:              1
% 3.43/0.96  res_num_sel_changes:                    0
% 3.43/0.96  res_moves_from_active_to_pass:          0
% 3.43/0.96  
% 3.43/0.96  ------ Superposition
% 3.43/0.96  
% 3.43/0.96  sup_time_total:                         0.
% 3.43/0.96  sup_time_generating:                    0.
% 3.43/0.96  sup_time_sim_full:                      0.
% 3.43/0.96  sup_time_sim_immed:                     0.
% 3.43/0.96  
% 3.43/0.96  sup_num_of_clauses:                     95
% 3.43/0.96  sup_num_in_active:                      40
% 3.43/0.96  sup_num_in_passive:                     55
% 3.43/0.96  sup_num_of_loops:                       76
% 3.43/0.96  sup_fw_superposition:                   88
% 3.43/0.96  sup_bw_superposition:                   152
% 3.43/0.96  sup_immediate_simplified:               126
% 3.43/0.96  sup_given_eliminated:                   0
% 3.43/0.96  comparisons_done:                       0
% 3.43/0.96  comparisons_avoided:                    6
% 3.43/0.96  
% 3.43/0.96  ------ Simplifications
% 3.43/0.96  
% 3.43/0.96  
% 3.43/0.96  sim_fw_subset_subsumed:                 35
% 3.43/0.96  sim_bw_subset_subsumed:                 17
% 3.43/0.96  sim_fw_subsumed:                        81
% 3.43/0.96  sim_bw_subsumed:                        11
% 3.43/0.96  sim_fw_subsumption_res:                 6
% 3.43/0.96  sim_bw_subsumption_res:                 0
% 3.43/0.96  sim_tautology_del:                      2
% 3.43/0.96  sim_eq_tautology_del:                   15
% 3.43/0.96  sim_eq_res_simp:                        0
% 3.43/0.96  sim_fw_demodulated:                     2
% 3.43/0.96  sim_bw_demodulated:                     35
% 3.43/0.96  sim_light_normalised:                   7
% 3.43/0.96  sim_joinable_taut:                      0
% 3.43/0.96  sim_joinable_simp:                      0
% 3.43/0.96  sim_ac_normalised:                      0
% 3.43/0.96  sim_smt_subsumption:                    0
% 3.43/0.96  
%------------------------------------------------------------------------------
