%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:04:49 EST 2020

% Result     : Theorem 2.70s
% Output     : CNFRefutation 2.70s
% Verified   : 
% Statistics : Number of formulae       :  119 ( 368 expanded)
%              Number of clauses        :   57 (  98 expanded)
%              Number of leaves         :   16 (  81 expanded)
%              Depth                    :   21
%              Number of atoms          :  419 (1240 expanded)
%              Number of equality atoms :  204 ( 457 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
     => ( k1_xboole_0 != X1
       => r2_hidden(k1_funct_1(X2,X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
          & v1_funct_2(X2,k1_tarski(X0),X1)
          & v1_funct_1(X2) )
       => ( k1_xboole_0 != X1
         => r2_hidden(k1_funct_1(X2,X0),X1) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f25,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f26,plain,(
    ? [X0,X1,X2] :
      ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
      & k1_xboole_0 != X1
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
      & v1_funct_2(X2,k1_tarski(X0),X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f25])).

fof(f38,plain,
    ( ? [X0,X1,X2] :
        ( ~ r2_hidden(k1_funct_1(X2,X0),X1)
        & k1_xboole_0 != X1
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1)))
        & v1_funct_2(X2,k1_tarski(X0),X1)
        & v1_funct_1(X2) )
   => ( ~ r2_hidden(k1_funct_1(sK4,sK2),sK3)
      & k1_xboole_0 != sK3
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3)))
      & v1_funct_2(sK4,k1_tarski(sK2),sK3)
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ~ r2_hidden(k1_funct_1(sK4,sK2),sK3)
    & k1_xboole_0 != sK3
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3)))
    & v1_funct_2(sK4,k1_tarski(sK2),sK3)
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f38])).

fof(f68,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3))) ),
    inference(cnf_transformation,[],[f39])).

fof(f3,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f71,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f52,f53])).

fof(f72,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f51,f71])).

fof(f81,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))) ),
    inference(definition_unfolding,[],[f68,f72])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r2_hidden(X0,k1_relat_1(X1))
       => r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f18])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f66,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f39])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f27])).

fof(f29,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f28,f29])).

fof(f40,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f67,plain,(
    v1_funct_2(sK4,k1_tarski(sK2),sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f82,plain,(
    v1_funct_2(sK4,k2_enumset1(sK2,sK2,sK2,sK2),sK3) ),
    inference(definition_unfolding,[],[f67,f72])).

fof(f11,axiom,(
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
    inference(ennf_transformation,[],[f11])).

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

fof(f37,plain,(
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

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f69,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f39])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f70,plain,(
    ~ r2_hidden(k1_funct_1(sK4,sK2),sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(flattening,[],[f31])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(rectify,[],[f32])).

fof(f34,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ( ( X2 != X4
              & X1 != X4
              & X0 != X4 )
            | ~ r2_hidden(X4,X3) )
          & ( X2 = X4
            | X1 = X4
            | X0 = X4
            | r2_hidden(X4,X3) ) )
     => ( ( ( sK1(X0,X1,X2,X3) != X2
            & sK1(X0,X1,X2,X3) != X1
            & sK1(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
        & ( sK1(X0,X1,X2,X3) = X2
          | sK1(X0,X1,X2,X3) = X1
          | sK1(X0,X1,X2,X3) = X0
          | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK1(X0,X1,X2,X3) != X2
              & sK1(X0,X1,X2,X3) != X1
              & sK1(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
          & ( sK1(X0,X1,X2,X3) = X2
            | sK1(X0,X1,X2,X3) = X1
            | sK1(X0,X1,X2,X3) = X0
            | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).

fof(f44,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f79,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k2_enumset1(X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f44,f53])).

fof(f87,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k2_enumset1(X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f79])).

fof(f88,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k2_enumset1(X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f87])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_298,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_27])).

cnf(c_299,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
    | ~ v1_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_298])).

cnf(c_339,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X3),k2_relat_1(sK4))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_299])).

cnf(c_340,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ r2_hidden(X2,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X2),k2_relat_1(sK4)) ),
    inference(unflattening,[status(thm)],[c_339])).

cnf(c_530,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK4 != sK4 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_340])).

cnf(c_710,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2)) ),
    inference(equality_resolution_simp,[status(thm)],[c_530])).

cnf(c_847,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK4))
    | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_710])).

cnf(c_1137,plain,
    ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4)) = iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_847])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1149,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2414,plain,
    ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
    | r1_tarski(k2_relat_1(sK4),X1) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_1137,c_1149])).

cnf(c_848,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_710])).

cnf(c_872,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_848])).

cnf(c_846,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_710])).

cnf(c_1138,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_846])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK4,k2_enumset1(sK2,sK2,sK2,sK2),sK3) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_420,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | k1_relset_1(X1,X2,X0) = X1
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_25])).

cnf(c_421,plain,
    ( ~ v1_funct_2(sK4,X0,X1)
    | k1_relset_1(X0,X1,sK4) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_420])).

cnf(c_643,plain,
    ( k2_enumset1(sK2,sK2,sK2,sK2) != X0
    | k1_relset_1(X0,X1,sK4) = X0
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != X1
    | sK4 != sK4
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_421])).

cnf(c_644,plain,
    ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
    | k1_xboole_0 = sK3 ),
    inference(unflattening,[status(thm)],[c_643])).

cnf(c_24,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_645,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
    | k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_644,c_24])).

cnf(c_646,plain,
    ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
    inference(renaming,[status(thm)],[c_645])).

cnf(c_709,plain,
    ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_646])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_456,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_25])).

cnf(c_457,plain,
    ( k1_relset_1(X0,X1,sK4) = k1_relat_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_456])).

cnf(c_1308,plain,
    ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k1_relat_1(sK4) ),
    inference(equality_resolution,[status(thm)],[c_457])).

cnf(c_1385,plain,
    ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_relat_1(sK4) ),
    inference(light_normalisation,[status(thm)],[c_709,c_1308])).

cnf(c_1816,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1138,c_1385])).

cnf(c_1822,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1816])).

cnf(c_3058,plain,
    ( r1_tarski(k2_relat_1(sK4),X1) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
    | r2_hidden(X0,k1_relat_1(sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2414,c_872,c_1822])).

cnf(c_3059,plain,
    ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
    | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
    | r1_tarski(k2_relat_1(sK4),X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_3058])).

cnf(c_23,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(sK4,sK2),sK3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1140,plain,
    ( r2_hidden(k1_funct_1(sK4,sK2),sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_3069,plain,
    ( r2_hidden(sK2,k1_relat_1(sK4)) != iProver_top
    | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3059,c_1140])).

cnf(c_9,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1142,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1480,plain,
    ( r2_hidden(sK2,k1_relat_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1385,c_1142])).

cnf(c_12,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v5_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_318,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X3),X4)
    | ~ v1_relat_1(X3)
    | X0 != X3
    | X2 != X4 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_15])).

cnf(c_319,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_318])).

cnf(c_323,plain,
    ( r1_tarski(k2_relat_1(X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_319,c_14])).

cnf(c_324,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2) ),
    inference(renaming,[status(thm)],[c_323])).

cnf(c_408,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X2,X1))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_324,c_25])).

cnf(c_409,plain,
    ( r1_tarski(k2_relat_1(sK4),X0)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
    inference(unflattening,[status(thm)],[c_408])).

cnf(c_1288,plain,
    ( r1_tarski(k2_relat_1(sK4),sK3)
    | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
    inference(instantiation,[status(thm)],[c_409])).

cnf(c_1289,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
    | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1288])).

cnf(c_850,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1287,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
    inference(instantiation,[status(thm)],[c_850])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3069,c_1480,c_1289,c_1287])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 18:58:39 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.70/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.70/0.99  
% 2.70/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.70/0.99  
% 2.70/0.99  ------  iProver source info
% 2.70/0.99  
% 2.70/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.70/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.70/0.99  git: non_committed_changes: false
% 2.70/0.99  git: last_make_outside_of_git: false
% 2.70/0.99  
% 2.70/0.99  ------ 
% 2.70/0.99  
% 2.70/0.99  ------ Input Options
% 2.70/0.99  
% 2.70/0.99  --out_options                           all
% 2.70/0.99  --tptp_safe_out                         true
% 2.70/0.99  --problem_path                          ""
% 2.70/0.99  --include_path                          ""
% 2.70/0.99  --clausifier                            res/vclausify_rel
% 2.70/0.99  --clausifier_options                    --mode clausify
% 2.70/0.99  --stdin                                 false
% 2.70/0.99  --stats_out                             all
% 2.70/0.99  
% 2.70/0.99  ------ General Options
% 2.70/0.99  
% 2.70/0.99  --fof                                   false
% 2.70/0.99  --time_out_real                         305.
% 2.70/0.99  --time_out_virtual                      -1.
% 2.70/0.99  --symbol_type_check                     false
% 2.70/0.99  --clausify_out                          false
% 2.70/0.99  --sig_cnt_out                           false
% 2.70/0.99  --trig_cnt_out                          false
% 2.70/0.99  --trig_cnt_out_tolerance                1.
% 2.70/0.99  --trig_cnt_out_sk_spl                   false
% 2.70/0.99  --abstr_cl_out                          false
% 2.70/0.99  
% 2.70/0.99  ------ Global Options
% 2.70/0.99  
% 2.70/0.99  --schedule                              default
% 2.70/0.99  --add_important_lit                     false
% 2.70/0.99  --prop_solver_per_cl                    1000
% 2.70/0.99  --min_unsat_core                        false
% 2.70/0.99  --soft_assumptions                      false
% 2.70/0.99  --soft_lemma_size                       3
% 2.70/0.99  --prop_impl_unit_size                   0
% 2.70/0.99  --prop_impl_unit                        []
% 2.70/0.99  --share_sel_clauses                     true
% 2.70/0.99  --reset_solvers                         false
% 2.70/0.99  --bc_imp_inh                            [conj_cone]
% 2.70/0.99  --conj_cone_tolerance                   3.
% 2.70/0.99  --extra_neg_conj                        none
% 2.70/0.99  --large_theory_mode                     true
% 2.70/0.99  --prolific_symb_bound                   200
% 2.70/0.99  --lt_threshold                          2000
% 2.70/0.99  --clause_weak_htbl                      true
% 2.70/0.99  --gc_record_bc_elim                     false
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing Options
% 2.70/0.99  
% 2.70/0.99  --preprocessing_flag                    true
% 2.70/0.99  --time_out_prep_mult                    0.1
% 2.70/0.99  --splitting_mode                        input
% 2.70/0.99  --splitting_grd                         true
% 2.70/0.99  --splitting_cvd                         false
% 2.70/0.99  --splitting_cvd_svl                     false
% 2.70/0.99  --splitting_nvd                         32
% 2.70/0.99  --sub_typing                            true
% 2.70/0.99  --prep_gs_sim                           true
% 2.70/0.99  --prep_unflatten                        true
% 2.70/0.99  --prep_res_sim                          true
% 2.70/0.99  --prep_upred                            true
% 2.70/0.99  --prep_sem_filter                       exhaustive
% 2.70/0.99  --prep_sem_filter_out                   false
% 2.70/0.99  --pred_elim                             true
% 2.70/0.99  --res_sim_input                         true
% 2.70/0.99  --eq_ax_congr_red                       true
% 2.70/0.99  --pure_diseq_elim                       true
% 2.70/0.99  --brand_transform                       false
% 2.70/0.99  --non_eq_to_eq                          false
% 2.70/0.99  --prep_def_merge                        true
% 2.70/0.99  --prep_def_merge_prop_impl              false
% 2.70/0.99  --prep_def_merge_mbd                    true
% 2.70/0.99  --prep_def_merge_tr_red                 false
% 2.70/0.99  --prep_def_merge_tr_cl                  false
% 2.70/0.99  --smt_preprocessing                     true
% 2.70/0.99  --smt_ac_axioms                         fast
% 2.70/0.99  --preprocessed_out                      false
% 2.70/0.99  --preprocessed_stats                    false
% 2.70/0.99  
% 2.70/0.99  ------ Abstraction refinement Options
% 2.70/0.99  
% 2.70/0.99  --abstr_ref                             []
% 2.70/0.99  --abstr_ref_prep                        false
% 2.70/0.99  --abstr_ref_until_sat                   false
% 2.70/0.99  --abstr_ref_sig_restrict                funpre
% 2.70/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.70/0.99  --abstr_ref_under                       []
% 2.70/0.99  
% 2.70/0.99  ------ SAT Options
% 2.70/0.99  
% 2.70/0.99  --sat_mode                              false
% 2.70/0.99  --sat_fm_restart_options                ""
% 2.70/0.99  --sat_gr_def                            false
% 2.70/0.99  --sat_epr_types                         true
% 2.70/0.99  --sat_non_cyclic_types                  false
% 2.70/0.99  --sat_finite_models                     false
% 2.70/0.99  --sat_fm_lemmas                         false
% 2.70/0.99  --sat_fm_prep                           false
% 2.70/0.99  --sat_fm_uc_incr                        true
% 2.70/0.99  --sat_out_model                         small
% 2.70/0.99  --sat_out_clauses                       false
% 2.70/0.99  
% 2.70/0.99  ------ QBF Options
% 2.70/0.99  
% 2.70/0.99  --qbf_mode                              false
% 2.70/0.99  --qbf_elim_univ                         false
% 2.70/0.99  --qbf_dom_inst                          none
% 2.70/0.99  --qbf_dom_pre_inst                      false
% 2.70/0.99  --qbf_sk_in                             false
% 2.70/0.99  --qbf_pred_elim                         true
% 2.70/0.99  --qbf_split                             512
% 2.70/0.99  
% 2.70/0.99  ------ BMC1 Options
% 2.70/0.99  
% 2.70/0.99  --bmc1_incremental                      false
% 2.70/0.99  --bmc1_axioms                           reachable_all
% 2.70/0.99  --bmc1_min_bound                        0
% 2.70/0.99  --bmc1_max_bound                        -1
% 2.70/0.99  --bmc1_max_bound_default                -1
% 2.70/0.99  --bmc1_symbol_reachability              true
% 2.70/0.99  --bmc1_property_lemmas                  false
% 2.70/0.99  --bmc1_k_induction                      false
% 2.70/0.99  --bmc1_non_equiv_states                 false
% 2.70/0.99  --bmc1_deadlock                         false
% 2.70/0.99  --bmc1_ucm                              false
% 2.70/0.99  --bmc1_add_unsat_core                   none
% 2.70/0.99  --bmc1_unsat_core_children              false
% 2.70/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.70/0.99  --bmc1_out_stat                         full
% 2.70/0.99  --bmc1_ground_init                      false
% 2.70/0.99  --bmc1_pre_inst_next_state              false
% 2.70/0.99  --bmc1_pre_inst_state                   false
% 2.70/0.99  --bmc1_pre_inst_reach_state             false
% 2.70/0.99  --bmc1_out_unsat_core                   false
% 2.70/0.99  --bmc1_aig_witness_out                  false
% 2.70/0.99  --bmc1_verbose                          false
% 2.70/0.99  --bmc1_dump_clauses_tptp                false
% 2.70/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.70/0.99  --bmc1_dump_file                        -
% 2.70/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.70/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.70/0.99  --bmc1_ucm_extend_mode                  1
% 2.70/0.99  --bmc1_ucm_init_mode                    2
% 2.70/0.99  --bmc1_ucm_cone_mode                    none
% 2.70/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.70/0.99  --bmc1_ucm_relax_model                  4
% 2.70/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.70/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.70/0.99  --bmc1_ucm_layered_model                none
% 2.70/0.99  --bmc1_ucm_max_lemma_size               10
% 2.70/0.99  
% 2.70/0.99  ------ AIG Options
% 2.70/0.99  
% 2.70/0.99  --aig_mode                              false
% 2.70/0.99  
% 2.70/0.99  ------ Instantiation Options
% 2.70/0.99  
% 2.70/0.99  --instantiation_flag                    true
% 2.70/0.99  --inst_sos_flag                         false
% 2.70/0.99  --inst_sos_phase                        true
% 2.70/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.70/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.70/0.99  --inst_lit_sel_side                     num_symb
% 2.70/0.99  --inst_solver_per_active                1400
% 2.70/0.99  --inst_solver_calls_frac                1.
% 2.70/0.99  --inst_passive_queue_type               priority_queues
% 2.70/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.70/0.99  --inst_passive_queues_freq              [25;2]
% 2.70/0.99  --inst_dismatching                      true
% 2.70/0.99  --inst_eager_unprocessed_to_passive     true
% 2.70/0.99  --inst_prop_sim_given                   true
% 2.70/0.99  --inst_prop_sim_new                     false
% 2.70/0.99  --inst_subs_new                         false
% 2.70/0.99  --inst_eq_res_simp                      false
% 2.70/0.99  --inst_subs_given                       false
% 2.70/0.99  --inst_orphan_elimination               true
% 2.70/0.99  --inst_learning_loop_flag               true
% 2.70/0.99  --inst_learning_start                   3000
% 2.70/0.99  --inst_learning_factor                  2
% 2.70/0.99  --inst_start_prop_sim_after_learn       3
% 2.70/0.99  --inst_sel_renew                        solver
% 2.70/0.99  --inst_lit_activity_flag                true
% 2.70/0.99  --inst_restr_to_given                   false
% 2.70/0.99  --inst_activity_threshold               500
% 2.70/0.99  --inst_out_proof                        true
% 2.70/0.99  
% 2.70/0.99  ------ Resolution Options
% 2.70/0.99  
% 2.70/0.99  --resolution_flag                       true
% 2.70/0.99  --res_lit_sel                           adaptive
% 2.70/0.99  --res_lit_sel_side                      none
% 2.70/0.99  --res_ordering                          kbo
% 2.70/0.99  --res_to_prop_solver                    active
% 2.70/0.99  --res_prop_simpl_new                    false
% 2.70/0.99  --res_prop_simpl_given                  true
% 2.70/0.99  --res_passive_queue_type                priority_queues
% 2.70/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.70/0.99  --res_passive_queues_freq               [15;5]
% 2.70/0.99  --res_forward_subs                      full
% 2.70/0.99  --res_backward_subs                     full
% 2.70/0.99  --res_forward_subs_resolution           true
% 2.70/0.99  --res_backward_subs_resolution          true
% 2.70/0.99  --res_orphan_elimination                true
% 2.70/0.99  --res_time_limit                        2.
% 2.70/0.99  --res_out_proof                         true
% 2.70/0.99  
% 2.70/0.99  ------ Superposition Options
% 2.70/0.99  
% 2.70/0.99  --superposition_flag                    true
% 2.70/0.99  --sup_passive_queue_type                priority_queues
% 2.70/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.70/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.70/0.99  --demod_completeness_check              fast
% 2.70/0.99  --demod_use_ground                      true
% 2.70/0.99  --sup_to_prop_solver                    passive
% 2.70/0.99  --sup_prop_simpl_new                    true
% 2.70/0.99  --sup_prop_simpl_given                  true
% 2.70/0.99  --sup_fun_splitting                     false
% 2.70/0.99  --sup_smt_interval                      50000
% 2.70/0.99  
% 2.70/0.99  ------ Superposition Simplification Setup
% 2.70/0.99  
% 2.70/0.99  --sup_indices_passive                   []
% 2.70/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.70/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_full_bw                           [BwDemod]
% 2.70/0.99  --sup_immed_triv                        [TrivRules]
% 2.70/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.70/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_immed_bw_main                     []
% 2.70/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.70/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.70/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.70/0.99  
% 2.70/0.99  ------ Combination Options
% 2.70/0.99  
% 2.70/0.99  --comb_res_mult                         3
% 2.70/0.99  --comb_sup_mult                         2
% 2.70/0.99  --comb_inst_mult                        10
% 2.70/0.99  
% 2.70/0.99  ------ Debug Options
% 2.70/0.99  
% 2.70/0.99  --dbg_backtrace                         false
% 2.70/0.99  --dbg_dump_prop_clauses                 false
% 2.70/0.99  --dbg_dump_prop_clauses_file            -
% 2.70/0.99  --dbg_out_stat                          false
% 2.70/0.99  ------ Parsing...
% 2.70/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.70/0.99  ------ Proving...
% 2.70/0.99  ------ Problem Properties 
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  clauses                                 21
% 2.70/0.99  conjectures                             2
% 2.70/0.99  EPR                                     3
% 2.70/0.99  Horn                                    16
% 2.70/0.99  unary                                   6
% 2.70/0.99  binary                                  6
% 2.70/0.99  lits                                    49
% 2.70/0.99  lits eq                                 26
% 2.70/0.99  fd_pure                                 0
% 2.70/0.99  fd_pseudo                               0
% 2.70/0.99  fd_cond                                 0
% 2.70/0.99  fd_pseudo_cond                          4
% 2.70/0.99  AC symbols                              0
% 2.70/0.99  
% 2.70/0.99  ------ Schedule dynamic 5 is on 
% 2.70/0.99  
% 2.70/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  ------ 
% 2.70/0.99  Current options:
% 2.70/0.99  ------ 
% 2.70/0.99  
% 2.70/0.99  ------ Input Options
% 2.70/0.99  
% 2.70/0.99  --out_options                           all
% 2.70/0.99  --tptp_safe_out                         true
% 2.70/0.99  --problem_path                          ""
% 2.70/0.99  --include_path                          ""
% 2.70/0.99  --clausifier                            res/vclausify_rel
% 2.70/0.99  --clausifier_options                    --mode clausify
% 2.70/0.99  --stdin                                 false
% 2.70/0.99  --stats_out                             all
% 2.70/0.99  
% 2.70/0.99  ------ General Options
% 2.70/0.99  
% 2.70/0.99  --fof                                   false
% 2.70/0.99  --time_out_real                         305.
% 2.70/0.99  --time_out_virtual                      -1.
% 2.70/0.99  --symbol_type_check                     false
% 2.70/0.99  --clausify_out                          false
% 2.70/0.99  --sig_cnt_out                           false
% 2.70/0.99  --trig_cnt_out                          false
% 2.70/0.99  --trig_cnt_out_tolerance                1.
% 2.70/0.99  --trig_cnt_out_sk_spl                   false
% 2.70/0.99  --abstr_cl_out                          false
% 2.70/0.99  
% 2.70/0.99  ------ Global Options
% 2.70/0.99  
% 2.70/0.99  --schedule                              default
% 2.70/0.99  --add_important_lit                     false
% 2.70/0.99  --prop_solver_per_cl                    1000
% 2.70/0.99  --min_unsat_core                        false
% 2.70/0.99  --soft_assumptions                      false
% 2.70/0.99  --soft_lemma_size                       3
% 2.70/0.99  --prop_impl_unit_size                   0
% 2.70/0.99  --prop_impl_unit                        []
% 2.70/0.99  --share_sel_clauses                     true
% 2.70/0.99  --reset_solvers                         false
% 2.70/0.99  --bc_imp_inh                            [conj_cone]
% 2.70/0.99  --conj_cone_tolerance                   3.
% 2.70/0.99  --extra_neg_conj                        none
% 2.70/0.99  --large_theory_mode                     true
% 2.70/0.99  --prolific_symb_bound                   200
% 2.70/0.99  --lt_threshold                          2000
% 2.70/0.99  --clause_weak_htbl                      true
% 2.70/0.99  --gc_record_bc_elim                     false
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing Options
% 2.70/0.99  
% 2.70/0.99  --preprocessing_flag                    true
% 2.70/0.99  --time_out_prep_mult                    0.1
% 2.70/0.99  --splitting_mode                        input
% 2.70/0.99  --splitting_grd                         true
% 2.70/0.99  --splitting_cvd                         false
% 2.70/0.99  --splitting_cvd_svl                     false
% 2.70/0.99  --splitting_nvd                         32
% 2.70/0.99  --sub_typing                            true
% 2.70/0.99  --prep_gs_sim                           true
% 2.70/0.99  --prep_unflatten                        true
% 2.70/0.99  --prep_res_sim                          true
% 2.70/0.99  --prep_upred                            true
% 2.70/0.99  --prep_sem_filter                       exhaustive
% 2.70/0.99  --prep_sem_filter_out                   false
% 2.70/0.99  --pred_elim                             true
% 2.70/0.99  --res_sim_input                         true
% 2.70/0.99  --eq_ax_congr_red                       true
% 2.70/0.99  --pure_diseq_elim                       true
% 2.70/0.99  --brand_transform                       false
% 2.70/0.99  --non_eq_to_eq                          false
% 2.70/0.99  --prep_def_merge                        true
% 2.70/0.99  --prep_def_merge_prop_impl              false
% 2.70/0.99  --prep_def_merge_mbd                    true
% 2.70/0.99  --prep_def_merge_tr_red                 false
% 2.70/0.99  --prep_def_merge_tr_cl                  false
% 2.70/0.99  --smt_preprocessing                     true
% 2.70/0.99  --smt_ac_axioms                         fast
% 2.70/0.99  --preprocessed_out                      false
% 2.70/0.99  --preprocessed_stats                    false
% 2.70/0.99  
% 2.70/0.99  ------ Abstraction refinement Options
% 2.70/0.99  
% 2.70/0.99  --abstr_ref                             []
% 2.70/0.99  --abstr_ref_prep                        false
% 2.70/0.99  --abstr_ref_until_sat                   false
% 2.70/0.99  --abstr_ref_sig_restrict                funpre
% 2.70/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.70/0.99  --abstr_ref_under                       []
% 2.70/0.99  
% 2.70/0.99  ------ SAT Options
% 2.70/0.99  
% 2.70/0.99  --sat_mode                              false
% 2.70/0.99  --sat_fm_restart_options                ""
% 2.70/0.99  --sat_gr_def                            false
% 2.70/0.99  --sat_epr_types                         true
% 2.70/0.99  --sat_non_cyclic_types                  false
% 2.70/0.99  --sat_finite_models                     false
% 2.70/0.99  --sat_fm_lemmas                         false
% 2.70/0.99  --sat_fm_prep                           false
% 2.70/0.99  --sat_fm_uc_incr                        true
% 2.70/0.99  --sat_out_model                         small
% 2.70/0.99  --sat_out_clauses                       false
% 2.70/0.99  
% 2.70/0.99  ------ QBF Options
% 2.70/0.99  
% 2.70/0.99  --qbf_mode                              false
% 2.70/0.99  --qbf_elim_univ                         false
% 2.70/0.99  --qbf_dom_inst                          none
% 2.70/0.99  --qbf_dom_pre_inst                      false
% 2.70/0.99  --qbf_sk_in                             false
% 2.70/0.99  --qbf_pred_elim                         true
% 2.70/0.99  --qbf_split                             512
% 2.70/0.99  
% 2.70/0.99  ------ BMC1 Options
% 2.70/0.99  
% 2.70/0.99  --bmc1_incremental                      false
% 2.70/0.99  --bmc1_axioms                           reachable_all
% 2.70/0.99  --bmc1_min_bound                        0
% 2.70/0.99  --bmc1_max_bound                        -1
% 2.70/0.99  --bmc1_max_bound_default                -1
% 2.70/0.99  --bmc1_symbol_reachability              true
% 2.70/0.99  --bmc1_property_lemmas                  false
% 2.70/0.99  --bmc1_k_induction                      false
% 2.70/0.99  --bmc1_non_equiv_states                 false
% 2.70/0.99  --bmc1_deadlock                         false
% 2.70/0.99  --bmc1_ucm                              false
% 2.70/0.99  --bmc1_add_unsat_core                   none
% 2.70/0.99  --bmc1_unsat_core_children              false
% 2.70/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.70/0.99  --bmc1_out_stat                         full
% 2.70/0.99  --bmc1_ground_init                      false
% 2.70/0.99  --bmc1_pre_inst_next_state              false
% 2.70/0.99  --bmc1_pre_inst_state                   false
% 2.70/0.99  --bmc1_pre_inst_reach_state             false
% 2.70/0.99  --bmc1_out_unsat_core                   false
% 2.70/0.99  --bmc1_aig_witness_out                  false
% 2.70/0.99  --bmc1_verbose                          false
% 2.70/0.99  --bmc1_dump_clauses_tptp                false
% 2.70/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.70/0.99  --bmc1_dump_file                        -
% 2.70/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.70/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.70/0.99  --bmc1_ucm_extend_mode                  1
% 2.70/0.99  --bmc1_ucm_init_mode                    2
% 2.70/0.99  --bmc1_ucm_cone_mode                    none
% 2.70/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.70/0.99  --bmc1_ucm_relax_model                  4
% 2.70/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.70/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.70/0.99  --bmc1_ucm_layered_model                none
% 2.70/0.99  --bmc1_ucm_max_lemma_size               10
% 2.70/0.99  
% 2.70/0.99  ------ AIG Options
% 2.70/0.99  
% 2.70/0.99  --aig_mode                              false
% 2.70/0.99  
% 2.70/0.99  ------ Instantiation Options
% 2.70/0.99  
% 2.70/0.99  --instantiation_flag                    true
% 2.70/0.99  --inst_sos_flag                         false
% 2.70/0.99  --inst_sos_phase                        true
% 2.70/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.70/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.70/0.99  --inst_lit_sel_side                     none
% 2.70/0.99  --inst_solver_per_active                1400
% 2.70/0.99  --inst_solver_calls_frac                1.
% 2.70/0.99  --inst_passive_queue_type               priority_queues
% 2.70/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.70/0.99  --inst_passive_queues_freq              [25;2]
% 2.70/0.99  --inst_dismatching                      true
% 2.70/0.99  --inst_eager_unprocessed_to_passive     true
% 2.70/0.99  --inst_prop_sim_given                   true
% 2.70/0.99  --inst_prop_sim_new                     false
% 2.70/0.99  --inst_subs_new                         false
% 2.70/0.99  --inst_eq_res_simp                      false
% 2.70/0.99  --inst_subs_given                       false
% 2.70/0.99  --inst_orphan_elimination               true
% 2.70/0.99  --inst_learning_loop_flag               true
% 2.70/0.99  --inst_learning_start                   3000
% 2.70/0.99  --inst_learning_factor                  2
% 2.70/0.99  --inst_start_prop_sim_after_learn       3
% 2.70/0.99  --inst_sel_renew                        solver
% 2.70/0.99  --inst_lit_activity_flag                true
% 2.70/0.99  --inst_restr_to_given                   false
% 2.70/0.99  --inst_activity_threshold               500
% 2.70/0.99  --inst_out_proof                        true
% 2.70/0.99  
% 2.70/0.99  ------ Resolution Options
% 2.70/0.99  
% 2.70/0.99  --resolution_flag                       false
% 2.70/0.99  --res_lit_sel                           adaptive
% 2.70/0.99  --res_lit_sel_side                      none
% 2.70/0.99  --res_ordering                          kbo
% 2.70/0.99  --res_to_prop_solver                    active
% 2.70/0.99  --res_prop_simpl_new                    false
% 2.70/0.99  --res_prop_simpl_given                  true
% 2.70/0.99  --res_passive_queue_type                priority_queues
% 2.70/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.70/0.99  --res_passive_queues_freq               [15;5]
% 2.70/0.99  --res_forward_subs                      full
% 2.70/0.99  --res_backward_subs                     full
% 2.70/0.99  --res_forward_subs_resolution           true
% 2.70/0.99  --res_backward_subs_resolution          true
% 2.70/0.99  --res_orphan_elimination                true
% 2.70/0.99  --res_time_limit                        2.
% 2.70/0.99  --res_out_proof                         true
% 2.70/0.99  
% 2.70/0.99  ------ Superposition Options
% 2.70/0.99  
% 2.70/0.99  --superposition_flag                    true
% 2.70/0.99  --sup_passive_queue_type                priority_queues
% 2.70/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.70/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.70/0.99  --demod_completeness_check              fast
% 2.70/0.99  --demod_use_ground                      true
% 2.70/0.99  --sup_to_prop_solver                    passive
% 2.70/0.99  --sup_prop_simpl_new                    true
% 2.70/0.99  --sup_prop_simpl_given                  true
% 2.70/0.99  --sup_fun_splitting                     false
% 2.70/0.99  --sup_smt_interval                      50000
% 2.70/0.99  
% 2.70/0.99  ------ Superposition Simplification Setup
% 2.70/0.99  
% 2.70/0.99  --sup_indices_passive                   []
% 2.70/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.70/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.70/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_full_bw                           [BwDemod]
% 2.70/0.99  --sup_immed_triv                        [TrivRules]
% 2.70/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.70/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_immed_bw_main                     []
% 2.70/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.70/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.70/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.70/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.70/0.99  
% 2.70/0.99  ------ Combination Options
% 2.70/0.99  
% 2.70/0.99  --comb_res_mult                         3
% 2.70/0.99  --comb_sup_mult                         2
% 2.70/0.99  --comb_inst_mult                        10
% 2.70/0.99  
% 2.70/0.99  ------ Debug Options
% 2.70/0.99  
% 2.70/0.99  --dbg_backtrace                         false
% 2.70/0.99  --dbg_dump_prop_clauses                 false
% 2.70/0.99  --dbg_dump_prop_clauses_file            -
% 2.70/0.99  --dbg_out_stat                          false
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  ------ Proving...
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  % SZS status Theorem for theBenchmark.p
% 2.70/0.99  
% 2.70/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.70/0.99  
% 2.70/0.99  fof(f12,conjecture,(
% 2.70/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => r2_hidden(k1_funct_1(X2,X0),X1)))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f13,negated_conjecture,(
% 2.70/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (k1_xboole_0 != X1 => r2_hidden(k1_funct_1(X2,X0),X1)))),
% 2.70/0.99    inference(negated_conjecture,[],[f12])).
% 2.70/0.99  
% 2.70/0.99  fof(f25,plain,(
% 2.70/0.99    ? [X0,X1,X2] : ((~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)))),
% 2.70/0.99    inference(ennf_transformation,[],[f13])).
% 2.70/0.99  
% 2.70/0.99  fof(f26,plain,(
% 2.70/0.99    ? [X0,X1,X2] : (~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2))),
% 2.70/0.99    inference(flattening,[],[f25])).
% 2.70/0.99  
% 2.70/0.99  fof(f38,plain,(
% 2.70/0.99    ? [X0,X1,X2] : (~r2_hidden(k1_funct_1(X2,X0),X1) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X0),X1))) & v1_funct_2(X2,k1_tarski(X0),X1) & v1_funct_1(X2)) => (~r2_hidden(k1_funct_1(sK4,sK2),sK3) & k1_xboole_0 != sK3 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3))) & v1_funct_2(sK4,k1_tarski(sK2),sK3) & v1_funct_1(sK4))),
% 2.70/0.99    introduced(choice_axiom,[])).
% 2.70/0.99  
% 2.70/0.99  fof(f39,plain,(
% 2.70/0.99    ~r2_hidden(k1_funct_1(sK4,sK2),sK3) & k1_xboole_0 != sK3 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3))) & v1_funct_2(sK4,k1_tarski(sK2),sK3) & v1_funct_1(sK4)),
% 2.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f38])).
% 2.70/0.99  
% 2.70/0.99  fof(f68,plain,(
% 2.70/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(sK2),sK3)))),
% 2.70/0.99    inference(cnf_transformation,[],[f39])).
% 2.70/0.99  
% 2.70/0.99  fof(f3,axiom,(
% 2.70/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f51,plain,(
% 2.70/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f3])).
% 2.70/0.99  
% 2.70/0.99  fof(f4,axiom,(
% 2.70/0.99    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f52,plain,(
% 2.70/0.99    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f4])).
% 2.70/0.99  
% 2.70/0.99  fof(f5,axiom,(
% 2.70/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f53,plain,(
% 2.70/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f5])).
% 2.70/0.99  
% 2.70/0.99  fof(f71,plain,(
% 2.70/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 2.70/0.99    inference(definition_unfolding,[],[f52,f53])).
% 2.70/0.99  
% 2.70/0.99  fof(f72,plain,(
% 2.70/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 2.70/0.99    inference(definition_unfolding,[],[f51,f71])).
% 2.70/0.99  
% 2.70/0.99  fof(f81,plain,(
% 2.70/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)))),
% 2.70/0.99    inference(definition_unfolding,[],[f68,f72])).
% 2.70/0.99  
% 2.70/0.99  fof(f8,axiom,(
% 2.70/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f20,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(ennf_transformation,[],[f8])).
% 2.70/0.99  
% 2.70/0.99  fof(f57,plain,(
% 2.70/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.70/0.99    inference(cnf_transformation,[],[f20])).
% 2.70/0.99  
% 2.70/0.99  fof(f7,axiom,(
% 2.70/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r2_hidden(X0,k1_relat_1(X1)) => r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f18,plain,(
% 2.70/0.99    ! [X0,X1] : ((r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.70/0.99    inference(ennf_transformation,[],[f7])).
% 2.70/0.99  
% 2.70/0.99  fof(f19,plain,(
% 2.70/0.99    ! [X0,X1] : (r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.70/0.99    inference(flattening,[],[f18])).
% 2.70/0.99  
% 2.70/0.99  fof(f56,plain,(
% 2.70/0.99    ( ! [X0,X1] : (r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f19])).
% 2.70/0.99  
% 2.70/0.99  fof(f66,plain,(
% 2.70/0.99    v1_funct_1(sK4)),
% 2.70/0.99    inference(cnf_transformation,[],[f39])).
% 2.70/0.99  
% 2.70/0.99  fof(f1,axiom,(
% 2.70/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f15,plain,(
% 2.70/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.70/0.99    inference(ennf_transformation,[],[f1])).
% 2.70/0.99  
% 2.70/0.99  fof(f27,plain,(
% 2.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.70/0.99    inference(nnf_transformation,[],[f15])).
% 2.70/0.99  
% 2.70/0.99  fof(f28,plain,(
% 2.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.70/0.99    inference(rectify,[],[f27])).
% 2.70/0.99  
% 2.70/0.99  fof(f29,plain,(
% 2.70/0.99    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.70/0.99    introduced(choice_axiom,[])).
% 2.70/0.99  
% 2.70/0.99  fof(f30,plain,(
% 2.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f28,f29])).
% 2.70/0.99  
% 2.70/0.99  fof(f40,plain,(
% 2.70/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f30])).
% 2.70/0.99  
% 2.70/0.99  fof(f67,plain,(
% 2.70/0.99    v1_funct_2(sK4,k1_tarski(sK2),sK3)),
% 2.70/0.99    inference(cnf_transformation,[],[f39])).
% 2.70/0.99  
% 2.70/0.99  fof(f82,plain,(
% 2.70/0.99    v1_funct_2(sK4,k2_enumset1(sK2,sK2,sK2,sK2),sK3)),
% 2.70/0.99    inference(definition_unfolding,[],[f67,f72])).
% 2.70/0.99  
% 2.70/0.99  fof(f11,axiom,(
% 2.70/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f23,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(ennf_transformation,[],[f11])).
% 2.70/0.99  
% 2.70/0.99  fof(f24,plain,(
% 2.70/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(flattening,[],[f23])).
% 2.70/0.99  
% 2.70/0.99  fof(f37,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(nnf_transformation,[],[f24])).
% 2.70/0.99  
% 2.70/0.99  fof(f60,plain,(
% 2.70/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.70/0.99    inference(cnf_transformation,[],[f37])).
% 2.70/0.99  
% 2.70/0.99  fof(f69,plain,(
% 2.70/0.99    k1_xboole_0 != sK3),
% 2.70/0.99    inference(cnf_transformation,[],[f39])).
% 2.70/0.99  
% 2.70/0.99  fof(f10,axiom,(
% 2.70/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f22,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(ennf_transformation,[],[f10])).
% 2.70/0.99  
% 2.70/0.99  fof(f59,plain,(
% 2.70/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.70/0.99    inference(cnf_transformation,[],[f22])).
% 2.70/0.99  
% 2.70/0.99  fof(f70,plain,(
% 2.70/0.99    ~r2_hidden(k1_funct_1(sK4,sK2),sK3)),
% 2.70/0.99    inference(cnf_transformation,[],[f39])).
% 2.70/0.99  
% 2.70/0.99  fof(f2,axiom,(
% 2.70/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f16,plain,(
% 2.70/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 2.70/0.99    inference(ennf_transformation,[],[f2])).
% 2.70/0.99  
% 2.70/0.99  fof(f31,plain,(
% 2.70/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.70/0.99    inference(nnf_transformation,[],[f16])).
% 2.70/0.99  
% 2.70/0.99  fof(f32,plain,(
% 2.70/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.70/0.99    inference(flattening,[],[f31])).
% 2.70/0.99  
% 2.70/0.99  fof(f33,plain,(
% 2.70/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.70/0.99    inference(rectify,[],[f32])).
% 2.70/0.99  
% 2.70/0.99  fof(f34,plain,(
% 2.70/0.99    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 2.70/0.99    introduced(choice_axiom,[])).
% 2.70/0.99  
% 2.70/0.99  fof(f35,plain,(
% 2.70/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f33,f34])).
% 2.70/0.99  
% 2.70/0.99  fof(f44,plain,(
% 2.70/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 2.70/0.99    inference(cnf_transformation,[],[f35])).
% 2.70/0.99  
% 2.70/0.99  fof(f79,plain,(
% 2.70/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k2_enumset1(X0,X0,X1,X2) != X3) )),
% 2.70/0.99    inference(definition_unfolding,[],[f44,f53])).
% 2.70/0.99  
% 2.70/0.99  fof(f87,plain,(
% 2.70/0.99    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k2_enumset1(X5,X5,X1,X2) != X3) )),
% 2.70/0.99    inference(equality_resolution,[],[f79])).
% 2.70/0.99  
% 2.70/0.99  fof(f88,plain,(
% 2.70/0.99    ( ! [X2,X5,X1] : (r2_hidden(X5,k2_enumset1(X5,X5,X1,X2))) )),
% 2.70/0.99    inference(equality_resolution,[],[f87])).
% 2.70/0.99  
% 2.70/0.99  fof(f6,axiom,(
% 2.70/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f17,plain,(
% 2.70/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.70/0.99    inference(ennf_transformation,[],[f6])).
% 2.70/0.99  
% 2.70/0.99  fof(f36,plain,(
% 2.70/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.70/0.99    inference(nnf_transformation,[],[f17])).
% 2.70/0.99  
% 2.70/0.99  fof(f54,plain,(
% 2.70/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.70/0.99    inference(cnf_transformation,[],[f36])).
% 2.70/0.99  
% 2.70/0.99  fof(f9,axiom,(
% 2.70/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.70/0.99  
% 2.70/0.99  fof(f14,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 2.70/0.99    inference(pure_predicate_removal,[],[f9])).
% 2.70/0.99  
% 2.70/0.99  fof(f21,plain,(
% 2.70/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.70/0.99    inference(ennf_transformation,[],[f14])).
% 2.70/0.99  
% 2.70/0.99  fof(f58,plain,(
% 2.70/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.70/0.99    inference(cnf_transformation,[],[f21])).
% 2.70/0.99  
% 2.70/0.99  cnf(c_25,negated_conjecture,
% 2.70/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))) ),
% 2.70/0.99      inference(cnf_transformation,[],[f81]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_14,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | v1_relat_1(X0) ),
% 2.70/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_13,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.70/0.99      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 2.70/0.99      | ~ v1_funct_1(X1)
% 2.70/0.99      | ~ v1_relat_1(X1) ),
% 2.70/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_27,negated_conjecture,
% 2.70/0.99      ( v1_funct_1(sK4) ),
% 2.70/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_298,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.70/0.99      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 2.70/0.99      | ~ v1_relat_1(X1)
% 2.70/0.99      | sK4 != X1 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_27]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_299,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
% 2.70/0.99      | ~ v1_relat_1(sK4) ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_298]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_339,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | ~ r2_hidden(X3,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X3),k2_relat_1(sK4))
% 2.70/0.99      | sK4 != X0 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_299]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_340,plain,
% 2.70/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.70/0.99      | ~ r2_hidden(X2,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X2),k2_relat_1(sK4)) ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_339]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_530,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 2.70/0.99      | sK4 != sK4 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_340]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_710,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2)) ),
% 2.70/0.99      inference(equality_resolution_simp,[status(thm)],[c_530]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_847,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,k1_relat_1(sK4))
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4))
% 2.70/0.99      | ~ sP1_iProver_split ),
% 2.70/0.99      inference(splitting,
% 2.70/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 2.70/0.99                [c_710]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1137,plain,
% 2.70/0.99      ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),k2_relat_1(sK4)) = iProver_top
% 2.70/0.99      | sP1_iProver_split != iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_847]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_2,plain,
% 2.70/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 2.70/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1149,plain,
% 2.70/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.70/0.99      | r2_hidden(X0,X2) = iProver_top
% 2.70/0.99      | r1_tarski(X1,X2) != iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_2414,plain,
% 2.70/0.99      ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
% 2.70/0.99      | r1_tarski(k2_relat_1(sK4),X1) != iProver_top
% 2.70/0.99      | sP1_iProver_split != iProver_top ),
% 2.70/0.99      inference(superposition,[status(thm)],[c_1137,c_1149]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_848,plain,
% 2.70/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 2.70/0.99      inference(splitting,
% 2.70/0.99                [splitting(split),new_symbols(definition,[])],
% 2.70/0.99                [c_710]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_872,plain,
% 2.70/0.99      ( sP1_iProver_split = iProver_top
% 2.70/0.99      | sP0_iProver_split = iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_848]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_846,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | ~ sP0_iProver_split ),
% 2.70/0.99      inference(splitting,
% 2.70/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.70/0.99                [c_710]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1138,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | sP0_iProver_split != iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_846]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_26,negated_conjecture,
% 2.70/0.99      ( v1_funct_2(sK4,k2_enumset1(sK2,sK2,sK2,sK2),sK3) ),
% 2.70/0.99      inference(cnf_transformation,[],[f82]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_22,plain,
% 2.70/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.70/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.70/0.99      | k1_xboole_0 = X2 ),
% 2.70/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_420,plain,
% 2.70/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.70/0.99      | k1_relset_1(X1,X2,X0) = X1
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 2.70/0.99      | sK4 != X0
% 2.70/0.99      | k1_xboole_0 = X2 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_22,c_25]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_421,plain,
% 2.70/0.99      ( ~ v1_funct_2(sK4,X0,X1)
% 2.70/0.99      | k1_relset_1(X0,X1,sK4) = X0
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | k1_xboole_0 = X1 ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_420]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_643,plain,
% 2.70/0.99      ( k2_enumset1(sK2,sK2,sK2,sK2) != X0
% 2.70/0.99      | k1_relset_1(X0,X1,sK4) = X0
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | sK3 != X1
% 2.70/0.99      | sK4 != sK4
% 2.70/0.99      | k1_xboole_0 = X1 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_421]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_644,plain,
% 2.70/0.99      ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
% 2.70/0.99      | k1_xboole_0 = sK3 ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_643]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_24,negated_conjecture,
% 2.70/0.99      ( k1_xboole_0 != sK3 ),
% 2.70/0.99      inference(cnf_transformation,[],[f69]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_645,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
% 2.70/0.99      | k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2) ),
% 2.70/0.99      inference(global_propositional_subsumption,
% 2.70/0.99                [status(thm)],
% 2.70/0.99                [c_644,c_24]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_646,plain,
% 2.70/0.99      ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
% 2.70/0.99      inference(renaming,[status(thm)],[c_645]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_709,plain,
% 2.70/0.99      ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k2_enumset1(sK2,sK2,sK2,sK2) ),
% 2.70/0.99      inference(equality_resolution_simp,[status(thm)],[c_646]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_16,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.70/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_456,plain,
% 2.70/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | sK4 != X2 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_25]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_457,plain,
% 2.70/0.99      ( k1_relset_1(X0,X1,sK4) = k1_relat_1(sK4)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_456]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1308,plain,
% 2.70/0.99      ( k1_relset_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3,sK4) = k1_relat_1(sK4) ),
% 2.70/0.99      inference(equality_resolution,[status(thm)],[c_457]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1385,plain,
% 2.70/0.99      ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_relat_1(sK4) ),
% 2.70/0.99      inference(light_normalisation,[status(thm)],[c_709,c_1308]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1816,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK4),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 2.70/0.99      | sP0_iProver_split != iProver_top ),
% 2.70/0.99      inference(light_normalisation,[status(thm)],[c_1138,c_1385]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1822,plain,
% 2.70/0.99      ( sP0_iProver_split != iProver_top ),
% 2.70/0.99      inference(equality_resolution,[status(thm)],[c_1816]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_3058,plain,
% 2.70/0.99      ( r1_tarski(k2_relat_1(sK4),X1) != iProver_top
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
% 2.70/0.99      | r2_hidden(X0,k1_relat_1(sK4)) != iProver_top ),
% 2.70/0.99      inference(global_propositional_subsumption,
% 2.70/0.99                [status(thm)],
% 2.70/0.99                [c_2414,c_872,c_1822]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_3059,plain,
% 2.70/0.99      ( r2_hidden(X0,k1_relat_1(sK4)) != iProver_top
% 2.70/0.99      | r2_hidden(k1_funct_1(sK4,X0),X1) = iProver_top
% 2.70/0.99      | r1_tarski(k2_relat_1(sK4),X1) != iProver_top ),
% 2.70/0.99      inference(renaming,[status(thm)],[c_3058]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_23,negated_conjecture,
% 2.70/0.99      ( ~ r2_hidden(k1_funct_1(sK4,sK2),sK3) ),
% 2.70/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1140,plain,
% 2.70/0.99      ( r2_hidden(k1_funct_1(sK4,sK2),sK3) != iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_3069,plain,
% 2.70/0.99      ( r2_hidden(sK2,k1_relat_1(sK4)) != iProver_top
% 2.70/0.99      | r1_tarski(k2_relat_1(sK4),sK3) != iProver_top ),
% 2.70/0.99      inference(superposition,[status(thm)],[c_3059,c_1140]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_9,plain,
% 2.70/0.99      ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) ),
% 2.70/0.99      inference(cnf_transformation,[],[f88]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1142,plain,
% 2.70/0.99      ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) = iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1480,plain,
% 2.70/0.99      ( r2_hidden(sK2,k1_relat_1(sK4)) = iProver_top ),
% 2.70/0.99      inference(superposition,[status(thm)],[c_1385,c_1142]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_12,plain,
% 2.70/0.99      ( ~ v5_relat_1(X0,X1)
% 2.70/0.99      | r1_tarski(k2_relat_1(X0),X1)
% 2.70/0.99      | ~ v1_relat_1(X0) ),
% 2.70/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_15,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | v5_relat_1(X0,X2) ),
% 2.70/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_318,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | r1_tarski(k2_relat_1(X3),X4)
% 2.70/0.99      | ~ v1_relat_1(X3)
% 2.70/0.99      | X0 != X3
% 2.70/0.99      | X2 != X4 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_15]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_319,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | r1_tarski(k2_relat_1(X0),X2)
% 2.70/0.99      | ~ v1_relat_1(X0) ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_318]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_323,plain,
% 2.70/0.99      ( r1_tarski(k2_relat_1(X0),X2)
% 2.70/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.70/0.99      inference(global_propositional_subsumption,
% 2.70/0.99                [status(thm)],
% 2.70/0.99                [c_319,c_14]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_324,plain,
% 2.70/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.70/0.99      | r1_tarski(k2_relat_1(X0),X2) ),
% 2.70/0.99      inference(renaming,[status(thm)],[c_323]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_408,plain,
% 2.70/0.99      ( r1_tarski(k2_relat_1(X0),X1)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X2,X1))
% 2.70/0.99      | sK4 != X0 ),
% 2.70/0.99      inference(resolution_lifted,[status(thm)],[c_324,c_25]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_409,plain,
% 2.70/0.99      ( r1_tarski(k2_relat_1(sK4),X0)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(X1,X0)) ),
% 2.70/0.99      inference(unflattening,[status(thm)],[c_408]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1288,plain,
% 2.70/0.99      ( r1_tarski(k2_relat_1(sK4),sK3)
% 2.70/0.99      | k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
% 2.70/0.99      inference(instantiation,[status(thm)],[c_409]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1289,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) != k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3))
% 2.70/0.99      | r1_tarski(k2_relat_1(sK4),sK3) = iProver_top ),
% 2.70/0.99      inference(predicate_to_equality,[status(thm)],[c_1288]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_850,plain,( X0 = X0 ),theory(equality) ).
% 2.70/0.99  
% 2.70/0.99  cnf(c_1287,plain,
% 2.70/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) = k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(sK2,sK2,sK2,sK2),sK3)) ),
% 2.70/0.99      inference(instantiation,[status(thm)],[c_850]) ).
% 2.70/0.99  
% 2.70/0.99  cnf(contradiction,plain,
% 2.70/0.99      ( $false ),
% 2.70/0.99      inference(minisat,[status(thm)],[c_3069,c_1480,c_1289,c_1287]) ).
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.70/0.99  
% 2.70/0.99  ------                               Statistics
% 2.70/0.99  
% 2.70/0.99  ------ General
% 2.70/0.99  
% 2.70/0.99  abstr_ref_over_cycles:                  0
% 2.70/0.99  abstr_ref_under_cycles:                 0
% 2.70/0.99  gc_basic_clause_elim:                   0
% 2.70/0.99  forced_gc_time:                         0
% 2.70/0.99  parsing_time:                           0.009
% 2.70/0.99  unif_index_cands_time:                  0.
% 2.70/0.99  unif_index_add_time:                    0.
% 2.70/0.99  orderings_time:                         0.
% 2.70/0.99  out_proof_time:                         0.009
% 2.70/0.99  total_time:                             0.129
% 2.70/0.99  num_of_symbols:                         53
% 2.70/0.99  num_of_terms:                           3677
% 2.70/0.99  
% 2.70/0.99  ------ Preprocessing
% 2.70/0.99  
% 2.70/0.99  num_of_splits:                          2
% 2.70/0.99  num_of_split_atoms:                     2
% 2.70/0.99  num_of_reused_defs:                     0
% 2.70/0.99  num_eq_ax_congr_red:                    28
% 2.70/0.99  num_of_sem_filtered_clauses:            1
% 2.70/0.99  num_of_subtypes:                        0
% 2.70/0.99  monotx_restored_types:                  0
% 2.70/0.99  sat_num_of_epr_types:                   0
% 2.70/0.99  sat_num_of_non_cyclic_types:            0
% 2.70/0.99  sat_guarded_non_collapsed_types:        0
% 2.70/0.99  num_pure_diseq_elim:                    0
% 2.70/0.99  simp_replaced_by:                       0
% 2.70/0.99  res_preprocessed:                       112
% 2.70/0.99  prep_upred:                             0
% 2.70/0.99  prep_unflattend:                        46
% 2.70/0.99  smt_new_axioms:                         0
% 2.70/0.99  pred_elim_cands:                        2
% 2.70/0.99  pred_elim:                              5
% 2.70/0.99  pred_elim_cl:                           9
% 2.70/0.99  pred_elim_cycles:                       9
% 2.70/0.99  merged_defs:                            0
% 2.70/0.99  merged_defs_ncl:                        0
% 2.70/0.99  bin_hyper_res:                          0
% 2.70/0.99  prep_cycles:                            4
% 2.70/0.99  pred_elim_time:                         0.009
% 2.70/0.99  splitting_time:                         0.
% 2.70/0.99  sem_filter_time:                        0.
% 2.70/0.99  monotx_time:                            0.
% 2.70/0.99  subtype_inf_time:                       0.
% 2.70/0.99  
% 2.70/0.99  ------ Problem properties
% 2.70/0.99  
% 2.70/0.99  clauses:                                21
% 2.70/0.99  conjectures:                            2
% 2.70/0.99  epr:                                    3
% 2.70/0.99  horn:                                   16
% 2.70/0.99  ground:                                 6
% 2.70/0.99  unary:                                  6
% 2.70/0.99  binary:                                 6
% 2.70/0.99  lits:                                   49
% 2.70/0.99  lits_eq:                                26
% 2.70/0.99  fd_pure:                                0
% 2.70/0.99  fd_pseudo:                              0
% 2.70/0.99  fd_cond:                                0
% 2.70/0.99  fd_pseudo_cond:                         4
% 2.70/0.99  ac_symbols:                             0
% 2.70/0.99  
% 2.70/0.99  ------ Propositional Solver
% 2.70/0.99  
% 2.70/0.99  prop_solver_calls:                      27
% 2.70/0.99  prop_fast_solver_calls:                 703
% 2.70/0.99  smt_solver_calls:                       0
% 2.70/0.99  smt_fast_solver_calls:                  0
% 2.70/0.99  prop_num_of_clauses:                    1090
% 2.70/0.99  prop_preprocess_simplified:             4604
% 2.70/0.99  prop_fo_subsumed:                       7
% 2.70/0.99  prop_solver_time:                       0.
% 2.70/0.99  smt_solver_time:                        0.
% 2.70/0.99  smt_fast_solver_time:                   0.
% 2.70/0.99  prop_fast_solver_time:                  0.
% 2.70/0.99  prop_unsat_core_time:                   0.
% 2.70/0.99  
% 2.70/0.99  ------ QBF
% 2.70/0.99  
% 2.70/0.99  qbf_q_res:                              0
% 2.70/0.99  qbf_num_tautologies:                    0
% 2.70/0.99  qbf_prep_cycles:                        0
% 2.70/0.99  
% 2.70/0.99  ------ BMC1
% 2.70/0.99  
% 2.70/0.99  bmc1_current_bound:                     -1
% 2.70/0.99  bmc1_last_solved_bound:                 -1
% 2.70/0.99  bmc1_unsat_core_size:                   -1
% 2.70/0.99  bmc1_unsat_core_parents_size:           -1
% 2.70/0.99  bmc1_merge_next_fun:                    0
% 2.70/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.70/0.99  
% 2.70/0.99  ------ Instantiation
% 2.70/0.99  
% 2.70/0.99  inst_num_of_clauses:                    331
% 2.70/0.99  inst_num_in_passive:                    147
% 2.70/0.99  inst_num_in_active:                     128
% 2.70/0.99  inst_num_in_unprocessed:                56
% 2.70/0.99  inst_num_of_loops:                      140
% 2.70/0.99  inst_num_of_learning_restarts:          0
% 2.70/0.99  inst_num_moves_active_passive:          10
% 2.70/0.99  inst_lit_activity:                      0
% 2.70/0.99  inst_lit_activity_moves:                0
% 2.70/0.99  inst_num_tautologies:                   0
% 2.70/0.99  inst_num_prop_implied:                  0
% 2.70/0.99  inst_num_existing_simplified:           0
% 2.70/0.99  inst_num_eq_res_simplified:             0
% 2.70/0.99  inst_num_child_elim:                    0
% 2.70/0.99  inst_num_of_dismatching_blockings:      35
% 2.70/0.99  inst_num_of_non_proper_insts:           290
% 2.70/0.99  inst_num_of_duplicates:                 0
% 2.70/0.99  inst_inst_num_from_inst_to_res:         0
% 2.70/0.99  inst_dismatching_checking_time:         0.
% 2.70/0.99  
% 2.70/0.99  ------ Resolution
% 2.70/0.99  
% 2.70/0.99  res_num_of_clauses:                     0
% 2.70/0.99  res_num_in_passive:                     0
% 2.70/0.99  res_num_in_active:                      0
% 2.70/0.99  res_num_of_loops:                       116
% 2.70/0.99  res_forward_subset_subsumed:            66
% 2.70/0.99  res_backward_subset_subsumed:           0
% 2.70/0.99  res_forward_subsumed:                   0
% 2.70/0.99  res_backward_subsumed:                  0
% 2.70/0.99  res_forward_subsumption_resolution:     0
% 2.70/0.99  res_backward_subsumption_resolution:    0
% 2.70/0.99  res_clause_to_clause_subsumption:       96
% 2.70/0.99  res_orphan_elimination:                 0
% 2.70/0.99  res_tautology_del:                      20
% 2.70/0.99  res_num_eq_res_simplified:              2
% 2.70/0.99  res_num_sel_changes:                    0
% 2.70/0.99  res_moves_from_active_to_pass:          0
% 2.70/0.99  
% 2.70/0.99  ------ Superposition
% 2.70/0.99  
% 2.70/0.99  sup_time_total:                         0.
% 2.70/0.99  sup_time_generating:                    0.
% 2.70/0.99  sup_time_sim_full:                      0.
% 2.70/0.99  sup_time_sim_immed:                     0.
% 2.70/0.99  
% 2.70/0.99  sup_num_of_clauses:                     38
% 2.70/0.99  sup_num_in_active:                      25
% 2.70/0.99  sup_num_in_passive:                     13
% 2.70/0.99  sup_num_of_loops:                       27
% 2.70/0.99  sup_fw_superposition:                   17
% 2.70/0.99  sup_bw_superposition:                   4
% 2.70/0.99  sup_immediate_simplified:               0
% 2.70/0.99  sup_given_eliminated:                   0
% 2.70/0.99  comparisons_done:                       0
% 2.70/0.99  comparisons_avoided:                    0
% 2.70/0.99  
% 2.70/0.99  ------ Simplifications
% 2.70/0.99  
% 2.70/0.99  
% 2.70/0.99  sim_fw_subset_subsumed:                 0
% 2.70/0.99  sim_bw_subset_subsumed:                 0
% 2.70/0.99  sim_fw_subsumed:                        0
% 2.70/0.99  sim_bw_subsumed:                        0
% 2.70/0.99  sim_fw_subsumption_res:                 0
% 2.70/0.99  sim_bw_subsumption_res:                 0
% 2.70/0.99  sim_tautology_del:                      0
% 2.70/0.99  sim_eq_tautology_del:                   2
% 2.70/0.99  sim_eq_res_simp:                        0
% 2.70/0.99  sim_fw_demodulated:                     0
% 2.70/0.99  sim_bw_demodulated:                     3
% 2.70/0.99  sim_light_normalised:                   3
% 2.70/0.99  sim_joinable_taut:                      0
% 2.70/0.99  sim_joinable_simp:                      0
% 2.70/0.99  sim_ac_normalised:                      0
% 2.70/0.99  sim_smt_subsumption:                    0
% 2.70/0.99  
%------------------------------------------------------------------------------
