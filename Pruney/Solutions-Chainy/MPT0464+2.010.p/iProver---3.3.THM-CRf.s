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
% DateTime   : Thu Dec  3 11:43:31 EST 2020

% Result     : Theorem 2.17s
% Output     : CNFRefutation 2.17s
% Verified   : 
% Statistics : Number of formulae       :  119 ( 434 expanded)
%              Number of clauses        :   52 ( 103 expanded)
%              Number of leaves         :   19 ( 118 expanded)
%              Depth                    :   15
%              Number of atoms          :  443 (1232 expanded)
%              Number of equality atoms :  209 ( 388 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(k1_setfam_1(X1),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f65,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f13,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ! [X3] :
                  ( v1_relat_1(X3)
                 => ( ( r1_tarski(X2,X3)
                      & r1_tarski(X0,X1) )
                   => r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
                  | ~ r1_tarski(X2,X3)
                  | ~ r1_tarski(X0,X1)
                  | ~ v1_relat_1(X3) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
                  | ~ r1_tarski(X2,X3)
                  | ~ r1_tarski(X0,X1)
                  | ~ v1_relat_1(X3) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f21])).

fof(f67,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
      | ~ r1_tarski(X2,X3)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X3)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f66,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f64,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f16])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f9,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f4,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f7])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f46,f47])).

fof(f73,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f45,f72])).

fof(f74,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f44,f73])).

fof(f75,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f62,f74])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2)))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f43,f75])).

fof(f14,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => ! [X2] :
                ( v1_relat_1(X2)
               => r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) ) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)))
          & v1_relat_1(X2) )
     => ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,sK4)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,sK4)))
        & v1_relat_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
     => ( ? [X2] :
            ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(sK3,X2)),k3_xboole_0(k5_relat_1(X0,sK3),k5_relat_1(X0,X2)))
            & v1_relat_1(X2) )
        & v1_relat_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2)))
                & v1_relat_1(X2) )
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(sK2,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(sK2,X1),k5_relat_1(sK2,X2)))
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ~ r1_tarski(k5_relat_1(sK2,k3_xboole_0(sK3,sK4)),k3_xboole_0(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))
    & v1_relat_1(sK4)
    & v1_relat_1(sK3)
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f23,f37,f36,f35])).

fof(f71,plain,(
    ~ r1_tarski(k5_relat_1(sK2,k3_xboole_0(sK3,sK4)),k3_xboole_0(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4))) ),
    inference(cnf_transformation,[],[f38])).

fof(f80,plain,(
    ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) ),
    inference(definition_unfolding,[],[f71,f75,f75])).

fof(f68,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f69,plain,(
    v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f26])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f82,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f39])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f76,plain,(
    ! [X0,X1] : r1_tarski(k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1)),X0) ),
    inference(definition_unfolding,[],[f42,f75])).

fof(f70,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
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

fof(f18,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_enumset1(X0,X1,X2,X3,X4) = X5
    <=> ! [X6] :
          ( r2_hidden(X6,X5)
        <=> ( X4 = X6
            | X3 = X6
            | X2 = X6
            | X1 = X6
            | X0 = X6 ) ) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,(
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

fof(f25,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_enumset1(X0,X1,X2,X3,X4) = X5
    <=> sP0(X4,X3,X2,X1,X0,X5) ) ),
    inference(definition_folding,[],[f18,f24])).

fof(f33,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( k3_enumset1(X0,X1,X2,X3,X4) = X5
        | ~ sP0(X4,X3,X2,X1,X0,X5) )
      & ( sP0(X4,X3,X2,X1,X0,X5)
        | k3_enumset1(X0,X1,X2,X3,X4) != X5 ) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f60,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( sP0(X4,X3,X2,X1,X0,X5)
      | k3_enumset1(X0,X1,X2,X3,X4) != X5 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f79,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( sP0(X4,X3,X2,X1,X0,X5)
      | k4_enumset1(X0,X0,X1,X2,X3,X4) != X5 ) ),
    inference(definition_unfolding,[],[f60,f47])).

fof(f88,plain,(
    ! [X4,X2,X0,X3,X1] : sP0(X4,X3,X2,X1,X0,k4_enumset1(X0,X0,X1,X2,X3,X4)) ),
    inference(equality_resolution,[],[f79])).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f24])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f30,plain,(
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
    inference(rectify,[],[f29])).

fof(f31,plain,(
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

fof(f32,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).

fof(f53,plain,(
    ! [X4,X2,X0,X7,X5,X3,X1] :
      ( r2_hidden(X7,X5)
      | X0 != X7
      | ~ sP0(X0,X1,X2,X3,X4,X5) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f83,plain,(
    ! [X4,X2,X7,X5,X3,X1] :
      ( r2_hidden(X7,X5)
      | ~ sP0(X7,X1,X2,X3,X4,X5) ) ),
    inference(equality_resolution,[],[f53])).

cnf(c_21,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k1_setfam_1(X1),X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_4231,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(k1_setfam_1(X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_23,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X3)
    | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_19,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_145,plain,
    ( r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
    | ~ r1_tarski(X2,X3)
    | ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_23,c_22,c_19])).

cnf(c_146,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X3)
    | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2) ),
    inference(renaming,[status(thm)],[c_145])).

cnf(c_4226,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X2,X3) != iProver_top
    | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) = iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_146])).

cnf(c_210,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_19])).

cnf(c_211,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_210])).

cnf(c_263,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_22,c_211])).

cnf(c_4225,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_263])).

cnf(c_4360,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X2,X3) != iProver_top
    | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) = iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4226,c_4225])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X0,X2)
    | r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2))) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_4246,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X0,X2) != iProver_top
    | r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_24,negated_conjecture,
    ( ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_4230,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_5341,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top
    | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4246,c_4230])).

cnf(c_27,negated_conjecture,
    ( v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_28,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_26,negated_conjecture,
    ( v1_relat_1(sK3) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_29,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_31,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_4443,plain,
    ( ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4))
    | ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3))
    | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_4444,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top
    | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) != iProver_top
    | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4443])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_4486,plain,
    ( r1_tarski(sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_4487,plain,
    ( r1_tarski(sK2,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4486])).

cnf(c_4685,plain,
    ( ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) ),
    inference(instantiation,[status(thm)],[c_263])).

cnf(c_4686,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4685])).

cnf(c_4688,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) != iProver_top
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_4686])).

cnf(c_3,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1)),X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_5026,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_5029,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5026])).

cnf(c_4518,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(X0,X1))
    | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X1)
    | ~ r1_tarski(sK2,X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) ),
    inference(instantiation,[status(thm)],[c_146])).

cnf(c_5311,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,X0))
    | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0)
    | ~ r1_tarski(sK2,sK2)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_4518])).

cnf(c_5312,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,X0)) = iProver_top
    | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0) != iProver_top
    | r1_tarski(sK2,sK2) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5311])).

cnf(c_5314,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) = iProver_top
    | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) != iProver_top
    | r1_tarski(sK2,sK2) != iProver_top
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_5312])).

cnf(c_5699,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5341,c_28,c_29,c_31,c_4444,c_4487,c_4688,c_5029,c_5314])).

cnf(c_6023,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top
    | r1_tarski(sK2,sK2) != iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4360,c_5699])).

cnf(c_25,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_30,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4459,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4))
    | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4)
    | ~ r1_tarski(sK2,sK2)
    | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)))
    | ~ v1_relat_1(sK4)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_146])).

cnf(c_4460,plain,
    ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) = iProver_top
    | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top
    | r1_tarski(sK2,sK2) != iProver_top
    | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
    | v1_relat_1(sK4) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4459])).

cnf(c_6409,plain,
    ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6023,c_28,c_29,c_30,c_31,c_4444,c_4460,c_4487,c_4688,c_5029,c_5314])).

cnf(c_6414,plain,
    ( r2_hidden(sK4,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4231,c_6409])).

cnf(c_18,plain,
    ( sP0(X0,X1,X2,X3,X4,k4_enumset1(X4,X4,X3,X2,X1,X0)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_4232,plain,
    ( sP0(X0,X1,X2,X3,X4,k4_enumset1(X4,X4,X3,X2,X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_11,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5)
    | r2_hidden(X0,X5) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_4239,plain,
    ( sP0(X0,X1,X2,X3,X4,X5) != iProver_top
    | r2_hidden(X0,X5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_5194,plain,
    ( r2_hidden(X0,k4_enumset1(X1,X1,X2,X3,X4,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4232,c_4239])).

cnf(c_6418,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_6414,c_5194])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n019.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:15:22 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.17/1.01  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.17/1.01  
% 2.17/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.17/1.01  
% 2.17/1.01  ------  iProver source info
% 2.17/1.01  
% 2.17/1.01  git: date: 2020-06-30 10:37:57 +0100
% 2.17/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.17/1.01  git: non_committed_changes: false
% 2.17/1.01  git: last_make_outside_of_git: false
% 2.17/1.01  
% 2.17/1.01  ------ 
% 2.17/1.01  
% 2.17/1.01  ------ Input Options
% 2.17/1.01  
% 2.17/1.01  --out_options                           all
% 2.17/1.01  --tptp_safe_out                         true
% 2.17/1.01  --problem_path                          ""
% 2.17/1.01  --include_path                          ""
% 2.17/1.01  --clausifier                            res/vclausify_rel
% 2.17/1.01  --clausifier_options                    --mode clausify
% 2.17/1.01  --stdin                                 false
% 2.17/1.01  --stats_out                             all
% 2.17/1.01  
% 2.17/1.01  ------ General Options
% 2.17/1.01  
% 2.17/1.01  --fof                                   false
% 2.17/1.01  --time_out_real                         305.
% 2.17/1.01  --time_out_virtual                      -1.
% 2.17/1.01  --symbol_type_check                     false
% 2.17/1.01  --clausify_out                          false
% 2.17/1.01  --sig_cnt_out                           false
% 2.17/1.01  --trig_cnt_out                          false
% 2.17/1.01  --trig_cnt_out_tolerance                1.
% 2.17/1.01  --trig_cnt_out_sk_spl                   false
% 2.17/1.01  --abstr_cl_out                          false
% 2.17/1.01  
% 2.17/1.01  ------ Global Options
% 2.17/1.01  
% 2.17/1.01  --schedule                              default
% 2.17/1.01  --add_important_lit                     false
% 2.17/1.01  --prop_solver_per_cl                    1000
% 2.17/1.01  --min_unsat_core                        false
% 2.17/1.01  --soft_assumptions                      false
% 2.17/1.01  --soft_lemma_size                       3
% 2.17/1.01  --prop_impl_unit_size                   0
% 2.17/1.01  --prop_impl_unit                        []
% 2.17/1.01  --share_sel_clauses                     true
% 2.17/1.01  --reset_solvers                         false
% 2.17/1.01  --bc_imp_inh                            [conj_cone]
% 2.17/1.01  --conj_cone_tolerance                   3.
% 2.17/1.01  --extra_neg_conj                        none
% 2.17/1.01  --large_theory_mode                     true
% 2.17/1.01  --prolific_symb_bound                   200
% 2.17/1.01  --lt_threshold                          2000
% 2.17/1.01  --clause_weak_htbl                      true
% 2.17/1.01  --gc_record_bc_elim                     false
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing Options
% 2.17/1.01  
% 2.17/1.01  --preprocessing_flag                    true
% 2.17/1.01  --time_out_prep_mult                    0.1
% 2.17/1.01  --splitting_mode                        input
% 2.17/1.01  --splitting_grd                         true
% 2.17/1.01  --splitting_cvd                         false
% 2.17/1.01  --splitting_cvd_svl                     false
% 2.17/1.01  --splitting_nvd                         32
% 2.17/1.01  --sub_typing                            true
% 2.17/1.01  --prep_gs_sim                           true
% 2.17/1.01  --prep_unflatten                        true
% 2.17/1.01  --prep_res_sim                          true
% 2.17/1.01  --prep_upred                            true
% 2.17/1.01  --prep_sem_filter                       exhaustive
% 2.17/1.01  --prep_sem_filter_out                   false
% 2.17/1.01  --pred_elim                             true
% 2.17/1.01  --res_sim_input                         true
% 2.17/1.01  --eq_ax_congr_red                       true
% 2.17/1.01  --pure_diseq_elim                       true
% 2.17/1.01  --brand_transform                       false
% 2.17/1.01  --non_eq_to_eq                          false
% 2.17/1.01  --prep_def_merge                        true
% 2.17/1.01  --prep_def_merge_prop_impl              false
% 2.17/1.01  --prep_def_merge_mbd                    true
% 2.17/1.01  --prep_def_merge_tr_red                 false
% 2.17/1.01  --prep_def_merge_tr_cl                  false
% 2.17/1.01  --smt_preprocessing                     true
% 2.17/1.01  --smt_ac_axioms                         fast
% 2.17/1.01  --preprocessed_out                      false
% 2.17/1.01  --preprocessed_stats                    false
% 2.17/1.01  
% 2.17/1.01  ------ Abstraction refinement Options
% 2.17/1.01  
% 2.17/1.01  --abstr_ref                             []
% 2.17/1.01  --abstr_ref_prep                        false
% 2.17/1.01  --abstr_ref_until_sat                   false
% 2.17/1.01  --abstr_ref_sig_restrict                funpre
% 2.17/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.17/1.01  --abstr_ref_under                       []
% 2.17/1.01  
% 2.17/1.01  ------ SAT Options
% 2.17/1.01  
% 2.17/1.01  --sat_mode                              false
% 2.17/1.01  --sat_fm_restart_options                ""
% 2.17/1.01  --sat_gr_def                            false
% 2.17/1.01  --sat_epr_types                         true
% 2.17/1.01  --sat_non_cyclic_types                  false
% 2.17/1.01  --sat_finite_models                     false
% 2.17/1.01  --sat_fm_lemmas                         false
% 2.17/1.01  --sat_fm_prep                           false
% 2.17/1.01  --sat_fm_uc_incr                        true
% 2.17/1.01  --sat_out_model                         small
% 2.17/1.01  --sat_out_clauses                       false
% 2.17/1.01  
% 2.17/1.01  ------ QBF Options
% 2.17/1.01  
% 2.17/1.01  --qbf_mode                              false
% 2.17/1.01  --qbf_elim_univ                         false
% 2.17/1.01  --qbf_dom_inst                          none
% 2.17/1.01  --qbf_dom_pre_inst                      false
% 2.17/1.01  --qbf_sk_in                             false
% 2.17/1.01  --qbf_pred_elim                         true
% 2.17/1.01  --qbf_split                             512
% 2.17/1.01  
% 2.17/1.01  ------ BMC1 Options
% 2.17/1.01  
% 2.17/1.01  --bmc1_incremental                      false
% 2.17/1.01  --bmc1_axioms                           reachable_all
% 2.17/1.01  --bmc1_min_bound                        0
% 2.17/1.01  --bmc1_max_bound                        -1
% 2.17/1.01  --bmc1_max_bound_default                -1
% 2.17/1.01  --bmc1_symbol_reachability              true
% 2.17/1.01  --bmc1_property_lemmas                  false
% 2.17/1.01  --bmc1_k_induction                      false
% 2.17/1.01  --bmc1_non_equiv_states                 false
% 2.17/1.01  --bmc1_deadlock                         false
% 2.17/1.01  --bmc1_ucm                              false
% 2.17/1.01  --bmc1_add_unsat_core                   none
% 2.17/1.01  --bmc1_unsat_core_children              false
% 2.17/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.17/1.01  --bmc1_out_stat                         full
% 2.17/1.01  --bmc1_ground_init                      false
% 2.17/1.01  --bmc1_pre_inst_next_state              false
% 2.17/1.01  --bmc1_pre_inst_state                   false
% 2.17/1.01  --bmc1_pre_inst_reach_state             false
% 2.17/1.01  --bmc1_out_unsat_core                   false
% 2.17/1.01  --bmc1_aig_witness_out                  false
% 2.17/1.01  --bmc1_verbose                          false
% 2.17/1.01  --bmc1_dump_clauses_tptp                false
% 2.17/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.17/1.01  --bmc1_dump_file                        -
% 2.17/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.17/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.17/1.01  --bmc1_ucm_extend_mode                  1
% 2.17/1.01  --bmc1_ucm_init_mode                    2
% 2.17/1.01  --bmc1_ucm_cone_mode                    none
% 2.17/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.17/1.01  --bmc1_ucm_relax_model                  4
% 2.17/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.17/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.17/1.01  --bmc1_ucm_layered_model                none
% 2.17/1.01  --bmc1_ucm_max_lemma_size               10
% 2.17/1.01  
% 2.17/1.01  ------ AIG Options
% 2.17/1.01  
% 2.17/1.01  --aig_mode                              false
% 2.17/1.01  
% 2.17/1.01  ------ Instantiation Options
% 2.17/1.01  
% 2.17/1.01  --instantiation_flag                    true
% 2.17/1.01  --inst_sos_flag                         false
% 2.17/1.01  --inst_sos_phase                        true
% 2.17/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.17/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.17/1.01  --inst_lit_sel_side                     num_symb
% 2.17/1.01  --inst_solver_per_active                1400
% 2.17/1.01  --inst_solver_calls_frac                1.
% 2.17/1.01  --inst_passive_queue_type               priority_queues
% 2.17/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.17/1.01  --inst_passive_queues_freq              [25;2]
% 2.17/1.01  --inst_dismatching                      true
% 2.17/1.01  --inst_eager_unprocessed_to_passive     true
% 2.17/1.01  --inst_prop_sim_given                   true
% 2.17/1.01  --inst_prop_sim_new                     false
% 2.17/1.01  --inst_subs_new                         false
% 2.17/1.01  --inst_eq_res_simp                      false
% 2.17/1.01  --inst_subs_given                       false
% 2.17/1.01  --inst_orphan_elimination               true
% 2.17/1.01  --inst_learning_loop_flag               true
% 2.17/1.01  --inst_learning_start                   3000
% 2.17/1.01  --inst_learning_factor                  2
% 2.17/1.01  --inst_start_prop_sim_after_learn       3
% 2.17/1.01  --inst_sel_renew                        solver
% 2.17/1.01  --inst_lit_activity_flag                true
% 2.17/1.01  --inst_restr_to_given                   false
% 2.17/1.01  --inst_activity_threshold               500
% 2.17/1.01  --inst_out_proof                        true
% 2.17/1.01  
% 2.17/1.01  ------ Resolution Options
% 2.17/1.01  
% 2.17/1.01  --resolution_flag                       true
% 2.17/1.01  --res_lit_sel                           adaptive
% 2.17/1.01  --res_lit_sel_side                      none
% 2.17/1.01  --res_ordering                          kbo
% 2.17/1.01  --res_to_prop_solver                    active
% 2.17/1.01  --res_prop_simpl_new                    false
% 2.17/1.01  --res_prop_simpl_given                  true
% 2.17/1.01  --res_passive_queue_type                priority_queues
% 2.17/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.17/1.01  --res_passive_queues_freq               [15;5]
% 2.17/1.01  --res_forward_subs                      full
% 2.17/1.01  --res_backward_subs                     full
% 2.17/1.01  --res_forward_subs_resolution           true
% 2.17/1.01  --res_backward_subs_resolution          true
% 2.17/1.01  --res_orphan_elimination                true
% 2.17/1.01  --res_time_limit                        2.
% 2.17/1.01  --res_out_proof                         true
% 2.17/1.01  
% 2.17/1.01  ------ Superposition Options
% 2.17/1.01  
% 2.17/1.01  --superposition_flag                    true
% 2.17/1.01  --sup_passive_queue_type                priority_queues
% 2.17/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.17/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.17/1.01  --demod_completeness_check              fast
% 2.17/1.01  --demod_use_ground                      true
% 2.17/1.01  --sup_to_prop_solver                    passive
% 2.17/1.01  --sup_prop_simpl_new                    true
% 2.17/1.01  --sup_prop_simpl_given                  true
% 2.17/1.01  --sup_fun_splitting                     false
% 2.17/1.01  --sup_smt_interval                      50000
% 2.17/1.01  
% 2.17/1.01  ------ Superposition Simplification Setup
% 2.17/1.01  
% 2.17/1.01  --sup_indices_passive                   []
% 2.17/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.17/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_full_bw                           [BwDemod]
% 2.17/1.01  --sup_immed_triv                        [TrivRules]
% 2.17/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.17/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_immed_bw_main                     []
% 2.17/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.17/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/1.01  
% 2.17/1.01  ------ Combination Options
% 2.17/1.01  
% 2.17/1.01  --comb_res_mult                         3
% 2.17/1.01  --comb_sup_mult                         2
% 2.17/1.01  --comb_inst_mult                        10
% 2.17/1.01  
% 2.17/1.01  ------ Debug Options
% 2.17/1.01  
% 2.17/1.01  --dbg_backtrace                         false
% 2.17/1.01  --dbg_dump_prop_clauses                 false
% 2.17/1.01  --dbg_dump_prop_clauses_file            -
% 2.17/1.01  --dbg_out_stat                          false
% 2.17/1.01  ------ Parsing...
% 2.17/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.17/1.01  ------ Proving...
% 2.17/1.01  ------ Problem Properties 
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  clauses                                 25
% 2.17/1.01  conjectures                             4
% 2.17/1.01  EPR                                     12
% 2.17/1.01  Horn                                    23
% 2.17/1.01  unary                                   7
% 2.17/1.01  binary                                  7
% 2.17/1.01  lits                                    65
% 2.17/1.01  lits eq                                 17
% 2.17/1.01  fd_pure                                 0
% 2.17/1.01  fd_pseudo                               0
% 2.17/1.01  fd_cond                                 0
% 2.17/1.01  fd_pseudo_cond                          3
% 2.17/1.01  AC symbols                              0
% 2.17/1.01  
% 2.17/1.01  ------ Schedule dynamic 5 is on 
% 2.17/1.01  
% 2.17/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  ------ 
% 2.17/1.01  Current options:
% 2.17/1.01  ------ 
% 2.17/1.01  
% 2.17/1.01  ------ Input Options
% 2.17/1.01  
% 2.17/1.01  --out_options                           all
% 2.17/1.01  --tptp_safe_out                         true
% 2.17/1.01  --problem_path                          ""
% 2.17/1.01  --include_path                          ""
% 2.17/1.01  --clausifier                            res/vclausify_rel
% 2.17/1.01  --clausifier_options                    --mode clausify
% 2.17/1.01  --stdin                                 false
% 2.17/1.01  --stats_out                             all
% 2.17/1.01  
% 2.17/1.01  ------ General Options
% 2.17/1.01  
% 2.17/1.01  --fof                                   false
% 2.17/1.01  --time_out_real                         305.
% 2.17/1.01  --time_out_virtual                      -1.
% 2.17/1.01  --symbol_type_check                     false
% 2.17/1.01  --clausify_out                          false
% 2.17/1.01  --sig_cnt_out                           false
% 2.17/1.01  --trig_cnt_out                          false
% 2.17/1.01  --trig_cnt_out_tolerance                1.
% 2.17/1.01  --trig_cnt_out_sk_spl                   false
% 2.17/1.01  --abstr_cl_out                          false
% 2.17/1.01  
% 2.17/1.01  ------ Global Options
% 2.17/1.01  
% 2.17/1.01  --schedule                              default
% 2.17/1.01  --add_important_lit                     false
% 2.17/1.01  --prop_solver_per_cl                    1000
% 2.17/1.01  --min_unsat_core                        false
% 2.17/1.01  --soft_assumptions                      false
% 2.17/1.01  --soft_lemma_size                       3
% 2.17/1.01  --prop_impl_unit_size                   0
% 2.17/1.01  --prop_impl_unit                        []
% 2.17/1.01  --share_sel_clauses                     true
% 2.17/1.01  --reset_solvers                         false
% 2.17/1.01  --bc_imp_inh                            [conj_cone]
% 2.17/1.01  --conj_cone_tolerance                   3.
% 2.17/1.01  --extra_neg_conj                        none
% 2.17/1.01  --large_theory_mode                     true
% 2.17/1.01  --prolific_symb_bound                   200
% 2.17/1.01  --lt_threshold                          2000
% 2.17/1.01  --clause_weak_htbl                      true
% 2.17/1.01  --gc_record_bc_elim                     false
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing Options
% 2.17/1.01  
% 2.17/1.01  --preprocessing_flag                    true
% 2.17/1.01  --time_out_prep_mult                    0.1
% 2.17/1.01  --splitting_mode                        input
% 2.17/1.01  --splitting_grd                         true
% 2.17/1.01  --splitting_cvd                         false
% 2.17/1.01  --splitting_cvd_svl                     false
% 2.17/1.01  --splitting_nvd                         32
% 2.17/1.01  --sub_typing                            true
% 2.17/1.01  --prep_gs_sim                           true
% 2.17/1.01  --prep_unflatten                        true
% 2.17/1.01  --prep_res_sim                          true
% 2.17/1.01  --prep_upred                            true
% 2.17/1.01  --prep_sem_filter                       exhaustive
% 2.17/1.01  --prep_sem_filter_out                   false
% 2.17/1.01  --pred_elim                             true
% 2.17/1.01  --res_sim_input                         true
% 2.17/1.01  --eq_ax_congr_red                       true
% 2.17/1.01  --pure_diseq_elim                       true
% 2.17/1.01  --brand_transform                       false
% 2.17/1.01  --non_eq_to_eq                          false
% 2.17/1.01  --prep_def_merge                        true
% 2.17/1.01  --prep_def_merge_prop_impl              false
% 2.17/1.01  --prep_def_merge_mbd                    true
% 2.17/1.01  --prep_def_merge_tr_red                 false
% 2.17/1.01  --prep_def_merge_tr_cl                  false
% 2.17/1.01  --smt_preprocessing                     true
% 2.17/1.01  --smt_ac_axioms                         fast
% 2.17/1.01  --preprocessed_out                      false
% 2.17/1.01  --preprocessed_stats                    false
% 2.17/1.01  
% 2.17/1.01  ------ Abstraction refinement Options
% 2.17/1.01  
% 2.17/1.01  --abstr_ref                             []
% 2.17/1.01  --abstr_ref_prep                        false
% 2.17/1.01  --abstr_ref_until_sat                   false
% 2.17/1.01  --abstr_ref_sig_restrict                funpre
% 2.17/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.17/1.01  --abstr_ref_under                       []
% 2.17/1.01  
% 2.17/1.01  ------ SAT Options
% 2.17/1.01  
% 2.17/1.01  --sat_mode                              false
% 2.17/1.01  --sat_fm_restart_options                ""
% 2.17/1.01  --sat_gr_def                            false
% 2.17/1.01  --sat_epr_types                         true
% 2.17/1.01  --sat_non_cyclic_types                  false
% 2.17/1.01  --sat_finite_models                     false
% 2.17/1.01  --sat_fm_lemmas                         false
% 2.17/1.01  --sat_fm_prep                           false
% 2.17/1.01  --sat_fm_uc_incr                        true
% 2.17/1.01  --sat_out_model                         small
% 2.17/1.01  --sat_out_clauses                       false
% 2.17/1.01  
% 2.17/1.01  ------ QBF Options
% 2.17/1.01  
% 2.17/1.01  --qbf_mode                              false
% 2.17/1.01  --qbf_elim_univ                         false
% 2.17/1.01  --qbf_dom_inst                          none
% 2.17/1.01  --qbf_dom_pre_inst                      false
% 2.17/1.01  --qbf_sk_in                             false
% 2.17/1.01  --qbf_pred_elim                         true
% 2.17/1.01  --qbf_split                             512
% 2.17/1.01  
% 2.17/1.01  ------ BMC1 Options
% 2.17/1.01  
% 2.17/1.01  --bmc1_incremental                      false
% 2.17/1.01  --bmc1_axioms                           reachable_all
% 2.17/1.01  --bmc1_min_bound                        0
% 2.17/1.01  --bmc1_max_bound                        -1
% 2.17/1.01  --bmc1_max_bound_default                -1
% 2.17/1.01  --bmc1_symbol_reachability              true
% 2.17/1.01  --bmc1_property_lemmas                  false
% 2.17/1.01  --bmc1_k_induction                      false
% 2.17/1.01  --bmc1_non_equiv_states                 false
% 2.17/1.01  --bmc1_deadlock                         false
% 2.17/1.01  --bmc1_ucm                              false
% 2.17/1.01  --bmc1_add_unsat_core                   none
% 2.17/1.01  --bmc1_unsat_core_children              false
% 2.17/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.17/1.01  --bmc1_out_stat                         full
% 2.17/1.01  --bmc1_ground_init                      false
% 2.17/1.01  --bmc1_pre_inst_next_state              false
% 2.17/1.01  --bmc1_pre_inst_state                   false
% 2.17/1.01  --bmc1_pre_inst_reach_state             false
% 2.17/1.01  --bmc1_out_unsat_core                   false
% 2.17/1.01  --bmc1_aig_witness_out                  false
% 2.17/1.01  --bmc1_verbose                          false
% 2.17/1.01  --bmc1_dump_clauses_tptp                false
% 2.17/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.17/1.01  --bmc1_dump_file                        -
% 2.17/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.17/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.17/1.01  --bmc1_ucm_extend_mode                  1
% 2.17/1.01  --bmc1_ucm_init_mode                    2
% 2.17/1.01  --bmc1_ucm_cone_mode                    none
% 2.17/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.17/1.01  --bmc1_ucm_relax_model                  4
% 2.17/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.17/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.17/1.01  --bmc1_ucm_layered_model                none
% 2.17/1.01  --bmc1_ucm_max_lemma_size               10
% 2.17/1.01  
% 2.17/1.01  ------ AIG Options
% 2.17/1.01  
% 2.17/1.01  --aig_mode                              false
% 2.17/1.01  
% 2.17/1.01  ------ Instantiation Options
% 2.17/1.01  
% 2.17/1.01  --instantiation_flag                    true
% 2.17/1.01  --inst_sos_flag                         false
% 2.17/1.01  --inst_sos_phase                        true
% 2.17/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.17/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.17/1.01  --inst_lit_sel_side                     none
% 2.17/1.01  --inst_solver_per_active                1400
% 2.17/1.01  --inst_solver_calls_frac                1.
% 2.17/1.01  --inst_passive_queue_type               priority_queues
% 2.17/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.17/1.01  --inst_passive_queues_freq              [25;2]
% 2.17/1.01  --inst_dismatching                      true
% 2.17/1.01  --inst_eager_unprocessed_to_passive     true
% 2.17/1.01  --inst_prop_sim_given                   true
% 2.17/1.01  --inst_prop_sim_new                     false
% 2.17/1.01  --inst_subs_new                         false
% 2.17/1.01  --inst_eq_res_simp                      false
% 2.17/1.01  --inst_subs_given                       false
% 2.17/1.01  --inst_orphan_elimination               true
% 2.17/1.01  --inst_learning_loop_flag               true
% 2.17/1.01  --inst_learning_start                   3000
% 2.17/1.01  --inst_learning_factor                  2
% 2.17/1.01  --inst_start_prop_sim_after_learn       3
% 2.17/1.01  --inst_sel_renew                        solver
% 2.17/1.01  --inst_lit_activity_flag                true
% 2.17/1.01  --inst_restr_to_given                   false
% 2.17/1.01  --inst_activity_threshold               500
% 2.17/1.01  --inst_out_proof                        true
% 2.17/1.01  
% 2.17/1.01  ------ Resolution Options
% 2.17/1.01  
% 2.17/1.01  --resolution_flag                       false
% 2.17/1.01  --res_lit_sel                           adaptive
% 2.17/1.01  --res_lit_sel_side                      none
% 2.17/1.01  --res_ordering                          kbo
% 2.17/1.01  --res_to_prop_solver                    active
% 2.17/1.01  --res_prop_simpl_new                    false
% 2.17/1.01  --res_prop_simpl_given                  true
% 2.17/1.01  --res_passive_queue_type                priority_queues
% 2.17/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.17/1.01  --res_passive_queues_freq               [15;5]
% 2.17/1.01  --res_forward_subs                      full
% 2.17/1.01  --res_backward_subs                     full
% 2.17/1.01  --res_forward_subs_resolution           true
% 2.17/1.01  --res_backward_subs_resolution          true
% 2.17/1.01  --res_orphan_elimination                true
% 2.17/1.01  --res_time_limit                        2.
% 2.17/1.01  --res_out_proof                         true
% 2.17/1.01  
% 2.17/1.01  ------ Superposition Options
% 2.17/1.01  
% 2.17/1.01  --superposition_flag                    true
% 2.17/1.01  --sup_passive_queue_type                priority_queues
% 2.17/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.17/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.17/1.01  --demod_completeness_check              fast
% 2.17/1.01  --demod_use_ground                      true
% 2.17/1.01  --sup_to_prop_solver                    passive
% 2.17/1.01  --sup_prop_simpl_new                    true
% 2.17/1.01  --sup_prop_simpl_given                  true
% 2.17/1.01  --sup_fun_splitting                     false
% 2.17/1.01  --sup_smt_interval                      50000
% 2.17/1.01  
% 2.17/1.01  ------ Superposition Simplification Setup
% 2.17/1.01  
% 2.17/1.01  --sup_indices_passive                   []
% 2.17/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.17/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.17/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_full_bw                           [BwDemod]
% 2.17/1.01  --sup_immed_triv                        [TrivRules]
% 2.17/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.17/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_immed_bw_main                     []
% 2.17/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.17/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.17/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.17/1.01  
% 2.17/1.01  ------ Combination Options
% 2.17/1.01  
% 2.17/1.01  --comb_res_mult                         3
% 2.17/1.01  --comb_sup_mult                         2
% 2.17/1.01  --comb_inst_mult                        10
% 2.17/1.01  
% 2.17/1.01  ------ Debug Options
% 2.17/1.01  
% 2.17/1.01  --dbg_backtrace                         false
% 2.17/1.01  --dbg_dump_prop_clauses                 false
% 2.17/1.01  --dbg_dump_prop_clauses_file            -
% 2.17/1.01  --dbg_out_stat                          false
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  ------ Proving...
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  % SZS status Theorem for theBenchmark.p
% 2.17/1.01  
% 2.17/1.01   Resolution empty clause
% 2.17/1.01  
% 2.17/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.17/1.01  
% 2.17/1.01  fof(f11,axiom,(
% 2.17/1.01    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(k1_setfam_1(X1),X0))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f19,plain,(
% 2.17/1.01    ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),X0) | ~r2_hidden(X0,X1))),
% 2.17/1.01    inference(ennf_transformation,[],[f11])).
% 2.17/1.01  
% 2.17/1.01  fof(f65,plain,(
% 2.17/1.01    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),X0) | ~r2_hidden(X0,X1)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f19])).
% 2.17/1.01  
% 2.17/1.01  fof(f13,axiom,(
% 2.17/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => ! [X3] : (v1_relat_1(X3) => ((r1_tarski(X2,X3) & r1_tarski(X0,X1)) => r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)))))))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f21,plain,(
% 2.17/1.01    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) | (~r1_tarski(X2,X3) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X3)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.17/1.01    inference(ennf_transformation,[],[f13])).
% 2.17/1.01  
% 2.17/1.01  fof(f22,plain,(
% 2.17/1.01    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) | ~r1_tarski(X2,X3) | ~r1_tarski(X0,X1) | ~v1_relat_1(X3)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.17/1.01    inference(flattening,[],[f21])).
% 2.17/1.01  
% 2.17/1.01  fof(f67,plain,(
% 2.17/1.01    ( ! [X2,X0,X3,X1] : (r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) | ~r1_tarski(X2,X3) | ~r1_tarski(X0,X1) | ~v1_relat_1(X3) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f22])).
% 2.17/1.01  
% 2.17/1.01  fof(f12,axiom,(
% 2.17/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f20,plain,(
% 2.17/1.01    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.17/1.01    inference(ennf_transformation,[],[f12])).
% 2.17/1.01  
% 2.17/1.01  fof(f66,plain,(
% 2.17/1.01    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f20])).
% 2.17/1.01  
% 2.17/1.01  fof(f10,axiom,(
% 2.17/1.01    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f34,plain,(
% 2.17/1.01    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.17/1.01    inference(nnf_transformation,[],[f10])).
% 2.17/1.01  
% 2.17/1.01  fof(f64,plain,(
% 2.17/1.01    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f34])).
% 2.17/1.01  
% 2.17/1.01  fof(f3,axiom,(
% 2.17/1.01    ! [X0,X1,X2] : ((r1_tarski(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f16,plain,(
% 2.17/1.01    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | (~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)))),
% 2.17/1.01    inference(ennf_transformation,[],[f3])).
% 2.17/1.01  
% 2.17/1.01  fof(f17,plain,(
% 2.17/1.01    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1))),
% 2.17/1.01    inference(flattening,[],[f16])).
% 2.17/1.01  
% 2.17/1.01  fof(f43,plain,(
% 2.17/1.01    ( ! [X2,X0,X1] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f17])).
% 2.17/1.01  
% 2.17/1.01  fof(f9,axiom,(
% 2.17/1.01    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f62,plain,(
% 2.17/1.01    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 2.17/1.01    inference(cnf_transformation,[],[f9])).
% 2.17/1.01  
% 2.17/1.01  fof(f4,axiom,(
% 2.17/1.01    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f44,plain,(
% 2.17/1.01    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f4])).
% 2.17/1.01  
% 2.17/1.01  fof(f5,axiom,(
% 2.17/1.01    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f45,plain,(
% 2.17/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f5])).
% 2.17/1.01  
% 2.17/1.01  fof(f6,axiom,(
% 2.17/1.01    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f46,plain,(
% 2.17/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f6])).
% 2.17/1.01  
% 2.17/1.01  fof(f7,axiom,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f47,plain,(
% 2.17/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f7])).
% 2.17/1.01  
% 2.17/1.01  fof(f72,plain,(
% 2.17/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3)) )),
% 2.17/1.01    inference(definition_unfolding,[],[f46,f47])).
% 2.17/1.01  
% 2.17/1.01  fof(f73,plain,(
% 2.17/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2)) )),
% 2.17/1.01    inference(definition_unfolding,[],[f45,f72])).
% 2.17/1.01  
% 2.17/1.01  fof(f74,plain,(
% 2.17/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1)) )),
% 2.17/1.01    inference(definition_unfolding,[],[f44,f73])).
% 2.17/1.01  
% 2.17/1.01  fof(f75,plain,(
% 2.17/1.01    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1))) )),
% 2.17/1.01    inference(definition_unfolding,[],[f62,f74])).
% 2.17/1.01  
% 2.17/1.01  fof(f77,plain,(
% 2.17/1.01    ( ! [X2,X0,X1] : (r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2))) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 2.17/1.01    inference(definition_unfolding,[],[f43,f75])).
% 2.17/1.01  
% 2.17/1.01  fof(f14,conjecture,(
% 2.17/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))))))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f15,negated_conjecture,(
% 2.17/1.01    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))))))),
% 2.17/1.01    inference(negated_conjecture,[],[f14])).
% 2.17/1.01  
% 2.17/1.01  fof(f23,plain,(
% 2.17/1.01    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 2.17/1.01    inference(ennf_transformation,[],[f15])).
% 2.17/1.01  
% 2.17/1.01  fof(f37,plain,(
% 2.17/1.01    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) & v1_relat_1(X2)) => (~r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,sK4)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,sK4))) & v1_relat_1(sK4))) )),
% 2.17/1.01    introduced(choice_axiom,[])).
% 2.17/1.01  
% 2.17/1.01  fof(f36,plain,(
% 2.17/1.01    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) => (? [X2] : (~r1_tarski(k5_relat_1(X0,k3_xboole_0(sK3,X2)),k3_xboole_0(k5_relat_1(X0,sK3),k5_relat_1(X0,X2))) & v1_relat_1(X2)) & v1_relat_1(sK3))) )),
% 2.17/1.01    introduced(choice_axiom,[])).
% 2.17/1.01  
% 2.17/1.01  fof(f35,plain,(
% 2.17/1.01    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X0,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(X0,X1),k5_relat_1(X0,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(sK2,k3_xboole_0(X1,X2)),k3_xboole_0(k5_relat_1(sK2,X1),k5_relat_1(sK2,X2))) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(sK2))),
% 2.17/1.01    introduced(choice_axiom,[])).
% 2.17/1.01  
% 2.17/1.01  fof(f38,plain,(
% 2.17/1.01    ((~r1_tarski(k5_relat_1(sK2,k3_xboole_0(sK3,sK4)),k3_xboole_0(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4))) & v1_relat_1(sK4)) & v1_relat_1(sK3)) & v1_relat_1(sK2)),
% 2.17/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f23,f37,f36,f35])).
% 2.17/1.01  
% 2.17/1.01  fof(f71,plain,(
% 2.17/1.01    ~r1_tarski(k5_relat_1(sK2,k3_xboole_0(sK3,sK4)),k3_xboole_0(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))),
% 2.17/1.01    inference(cnf_transformation,[],[f38])).
% 2.17/1.01  
% 2.17/1.01  fof(f80,plain,(
% 2.17/1.01    ~r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4))))),
% 2.17/1.01    inference(definition_unfolding,[],[f71,f75,f75])).
% 2.17/1.01  
% 2.17/1.01  fof(f68,plain,(
% 2.17/1.01    v1_relat_1(sK2)),
% 2.17/1.01    inference(cnf_transformation,[],[f38])).
% 2.17/1.01  
% 2.17/1.01  fof(f69,plain,(
% 2.17/1.01    v1_relat_1(sK3)),
% 2.17/1.01    inference(cnf_transformation,[],[f38])).
% 2.17/1.01  
% 2.17/1.01  fof(f1,axiom,(
% 2.17/1.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f26,plain,(
% 2.17/1.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.17/1.01    inference(nnf_transformation,[],[f1])).
% 2.17/1.01  
% 2.17/1.01  fof(f27,plain,(
% 2.17/1.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.17/1.01    inference(flattening,[],[f26])).
% 2.17/1.01  
% 2.17/1.01  fof(f39,plain,(
% 2.17/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.17/1.01    inference(cnf_transformation,[],[f27])).
% 2.17/1.01  
% 2.17/1.01  fof(f82,plain,(
% 2.17/1.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.17/1.01    inference(equality_resolution,[],[f39])).
% 2.17/1.01  
% 2.17/1.01  fof(f2,axiom,(
% 2.17/1.01    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f42,plain,(
% 2.17/1.01    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f2])).
% 2.17/1.01  
% 2.17/1.01  fof(f76,plain,(
% 2.17/1.01    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1)),X0)) )),
% 2.17/1.01    inference(definition_unfolding,[],[f42,f75])).
% 2.17/1.01  
% 2.17/1.01  fof(f70,plain,(
% 2.17/1.01    v1_relat_1(sK4)),
% 2.17/1.01    inference(cnf_transformation,[],[f38])).
% 2.17/1.01  
% 2.17/1.01  fof(f8,axiom,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> ! [X6] : (r2_hidden(X6,X5) <=> ~(X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)))),
% 2.17/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.17/1.01  
% 2.17/1.01  fof(f18,plain,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> ! [X6] : (r2_hidden(X6,X5) <=> (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6)))),
% 2.17/1.01    inference(ennf_transformation,[],[f8])).
% 2.17/1.01  
% 2.17/1.01  fof(f24,plain,(
% 2.17/1.01    ! [X4,X3,X2,X1,X0,X5] : (sP0(X4,X3,X2,X1,X0,X5) <=> ! [X6] : (r2_hidden(X6,X5) <=> (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6)))),
% 2.17/1.01    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 2.17/1.01  
% 2.17/1.01  fof(f25,plain,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : (k3_enumset1(X0,X1,X2,X3,X4) = X5 <=> sP0(X4,X3,X2,X1,X0,X5))),
% 2.17/1.01    inference(definition_folding,[],[f18,f24])).
% 2.17/1.01  
% 2.17/1.01  fof(f33,plain,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : ((k3_enumset1(X0,X1,X2,X3,X4) = X5 | ~sP0(X4,X3,X2,X1,X0,X5)) & (sP0(X4,X3,X2,X1,X0,X5) | k3_enumset1(X0,X1,X2,X3,X4) != X5))),
% 2.17/1.01    inference(nnf_transformation,[],[f25])).
% 2.17/1.01  
% 2.17/1.01  fof(f60,plain,(
% 2.17/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (sP0(X4,X3,X2,X1,X0,X5) | k3_enumset1(X0,X1,X2,X3,X4) != X5) )),
% 2.17/1.01    inference(cnf_transformation,[],[f33])).
% 2.17/1.01  
% 2.17/1.01  fof(f79,plain,(
% 2.17/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (sP0(X4,X3,X2,X1,X0,X5) | k4_enumset1(X0,X0,X1,X2,X3,X4) != X5) )),
% 2.17/1.01    inference(definition_unfolding,[],[f60,f47])).
% 2.17/1.01  
% 2.17/1.01  fof(f88,plain,(
% 2.17/1.01    ( ! [X4,X2,X0,X3,X1] : (sP0(X4,X3,X2,X1,X0,k4_enumset1(X0,X0,X1,X2,X3,X4))) )),
% 2.17/1.01    inference(equality_resolution,[],[f79])).
% 2.17/1.01  
% 2.17/1.01  fof(f28,plain,(
% 2.17/1.01    ! [X4,X3,X2,X1,X0,X5] : ((sP0(X4,X3,X2,X1,X0,X5) | ? [X6] : (((X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6) | ~r2_hidden(X6,X5)) & ((X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6) | r2_hidden(X6,X5)))) & (! [X6] : ((r2_hidden(X6,X5) | (X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)) & ((X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6) | ~r2_hidden(X6,X5))) | ~sP0(X4,X3,X2,X1,X0,X5)))),
% 2.17/1.01    inference(nnf_transformation,[],[f24])).
% 2.17/1.01  
% 2.17/1.01  fof(f29,plain,(
% 2.17/1.01    ! [X4,X3,X2,X1,X0,X5] : ((sP0(X4,X3,X2,X1,X0,X5) | ? [X6] : (((X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6) | ~r2_hidden(X6,X5)) & (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6 | r2_hidden(X6,X5)))) & (! [X6] : ((r2_hidden(X6,X5) | (X4 != X6 & X3 != X6 & X2 != X6 & X1 != X6 & X0 != X6)) & (X4 = X6 | X3 = X6 | X2 = X6 | X1 = X6 | X0 = X6 | ~r2_hidden(X6,X5))) | ~sP0(X4,X3,X2,X1,X0,X5)))),
% 2.17/1.01    inference(flattening,[],[f28])).
% 2.17/1.01  
% 2.17/1.01  fof(f30,plain,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : ((sP0(X0,X1,X2,X3,X4,X5) | ? [X6] : (((X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6 & X4 != X6) | ~r2_hidden(X6,X5)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | X4 = X6 | r2_hidden(X6,X5)))) & (! [X7] : ((r2_hidden(X7,X5) | (X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | ~r2_hidden(X7,X5))) | ~sP0(X0,X1,X2,X3,X4,X5)))),
% 2.17/1.01    inference(rectify,[],[f29])).
% 2.17/1.01  
% 2.17/1.01  fof(f31,plain,(
% 2.17/1.01    ! [X5,X4,X3,X2,X1,X0] : (? [X6] : (((X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6 & X4 != X6) | ~r2_hidden(X6,X5)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | X4 = X6 | r2_hidden(X6,X5))) => (((sK1(X0,X1,X2,X3,X4,X5) != X0 & sK1(X0,X1,X2,X3,X4,X5) != X1 & sK1(X0,X1,X2,X3,X4,X5) != X2 & sK1(X0,X1,X2,X3,X4,X5) != X3 & sK1(X0,X1,X2,X3,X4,X5) != X4) | ~r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)) & (sK1(X0,X1,X2,X3,X4,X5) = X0 | sK1(X0,X1,X2,X3,X4,X5) = X1 | sK1(X0,X1,X2,X3,X4,X5) = X2 | sK1(X0,X1,X2,X3,X4,X5) = X3 | sK1(X0,X1,X2,X3,X4,X5) = X4 | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5))))),
% 2.17/1.01    introduced(choice_axiom,[])).
% 2.17/1.01  
% 2.17/1.01  fof(f32,plain,(
% 2.17/1.01    ! [X0,X1,X2,X3,X4,X5] : ((sP0(X0,X1,X2,X3,X4,X5) | (((sK1(X0,X1,X2,X3,X4,X5) != X0 & sK1(X0,X1,X2,X3,X4,X5) != X1 & sK1(X0,X1,X2,X3,X4,X5) != X2 & sK1(X0,X1,X2,X3,X4,X5) != X3 & sK1(X0,X1,X2,X3,X4,X5) != X4) | ~r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)) & (sK1(X0,X1,X2,X3,X4,X5) = X0 | sK1(X0,X1,X2,X3,X4,X5) = X1 | sK1(X0,X1,X2,X3,X4,X5) = X2 | sK1(X0,X1,X2,X3,X4,X5) = X3 | sK1(X0,X1,X2,X3,X4,X5) = X4 | r2_hidden(sK1(X0,X1,X2,X3,X4,X5),X5)))) & (! [X7] : ((r2_hidden(X7,X5) | (X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | ~r2_hidden(X7,X5))) | ~sP0(X0,X1,X2,X3,X4,X5)))),
% 2.17/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).
% 2.17/1.01  
% 2.17/1.01  fof(f53,plain,(
% 2.17/1.01    ( ! [X4,X2,X0,X7,X5,X3,X1] : (r2_hidden(X7,X5) | X0 != X7 | ~sP0(X0,X1,X2,X3,X4,X5)) )),
% 2.17/1.01    inference(cnf_transformation,[],[f32])).
% 2.17/1.01  
% 2.17/1.01  fof(f83,plain,(
% 2.17/1.01    ( ! [X4,X2,X7,X5,X3,X1] : (r2_hidden(X7,X5) | ~sP0(X7,X1,X2,X3,X4,X5)) )),
% 2.17/1.01    inference(equality_resolution,[],[f53])).
% 2.17/1.01  
% 2.17/1.01  cnf(c_21,plain,
% 2.17/1.01      ( ~ r2_hidden(X0,X1) | r1_tarski(k1_setfam_1(X1),X0) ),
% 2.17/1.01      inference(cnf_transformation,[],[f65]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4231,plain,
% 2.17/1.01      ( r2_hidden(X0,X1) != iProver_top
% 2.17/1.01      | r1_tarski(k1_setfam_1(X1),X0) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_23,plain,
% 2.17/1.01      ( ~ r1_tarski(X0,X1)
% 2.17/1.01      | ~ r1_tarski(X2,X3)
% 2.17/1.01      | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
% 2.17/1.01      | ~ v1_relat_1(X0)
% 2.17/1.01      | ~ v1_relat_1(X1)
% 2.17/1.01      | ~ v1_relat_1(X3)
% 2.17/1.01      | ~ v1_relat_1(X2) ),
% 2.17/1.01      inference(cnf_transformation,[],[f67]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_22,plain,
% 2.17/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.17/1.01      inference(cnf_transformation,[],[f66]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_19,plain,
% 2.17/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.17/1.01      inference(cnf_transformation,[],[f64]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_145,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
% 2.17/1.01      | ~ r1_tarski(X2,X3)
% 2.17/1.01      | ~ r1_tarski(X0,X1)
% 2.17/1.01      | ~ v1_relat_1(X1)
% 2.17/1.01      | ~ v1_relat_1(X3)
% 2.17/1.01      | ~ v1_relat_1(X2) ),
% 2.17/1.01      inference(global_propositional_subsumption,
% 2.17/1.01                [status(thm)],
% 2.17/1.01                [c_23,c_22,c_19]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_146,plain,
% 2.17/1.01      ( ~ r1_tarski(X0,X1)
% 2.17/1.01      | ~ r1_tarski(X2,X3)
% 2.17/1.01      | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3))
% 2.17/1.01      | ~ v1_relat_1(X1)
% 2.17/1.01      | ~ v1_relat_1(X3)
% 2.17/1.01      | ~ v1_relat_1(X2) ),
% 2.17/1.01      inference(renaming,[status(thm)],[c_145]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4226,plain,
% 2.17/1.01      ( r1_tarski(X0,X1) != iProver_top
% 2.17/1.01      | r1_tarski(X2,X3) != iProver_top
% 2.17/1.01      | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) = iProver_top
% 2.17/1.01      | v1_relat_1(X1) != iProver_top
% 2.17/1.01      | v1_relat_1(X3) != iProver_top
% 2.17/1.01      | v1_relat_1(X2) != iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_146]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_210,plain,
% 2.17/1.01      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.17/1.01      inference(prop_impl,[status(thm)],[c_19]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_211,plain,
% 2.17/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.17/1.01      inference(renaming,[status(thm)],[c_210]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_263,plain,
% 2.17/1.01      ( ~ r1_tarski(X0,X1) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.17/1.01      inference(bin_hyper_res,[status(thm)],[c_22,c_211]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4225,plain,
% 2.17/1.01      ( r1_tarski(X0,X1) != iProver_top
% 2.17/1.01      | v1_relat_1(X1) != iProver_top
% 2.17/1.01      | v1_relat_1(X0) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_263]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4360,plain,
% 2.17/1.01      ( r1_tarski(X0,X1) != iProver_top
% 2.17/1.01      | r1_tarski(X2,X3) != iProver_top
% 2.17/1.01      | r1_tarski(k5_relat_1(X0,X2),k5_relat_1(X1,X3)) = iProver_top
% 2.17/1.01      | v1_relat_1(X1) != iProver_top
% 2.17/1.01      | v1_relat_1(X3) != iProver_top ),
% 2.17/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_4226,c_4225]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4,plain,
% 2.17/1.01      ( ~ r1_tarski(X0,X1)
% 2.17/1.01      | ~ r1_tarski(X0,X2)
% 2.17/1.01      | r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2))) ),
% 2.17/1.01      inference(cnf_transformation,[],[f77]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4246,plain,
% 2.17/1.01      ( r1_tarski(X0,X1) != iProver_top
% 2.17/1.01      | r1_tarski(X0,X2) != iProver_top
% 2.17/1.01      | r1_tarski(X0,k1_setfam_1(k4_enumset1(X1,X1,X1,X1,X1,X2))) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_24,negated_conjecture,
% 2.17/1.01      ( ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) ),
% 2.17/1.01      inference(cnf_transformation,[],[f80]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4230,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) != iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5341,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top
% 2.17/1.01      | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) != iProver_top ),
% 2.17/1.01      inference(superposition,[status(thm)],[c_4246,c_4230]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_27,negated_conjecture,
% 2.17/1.01      ( v1_relat_1(sK2) ),
% 2.17/1.01      inference(cnf_transformation,[],[f68]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_28,plain,
% 2.17/1.01      ( v1_relat_1(sK2) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_26,negated_conjecture,
% 2.17/1.01      ( v1_relat_1(sK3) ),
% 2.17/1.01      inference(cnf_transformation,[],[f69]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_29,plain,
% 2.17/1.01      ( v1_relat_1(sK3) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_31,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) != iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4443,plain,
% 2.17/1.01      ( ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4))
% 2.17/1.01      | ~ r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3))
% 2.17/1.01      | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_4]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4444,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top
% 2.17/1.01      | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) != iProver_top
% 2.17/1.01      | r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k1_setfam_1(k4_enumset1(k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK3),k5_relat_1(sK2,sK4)))) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_4443]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_2,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f82]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4486,plain,
% 2.17/1.01      ( r1_tarski(sK2,sK2) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4487,plain,
% 2.17/1.01      ( r1_tarski(sK2,sK2) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_4486]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4685,plain,
% 2.17/1.01      ( ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0)
% 2.17/1.01      | ~ v1_relat_1(X0)
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_263]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4686,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0) != iProver_top
% 2.17/1.01      | v1_relat_1(X0) != iProver_top
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_4685]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4688,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) != iProver_top
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) = iProver_top
% 2.17/1.01      | v1_relat_1(sK3) != iProver_top ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_4686]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_3,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(X0,X0,X0,X0,X0,X1)),X0) ),
% 2.17/1.01      inference(cnf_transformation,[],[f76]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5026,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_3]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5029,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_5026]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4518,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(X0,X1))
% 2.17/1.01      | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X1)
% 2.17/1.01      | ~ r1_tarski(sK2,X0)
% 2.17/1.01      | ~ v1_relat_1(X0)
% 2.17/1.01      | ~ v1_relat_1(X1)
% 2.17/1.01      | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_146]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5311,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,X0))
% 2.17/1.01      | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0)
% 2.17/1.01      | ~ r1_tarski(sK2,sK2)
% 2.17/1.01      | ~ v1_relat_1(X0)
% 2.17/1.01      | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)))
% 2.17/1.01      | ~ v1_relat_1(sK2) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_4518]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5312,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,X0)) = iProver_top
% 2.17/1.01      | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),X0) != iProver_top
% 2.17/1.01      | r1_tarski(sK2,sK2) != iProver_top
% 2.17/1.01      | v1_relat_1(X0) != iProver_top
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
% 2.17/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_5311]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5314,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK3)) = iProver_top
% 2.17/1.01      | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK3) != iProver_top
% 2.17/1.01      | r1_tarski(sK2,sK2) != iProver_top
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
% 2.17/1.01      | v1_relat_1(sK3) != iProver_top
% 2.17/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_5312]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5699,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) != iProver_top ),
% 2.17/1.01      inference(global_propositional_subsumption,
% 2.17/1.01                [status(thm)],
% 2.17/1.01                [c_5341,c_28,c_29,c_31,c_4444,c_4487,c_4688,c_5029,c_5314]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_6023,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top
% 2.17/1.01      | r1_tarski(sK2,sK2) != iProver_top
% 2.17/1.01      | v1_relat_1(sK4) != iProver_top
% 2.17/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.17/1.01      inference(superposition,[status(thm)],[c_4360,c_5699]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_25,negated_conjecture,
% 2.17/1.01      ( v1_relat_1(sK4) ),
% 2.17/1.01      inference(cnf_transformation,[],[f70]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_30,plain,
% 2.17/1.01      ( v1_relat_1(sK4) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4459,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4))
% 2.17/1.01      | ~ r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4)
% 2.17/1.01      | ~ r1_tarski(sK2,sK2)
% 2.17/1.01      | ~ v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)))
% 2.17/1.01      | ~ v1_relat_1(sK4)
% 2.17/1.01      | ~ v1_relat_1(sK2) ),
% 2.17/1.01      inference(instantiation,[status(thm)],[c_146]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4460,plain,
% 2.17/1.01      ( r1_tarski(k5_relat_1(sK2,k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))),k5_relat_1(sK2,sK4)) = iProver_top
% 2.17/1.01      | r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top
% 2.17/1.01      | r1_tarski(sK2,sK2) != iProver_top
% 2.17/1.01      | v1_relat_1(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4))) != iProver_top
% 2.17/1.01      | v1_relat_1(sK4) != iProver_top
% 2.17/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_4459]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_6409,plain,
% 2.17/1.01      ( r1_tarski(k1_setfam_1(k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)),sK4) != iProver_top ),
% 2.17/1.01      inference(global_propositional_subsumption,
% 2.17/1.01                [status(thm)],
% 2.17/1.01                [c_6023,c_28,c_29,c_30,c_31,c_4444,c_4460,c_4487,c_4688,
% 2.17/1.01                 c_5029,c_5314]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_6414,plain,
% 2.17/1.01      ( r2_hidden(sK4,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK4)) != iProver_top ),
% 2.17/1.01      inference(superposition,[status(thm)],[c_4231,c_6409]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_18,plain,
% 2.17/1.01      ( sP0(X0,X1,X2,X3,X4,k4_enumset1(X4,X4,X3,X2,X1,X0)) ),
% 2.17/1.01      inference(cnf_transformation,[],[f88]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4232,plain,
% 2.17/1.01      ( sP0(X0,X1,X2,X3,X4,k4_enumset1(X4,X4,X3,X2,X1,X0)) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_11,plain,
% 2.17/1.01      ( ~ sP0(X0,X1,X2,X3,X4,X5) | r2_hidden(X0,X5) ),
% 2.17/1.01      inference(cnf_transformation,[],[f83]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_4239,plain,
% 2.17/1.01      ( sP0(X0,X1,X2,X3,X4,X5) != iProver_top
% 2.17/1.01      | r2_hidden(X0,X5) = iProver_top ),
% 2.17/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_5194,plain,
% 2.17/1.01      ( r2_hidden(X0,k4_enumset1(X1,X1,X2,X3,X4,X0)) = iProver_top ),
% 2.17/1.01      inference(superposition,[status(thm)],[c_4232,c_4239]) ).
% 2.17/1.01  
% 2.17/1.01  cnf(c_6418,plain,
% 2.17/1.01      ( $false ),
% 2.17/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_6414,c_5194]) ).
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.17/1.01  
% 2.17/1.01  ------                               Statistics
% 2.17/1.01  
% 2.17/1.01  ------ General
% 2.17/1.01  
% 2.17/1.01  abstr_ref_over_cycles:                  0
% 2.17/1.01  abstr_ref_under_cycles:                 0
% 2.17/1.01  gc_basic_clause_elim:                   0
% 2.17/1.01  forced_gc_time:                         0
% 2.17/1.01  parsing_time:                           0.013
% 2.17/1.01  unif_index_cands_time:                  0.
% 2.17/1.01  unif_index_add_time:                    0.
% 2.17/1.01  orderings_time:                         0.
% 2.17/1.01  out_proof_time:                         0.008
% 2.17/1.01  total_time:                             0.185
% 2.17/1.01  num_of_symbols:                         44
% 2.17/1.01  num_of_terms:                           3760
% 2.17/1.01  
% 2.17/1.01  ------ Preprocessing
% 2.17/1.01  
% 2.17/1.01  num_of_splits:                          0
% 2.17/1.01  num_of_split_atoms:                     0
% 2.17/1.01  num_of_reused_defs:                     0
% 2.17/1.01  num_eq_ax_congr_red:                    38
% 2.17/1.01  num_of_sem_filtered_clauses:            1
% 2.17/1.01  num_of_subtypes:                        0
% 2.17/1.01  monotx_restored_types:                  0
% 2.17/1.01  sat_num_of_epr_types:                   0
% 2.17/1.01  sat_num_of_non_cyclic_types:            0
% 2.17/1.01  sat_guarded_non_collapsed_types:        0
% 2.17/1.01  num_pure_diseq_elim:                    0
% 2.17/1.01  simp_replaced_by:                       0
% 2.17/1.01  res_preprocessed:                       121
% 2.17/1.01  prep_upred:                             0
% 2.17/1.01  prep_unflattend:                        232
% 2.17/1.01  smt_new_axioms:                         0
% 2.17/1.01  pred_elim_cands:                        4
% 2.17/1.01  pred_elim:                              1
% 2.17/1.01  pred_elim_cl:                           2
% 2.17/1.01  pred_elim_cycles:                       5
% 2.17/1.01  merged_defs:                            2
% 2.17/1.01  merged_defs_ncl:                        0
% 2.17/1.01  bin_hyper_res:                          3
% 2.17/1.01  prep_cycles:                            4
% 2.17/1.01  pred_elim_time:                         0.043
% 2.17/1.01  splitting_time:                         0.
% 2.17/1.01  sem_filter_time:                        0.
% 2.17/1.01  monotx_time:                            0.001
% 2.17/1.01  subtype_inf_time:                       0.
% 2.17/1.01  
% 2.17/1.01  ------ Problem properties
% 2.17/1.01  
% 2.17/1.01  clauses:                                25
% 2.17/1.01  conjectures:                            4
% 2.17/1.01  epr:                                    12
% 2.17/1.01  horn:                                   23
% 2.17/1.01  ground:                                 4
% 2.17/1.01  unary:                                  7
% 2.17/1.01  binary:                                 7
% 2.17/1.01  lits:                                   65
% 2.17/1.01  lits_eq:                                17
% 2.17/1.01  fd_pure:                                0
% 2.17/1.01  fd_pseudo:                              0
% 2.17/1.01  fd_cond:                                0
% 2.17/1.01  fd_pseudo_cond:                         3
% 2.17/1.01  ac_symbols:                             0
% 2.17/1.01  
% 2.17/1.01  ------ Propositional Solver
% 2.17/1.01  
% 2.17/1.01  prop_solver_calls:                      29
% 2.17/1.01  prop_fast_solver_calls:                 1415
% 2.17/1.01  smt_solver_calls:                       0
% 2.17/1.01  smt_fast_solver_calls:                  0
% 2.17/1.01  prop_num_of_clauses:                    1322
% 2.17/1.01  prop_preprocess_simplified:             5894
% 2.17/1.01  prop_fo_subsumed:                       5
% 2.17/1.01  prop_solver_time:                       0.
% 2.17/1.01  smt_solver_time:                        0.
% 2.17/1.01  smt_fast_solver_time:                   0.
% 2.17/1.01  prop_fast_solver_time:                  0.
% 2.17/1.01  prop_unsat_core_time:                   0.
% 2.17/1.01  
% 2.17/1.01  ------ QBF
% 2.17/1.01  
% 2.17/1.01  qbf_q_res:                              0
% 2.17/1.01  qbf_num_tautologies:                    0
% 2.17/1.01  qbf_prep_cycles:                        0
% 2.17/1.01  
% 2.17/1.01  ------ BMC1
% 2.17/1.01  
% 2.17/1.01  bmc1_current_bound:                     -1
% 2.17/1.01  bmc1_last_solved_bound:                 -1
% 2.17/1.01  bmc1_unsat_core_size:                   -1
% 2.17/1.01  bmc1_unsat_core_parents_size:           -1
% 2.17/1.01  bmc1_merge_next_fun:                    0
% 2.17/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.17/1.01  
% 2.17/1.01  ------ Instantiation
% 2.17/1.01  
% 2.17/1.01  inst_num_of_clauses:                    332
% 2.17/1.01  inst_num_in_passive:                    140
% 2.17/1.01  inst_num_in_active:                     169
% 2.17/1.01  inst_num_in_unprocessed:                23
% 2.17/1.01  inst_num_of_loops:                      200
% 2.17/1.01  inst_num_of_learning_restarts:          0
% 2.17/1.01  inst_num_moves_active_passive:          27
% 2.17/1.01  inst_lit_activity:                      0
% 2.17/1.01  inst_lit_activity_moves:                0
% 2.17/1.01  inst_num_tautologies:                   0
% 2.17/1.01  inst_num_prop_implied:                  0
% 2.17/1.01  inst_num_existing_simplified:           0
% 2.17/1.01  inst_num_eq_res_simplified:             0
% 2.17/1.01  inst_num_child_elim:                    0
% 2.17/1.01  inst_num_of_dismatching_blockings:      69
% 2.17/1.01  inst_num_of_non_proper_insts:           320
% 2.17/1.01  inst_num_of_duplicates:                 0
% 2.17/1.01  inst_inst_num_from_inst_to_res:         0
% 2.17/1.01  inst_dismatching_checking_time:         0.
% 2.17/1.01  
% 2.17/1.01  ------ Resolution
% 2.17/1.01  
% 2.17/1.01  res_num_of_clauses:                     0
% 2.17/1.01  res_num_in_passive:                     0
% 2.17/1.01  res_num_in_active:                      0
% 2.17/1.01  res_num_of_loops:                       125
% 2.17/1.01  res_forward_subset_subsumed:            46
% 2.17/1.01  res_backward_subset_subsumed:           0
% 2.17/1.01  res_forward_subsumed:                   0
% 2.17/1.01  res_backward_subsumed:                  0
% 2.17/1.01  res_forward_subsumption_resolution:     0
% 2.17/1.01  res_backward_subsumption_resolution:    0
% 2.17/1.01  res_clause_to_clause_subsumption:       1654
% 2.17/1.01  res_orphan_elimination:                 0
% 2.17/1.01  res_tautology_del:                      31
% 2.17/1.01  res_num_eq_res_simplified:              0
% 2.17/1.01  res_num_sel_changes:                    0
% 2.17/1.01  res_moves_from_active_to_pass:          0
% 2.17/1.01  
% 2.17/1.01  ------ Superposition
% 2.17/1.01  
% 2.17/1.01  sup_time_total:                         0.
% 2.17/1.01  sup_time_generating:                    0.
% 2.17/1.01  sup_time_sim_full:                      0.
% 2.17/1.01  sup_time_sim_immed:                     0.
% 2.17/1.01  
% 2.17/1.01  sup_num_of_clauses:                     49
% 2.17/1.01  sup_num_in_active:                      39
% 2.17/1.01  sup_num_in_passive:                     10
% 2.17/1.01  sup_num_of_loops:                       39
% 2.17/1.01  sup_fw_superposition:                   19
% 2.17/1.01  sup_bw_superposition:                   7
% 2.17/1.01  sup_immediate_simplified:               0
% 2.17/1.01  sup_given_eliminated:                   0
% 2.17/1.01  comparisons_done:                       0
% 2.17/1.01  comparisons_avoided:                    0
% 2.17/1.01  
% 2.17/1.01  ------ Simplifications
% 2.17/1.01  
% 2.17/1.01  
% 2.17/1.01  sim_fw_subset_subsumed:                 0
% 2.17/1.01  sim_bw_subset_subsumed:                 0
% 2.17/1.01  sim_fw_subsumed:                        0
% 2.17/1.01  sim_bw_subsumed:                        0
% 2.17/1.01  sim_fw_subsumption_res:                 2
% 2.17/1.01  sim_bw_subsumption_res:                 0
% 2.17/1.01  sim_tautology_del:                      1
% 2.17/1.01  sim_eq_tautology_del:                   2
% 2.17/1.01  sim_eq_res_simp:                        0
% 2.17/1.01  sim_fw_demodulated:                     0
% 2.17/1.01  sim_bw_demodulated:                     0
% 2.17/1.01  sim_light_normalised:                   0
% 2.17/1.01  sim_joinable_taut:                      0
% 2.17/1.01  sim_joinable_simp:                      0
% 2.17/1.01  sim_ac_normalised:                      0
% 2.17/1.01  sim_smt_subsumption:                    0
% 2.17/1.01  
%------------------------------------------------------------------------------
