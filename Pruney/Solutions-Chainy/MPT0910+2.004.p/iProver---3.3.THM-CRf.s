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
% DateTime   : Thu Dec  3 11:58:57 EST 2020

% Result     : Theorem 2.98s
% Output     : CNFRefutation 2.98s
% Verified   : 
% Statistics : Number of formulae       :  148 ( 519 expanded)
%              Number of clauses        :   80 ( 161 expanded)
%              Number of leaves         :   17 ( 114 expanded)
%              Depth                    :   23
%              Number of atoms          :  457 (2462 expanded)
%              Number of equality atoms :  315 (1550 expanded)
%              Maximal formula depth    :   20 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4,X5] :
                  ~ ( k4_mcart_1(X2,X3,X4,X5) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4,X5] :
              ( k4_mcart_1(X2,X3,X4,X5) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f15])).

fof(f40,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4,X5] :
              ( k4_mcart_1(X2,X3,X4,X5) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X5,X4,X3,X2] :
            ( k4_mcart_1(X2,X3,X4,X5) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,(
    ! [X0] :
      ( ( ! [X2,X3,X4,X5] :
            ( k4_mcart_1(X2,X3,X4,X5) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f40])).

fof(f68,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f41])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f58,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f18,conjecture,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2))
     => ( ! [X5] :
            ( m1_subset_1(X5,X0)
           => ! [X6] :
                ( m1_subset_1(X6,X1)
               => ! [X7] :
                    ( m1_subset_1(X7,X2)
                   => ( k3_mcart_1(X5,X6,X7) = X4
                     => X3 = X6 ) ) ) )
       => ( k6_mcart_1(X0,X1,X2,X4) = X3
          | k1_xboole_0 = X2
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4] :
        ( m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2))
       => ( ! [X5] :
              ( m1_subset_1(X5,X0)
             => ! [X6] :
                  ( m1_subset_1(X6,X1)
                 => ! [X7] :
                      ( m1_subset_1(X7,X2)
                     => ( k3_mcart_1(X5,X6,X7) = X4
                       => X3 = X6 ) ) ) )
         => ( k6_mcart_1(X0,X1,X2,X4) = X3
            | k1_xboole_0 = X2
            | k1_xboole_0 = X1
            | k1_xboole_0 = X0 ) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f31,plain,(
    ? [X0,X1,X2,X3,X4] :
      ( k6_mcart_1(X0,X1,X2,X4) != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X5] :
          ( ! [X6] :
              ( ! [X7] :
                  ( X3 = X6
                  | k3_mcart_1(X5,X6,X7) != X4
                  | ~ m1_subset_1(X7,X2) )
              | ~ m1_subset_1(X6,X1) )
          | ~ m1_subset_1(X5,X0) )
      & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f32,plain,(
    ? [X0,X1,X2,X3,X4] :
      ( k6_mcart_1(X0,X1,X2,X4) != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X5] :
          ( ! [X6] :
              ( ! [X7] :
                  ( X3 = X6
                  | k3_mcart_1(X5,X6,X7) != X4
                  | ~ m1_subset_1(X7,X2) )
              | ~ m1_subset_1(X6,X1) )
          | ~ m1_subset_1(X5,X0) )
      & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(flattening,[],[f31])).

fof(f44,plain,
    ( ? [X0,X1,X2,X3,X4] :
        ( k6_mcart_1(X0,X1,X2,X4) != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & ! [X5] :
            ( ! [X6] :
                ( ! [X7] :
                    ( X3 = X6
                    | k3_mcart_1(X5,X6,X7) != X4
                    | ~ m1_subset_1(X7,X2) )
                | ~ m1_subset_1(X6,X1) )
            | ~ m1_subset_1(X5,X0) )
        & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) )
   => ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5
      & k1_xboole_0 != sK4
      & k1_xboole_0 != sK3
      & k1_xboole_0 != sK2
      & ! [X5] :
          ( ! [X6] :
              ( ! [X7] :
                  ( sK5 = X6
                  | k3_mcart_1(X5,X6,X7) != sK6
                  | ~ m1_subset_1(X7,sK4) )
              | ~ m1_subset_1(X6,sK3) )
          | ~ m1_subset_1(X5,sK2) )
      & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5
    & k1_xboole_0 != sK4
    & k1_xboole_0 != sK3
    & k1_xboole_0 != sK2
    & ! [X5] :
        ( ! [X6] :
            ( ! [X7] :
                ( sK5 = X6
                | k3_mcart_1(X5,X6,X7) != sK6
                | ~ m1_subset_1(X7,sK4) )
            | ~ m1_subset_1(X6,sK3) )
        | ~ m1_subset_1(X5,sK2) )
    & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f32,f44])).

fof(f81,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f45])).

fof(f82,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f45])).

fof(f83,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f45])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 )
    <=> k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( k1_xboole_0 != X3
          & k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 )
        | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) )
      & ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
        | k1_xboole_0 = X3
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f43,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( k1_xboole_0 != X3
          & k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 )
        | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) )
      & ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
        | k1_xboole_0 = X3
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    inference(flattening,[],[f42])).

fof(f74,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f43])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f11])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f85,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f63,f62])).

fof(f103,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f74,f85])).

fof(f75,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X0
      | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f102,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X0
      | k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) ) ),
    inference(definition_unfolding,[],[f75,f85])).

fof(f114,plain,(
    ! [X2,X3,X1] : k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1),X2),X3) ),
    inference(equality_resolution,[],[f102])).

fof(f79,plain,(
    m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)) ),
    inference(cnf_transformation,[],[f45])).

fof(f105,plain,(
    m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
    inference(definition_unfolding,[],[f79,f62])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f23])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f8,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r2_hidden(X0,X1)
       => k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f27])).

fof(f67,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] : ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k2_zfmisc_1(X1,X2))
     => ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) )
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k1_mcart_1(X0),X1)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f80,plain,(
    ! [X6,X7,X5] :
      ( sK5 = X6
      | k3_mcart_1(X5,X6,X7) != sK6
      | ~ m1_subset_1(X7,sK4)
      | ~ m1_subset_1(X6,sK3)
      | ~ m1_subset_1(X5,sK2) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X2,X0,X1] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    inference(cnf_transformation,[],[f9])).

fof(f104,plain,(
    ! [X6,X7,X5] :
      ( sK5 = X6
      | k4_tarski(k4_tarski(X5,X6),X7) != sK6
      | ~ m1_subset_1(X7,sK4)
      | ~ m1_subset_1(X6,sK3)
      | ~ m1_subset_1(X5,sK2) ) ),
    inference(definition_unfolding,[],[f80,f61])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ~ ( ~ ! [X3] :
              ( m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
             => ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
                & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
                & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3) ) )
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
            & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
            & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3) )
          | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) )
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f16])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f97,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f72,f62])).

fof(f84,plain,(
    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
    inference(cnf_transformation,[],[f45])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k2_mcart_1(X0),X2)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
     => m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f64,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f95,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) ) ),
    inference(definition_unfolding,[],[f64,f62])).

fof(f73,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f96,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f73,f62])).

fof(f77,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X2
      | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f100,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X2
      | k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) ) ),
    inference(definition_unfolding,[],[f77,f85])).

fof(f112,plain,(
    ! [X0,X3,X1] : k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),k1_xboole_0),X3) ),
    inference(equality_resolution,[],[f100])).

cnf(c_20,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_914,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_11,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_921,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2138,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(sK1(X0),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_914,c_921])).

cnf(c_32,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_31,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_30,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f83])).

cnf(c_28,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f103])).

cnf(c_39,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_28])).

cnf(c_27,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0),X1),X2) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f114])).

cnf(c_40,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_27])).

cnf(c_509,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1169,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_509])).

cnf(c_1170,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1169])).

cnf(c_1171,plain,
    ( sK3 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_509])).

cnf(c_1172,plain,
    ( sK3 != k1_xboole_0
    | k1_xboole_0 = sK3
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1171])).

cnf(c_1173,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_509])).

cnf(c_1174,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1173])).

cnf(c_34,negated_conjecture,
    ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
    inference(cnf_transformation,[],[f105])).

cnf(c_909,plain,
    ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_920,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3169,plain,
    ( r2_hidden(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_909,c_920])).

cnf(c_13,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_17,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_relat_1(X1)
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_298,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
    | k2_zfmisc_1(X2,X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_17])).

cnf(c_299,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_298])).

cnf(c_908,plain,
    ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
    | r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_299])).

cnf(c_3388,plain,
    ( k4_tarski(k1_mcart_1(sK6),k2_mcart_1(sK6)) = sK6
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3169,c_908])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_931,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2324,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_914,c_931])).

cnf(c_3420,plain,
    ( k4_tarski(k1_mcart_1(sK6),k2_mcart_1(sK6)) = sK6
    | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3388,c_2324])).

cnf(c_16,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k1_mcart_1(X0),X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_917,plain,
    ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r2_hidden(k1_mcart_1(X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3387,plain,
    ( r2_hidden(k1_mcart_1(sK6),k2_zfmisc_1(sK2,sK3)) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3169,c_917])).

cnf(c_3468,plain,
    ( k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))) = k1_mcart_1(sK6)
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3387,c_908])).

cnf(c_4292,plain,
    ( k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))) = k1_mcart_1(sK6)
    | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3468,c_2324])).

cnf(c_33,negated_conjecture,
    ( ~ m1_subset_1(X0,sK4)
    | ~ m1_subset_1(X1,sK3)
    | ~ m1_subset_1(X2,sK2)
    | k4_tarski(k4_tarski(X2,X1),X0) != sK6
    | sK5 = X1 ),
    inference(cnf_transformation,[],[f104])).

cnf(c_910,plain,
    ( k4_tarski(k4_tarski(X0,X1),X2) != sK6
    | sK5 = X1
    | m1_subset_1(X2,sK4) != iProver_top
    | m1_subset_1(X1,sK3) != iProver_top
    | m1_subset_1(X0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_5274,plain,
    ( k4_tarski(k1_mcart_1(sK6),X0) != sK6
    | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | k2_mcart_1(k1_mcart_1(sK6)) = sK5
    | m1_subset_1(X0,sK4) != iProver_top
    | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
    | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_4292,c_910])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k6_mcart_1(X1,X2,X3,X0) = k2_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f97])).

cnf(c_912,plain,
    ( k6_mcart_1(X0,X1,X2,X3) = k2_mcart_1(k1_mcart_1(X3))
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3114,plain,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_909,c_912])).

cnf(c_3404,plain,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3114,c_32,c_31,c_30,c_39,c_40,c_1170,c_1172,c_1174])).

cnf(c_29,negated_conjecture,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_3407,plain,
    ( k2_mcart_1(k1_mcart_1(sK6)) != sK5 ),
    inference(demodulation,[status(thm)],[c_3404,c_29])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k2_mcart_1(X0),X2) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_918,plain,
    ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r2_hidden(k2_mcart_1(X0),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3466,plain,
    ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3387,c_918])).

cnf(c_4041,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_3466,c_2324])).

cnf(c_5156,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_4041,c_921])).

cnf(c_3467,plain,
    ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3387,c_917])).

cnf(c_4122,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_3467,c_2324])).

cnf(c_5171,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_4122,c_921])).

cnf(c_5279,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | k4_tarski(k1_mcart_1(sK6),X0) != sK6
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5274,c_3407,c_5156,c_5171])).

cnf(c_5280,plain,
    ( k4_tarski(k1_mcart_1(sK6),X0) != sK6
    | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_5279])).

cnf(c_5288,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(k2_mcart_1(sK6),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3420,c_5280])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_919,plain,
    ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) != iProver_top
    | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_4330,plain,
    ( m1_subset_1(k7_mcart_1(sK2,sK3,sK4,sK6),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_909,c_919])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k7_mcart_1(X1,X2,X3,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f96])).

cnf(c_913,plain,
    ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_3523,plain,
    ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_909,c_913])).

cnf(c_1289,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
    | k7_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_1533,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),X1))
    | k7_mcart_1(sK2,sK3,X1,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X1
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1289])).

cnf(c_2251,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k7_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1533])).

cnf(c_3409,plain,
    ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_2251])).

cnf(c_3594,plain,
    ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3523,c_34,c_32,c_31,c_30,c_3409])).

cnf(c_4377,plain,
    ( m1_subset_1(k2_mcart_1(sK6),sK4) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4330,c_3594])).

cnf(c_5905,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5288,c_4377])).

cnf(c_5983,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) != k1_xboole_0
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(superposition,[status(thm)],[c_5905,c_28])).

cnf(c_25,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),k1_xboole_0),X2) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f112])).

cnf(c_1433,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_25,c_25])).

cnf(c_6001,plain,
    ( sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_5983,c_1433])).

cnf(c_6002,plain,
    ( sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(equality_resolution_simp,[status(thm)],[c_6001])).

cnf(c_6703,plain,
    ( k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2138,c_32,c_31,c_30,c_39,c_40,c_1170,c_1172,c_1174,c_6002])).

cnf(c_6751,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6703,c_30])).

cnf(c_6765,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_6751])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n012.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:33:22 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.98/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.98/0.99  
% 2.98/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.98/0.99  
% 2.98/0.99  ------  iProver source info
% 2.98/0.99  
% 2.98/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.98/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.98/0.99  git: non_committed_changes: false
% 2.98/0.99  git: last_make_outside_of_git: false
% 2.98/0.99  
% 2.98/0.99  ------ 
% 2.98/0.99  
% 2.98/0.99  ------ Input Options
% 2.98/0.99  
% 2.98/0.99  --out_options                           all
% 2.98/0.99  --tptp_safe_out                         true
% 2.98/0.99  --problem_path                          ""
% 2.98/0.99  --include_path                          ""
% 2.98/0.99  --clausifier                            res/vclausify_rel
% 2.98/0.99  --clausifier_options                    --mode clausify
% 2.98/0.99  --stdin                                 false
% 2.98/0.99  --stats_out                             all
% 2.98/0.99  
% 2.98/0.99  ------ General Options
% 2.98/0.99  
% 2.98/0.99  --fof                                   false
% 2.98/0.99  --time_out_real                         305.
% 2.98/0.99  --time_out_virtual                      -1.
% 2.98/0.99  --symbol_type_check                     false
% 2.98/0.99  --clausify_out                          false
% 2.98/0.99  --sig_cnt_out                           false
% 2.98/1.00  --trig_cnt_out                          false
% 2.98/1.00  --trig_cnt_out_tolerance                1.
% 2.98/1.00  --trig_cnt_out_sk_spl                   false
% 2.98/1.00  --abstr_cl_out                          false
% 2.98/1.00  
% 2.98/1.00  ------ Global Options
% 2.98/1.00  
% 2.98/1.00  --schedule                              default
% 2.98/1.00  --add_important_lit                     false
% 2.98/1.00  --prop_solver_per_cl                    1000
% 2.98/1.00  --min_unsat_core                        false
% 2.98/1.00  --soft_assumptions                      false
% 2.98/1.00  --soft_lemma_size                       3
% 2.98/1.00  --prop_impl_unit_size                   0
% 2.98/1.00  --prop_impl_unit                        []
% 2.98/1.00  --share_sel_clauses                     true
% 2.98/1.00  --reset_solvers                         false
% 2.98/1.00  --bc_imp_inh                            [conj_cone]
% 2.98/1.00  --conj_cone_tolerance                   3.
% 2.98/1.00  --extra_neg_conj                        none
% 2.98/1.00  --large_theory_mode                     true
% 2.98/1.00  --prolific_symb_bound                   200
% 2.98/1.00  --lt_threshold                          2000
% 2.98/1.00  --clause_weak_htbl                      true
% 2.98/1.00  --gc_record_bc_elim                     false
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing Options
% 2.98/1.00  
% 2.98/1.00  --preprocessing_flag                    true
% 2.98/1.00  --time_out_prep_mult                    0.1
% 2.98/1.00  --splitting_mode                        input
% 2.98/1.00  --splitting_grd                         true
% 2.98/1.00  --splitting_cvd                         false
% 2.98/1.00  --splitting_cvd_svl                     false
% 2.98/1.00  --splitting_nvd                         32
% 2.98/1.00  --sub_typing                            true
% 2.98/1.00  --prep_gs_sim                           true
% 2.98/1.00  --prep_unflatten                        true
% 2.98/1.00  --prep_res_sim                          true
% 2.98/1.00  --prep_upred                            true
% 2.98/1.00  --prep_sem_filter                       exhaustive
% 2.98/1.00  --prep_sem_filter_out                   false
% 2.98/1.00  --pred_elim                             true
% 2.98/1.00  --res_sim_input                         true
% 2.98/1.00  --eq_ax_congr_red                       true
% 2.98/1.00  --pure_diseq_elim                       true
% 2.98/1.00  --brand_transform                       false
% 2.98/1.00  --non_eq_to_eq                          false
% 2.98/1.00  --prep_def_merge                        true
% 2.98/1.00  --prep_def_merge_prop_impl              false
% 2.98/1.00  --prep_def_merge_mbd                    true
% 2.98/1.00  --prep_def_merge_tr_red                 false
% 2.98/1.00  --prep_def_merge_tr_cl                  false
% 2.98/1.00  --smt_preprocessing                     true
% 2.98/1.00  --smt_ac_axioms                         fast
% 2.98/1.00  --preprocessed_out                      false
% 2.98/1.00  --preprocessed_stats                    false
% 2.98/1.00  
% 2.98/1.00  ------ Abstraction refinement Options
% 2.98/1.00  
% 2.98/1.00  --abstr_ref                             []
% 2.98/1.00  --abstr_ref_prep                        false
% 2.98/1.00  --abstr_ref_until_sat                   false
% 2.98/1.00  --abstr_ref_sig_restrict                funpre
% 2.98/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.98/1.00  --abstr_ref_under                       []
% 2.98/1.00  
% 2.98/1.00  ------ SAT Options
% 2.98/1.00  
% 2.98/1.00  --sat_mode                              false
% 2.98/1.00  --sat_fm_restart_options                ""
% 2.98/1.00  --sat_gr_def                            false
% 2.98/1.00  --sat_epr_types                         true
% 2.98/1.00  --sat_non_cyclic_types                  false
% 2.98/1.00  --sat_finite_models                     false
% 2.98/1.00  --sat_fm_lemmas                         false
% 2.98/1.00  --sat_fm_prep                           false
% 2.98/1.00  --sat_fm_uc_incr                        true
% 2.98/1.00  --sat_out_model                         small
% 2.98/1.00  --sat_out_clauses                       false
% 2.98/1.00  
% 2.98/1.00  ------ QBF Options
% 2.98/1.00  
% 2.98/1.00  --qbf_mode                              false
% 2.98/1.00  --qbf_elim_univ                         false
% 2.98/1.00  --qbf_dom_inst                          none
% 2.98/1.00  --qbf_dom_pre_inst                      false
% 2.98/1.00  --qbf_sk_in                             false
% 2.98/1.00  --qbf_pred_elim                         true
% 2.98/1.00  --qbf_split                             512
% 2.98/1.00  
% 2.98/1.00  ------ BMC1 Options
% 2.98/1.00  
% 2.98/1.00  --bmc1_incremental                      false
% 2.98/1.00  --bmc1_axioms                           reachable_all
% 2.98/1.00  --bmc1_min_bound                        0
% 2.98/1.00  --bmc1_max_bound                        -1
% 2.98/1.00  --bmc1_max_bound_default                -1
% 2.98/1.00  --bmc1_symbol_reachability              true
% 2.98/1.00  --bmc1_property_lemmas                  false
% 2.98/1.00  --bmc1_k_induction                      false
% 2.98/1.00  --bmc1_non_equiv_states                 false
% 2.98/1.00  --bmc1_deadlock                         false
% 2.98/1.00  --bmc1_ucm                              false
% 2.98/1.00  --bmc1_add_unsat_core                   none
% 2.98/1.00  --bmc1_unsat_core_children              false
% 2.98/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.98/1.00  --bmc1_out_stat                         full
% 2.98/1.00  --bmc1_ground_init                      false
% 2.98/1.00  --bmc1_pre_inst_next_state              false
% 2.98/1.00  --bmc1_pre_inst_state                   false
% 2.98/1.00  --bmc1_pre_inst_reach_state             false
% 2.98/1.00  --bmc1_out_unsat_core                   false
% 2.98/1.00  --bmc1_aig_witness_out                  false
% 2.98/1.00  --bmc1_verbose                          false
% 2.98/1.00  --bmc1_dump_clauses_tptp                false
% 2.98/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.98/1.00  --bmc1_dump_file                        -
% 2.98/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.98/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.98/1.00  --bmc1_ucm_extend_mode                  1
% 2.98/1.00  --bmc1_ucm_init_mode                    2
% 2.98/1.00  --bmc1_ucm_cone_mode                    none
% 2.98/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.98/1.00  --bmc1_ucm_relax_model                  4
% 2.98/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.98/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.98/1.00  --bmc1_ucm_layered_model                none
% 2.98/1.00  --bmc1_ucm_max_lemma_size               10
% 2.98/1.00  
% 2.98/1.00  ------ AIG Options
% 2.98/1.00  
% 2.98/1.00  --aig_mode                              false
% 2.98/1.00  
% 2.98/1.00  ------ Instantiation Options
% 2.98/1.00  
% 2.98/1.00  --instantiation_flag                    true
% 2.98/1.00  --inst_sos_flag                         false
% 2.98/1.00  --inst_sos_phase                        true
% 2.98/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.98/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.98/1.00  --inst_lit_sel_side                     num_symb
% 2.98/1.00  --inst_solver_per_active                1400
% 2.98/1.00  --inst_solver_calls_frac                1.
% 2.98/1.00  --inst_passive_queue_type               priority_queues
% 2.98/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.98/1.00  --inst_passive_queues_freq              [25;2]
% 2.98/1.00  --inst_dismatching                      true
% 2.98/1.00  --inst_eager_unprocessed_to_passive     true
% 2.98/1.00  --inst_prop_sim_given                   true
% 2.98/1.00  --inst_prop_sim_new                     false
% 2.98/1.00  --inst_subs_new                         false
% 2.98/1.00  --inst_eq_res_simp                      false
% 2.98/1.00  --inst_subs_given                       false
% 2.98/1.00  --inst_orphan_elimination               true
% 2.98/1.00  --inst_learning_loop_flag               true
% 2.98/1.00  --inst_learning_start                   3000
% 2.98/1.00  --inst_learning_factor                  2
% 2.98/1.00  --inst_start_prop_sim_after_learn       3
% 2.98/1.00  --inst_sel_renew                        solver
% 2.98/1.00  --inst_lit_activity_flag                true
% 2.98/1.00  --inst_restr_to_given                   false
% 2.98/1.00  --inst_activity_threshold               500
% 2.98/1.00  --inst_out_proof                        true
% 2.98/1.00  
% 2.98/1.00  ------ Resolution Options
% 2.98/1.00  
% 2.98/1.00  --resolution_flag                       true
% 2.98/1.00  --res_lit_sel                           adaptive
% 2.98/1.00  --res_lit_sel_side                      none
% 2.98/1.00  --res_ordering                          kbo
% 2.98/1.00  --res_to_prop_solver                    active
% 2.98/1.00  --res_prop_simpl_new                    false
% 2.98/1.00  --res_prop_simpl_given                  true
% 2.98/1.00  --res_passive_queue_type                priority_queues
% 2.98/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.98/1.00  --res_passive_queues_freq               [15;5]
% 2.98/1.00  --res_forward_subs                      full
% 2.98/1.00  --res_backward_subs                     full
% 2.98/1.00  --res_forward_subs_resolution           true
% 2.98/1.00  --res_backward_subs_resolution          true
% 2.98/1.00  --res_orphan_elimination                true
% 2.98/1.00  --res_time_limit                        2.
% 2.98/1.00  --res_out_proof                         true
% 2.98/1.00  
% 2.98/1.00  ------ Superposition Options
% 2.98/1.00  
% 2.98/1.00  --superposition_flag                    true
% 2.98/1.00  --sup_passive_queue_type                priority_queues
% 2.98/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.98/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.98/1.00  --demod_completeness_check              fast
% 2.98/1.00  --demod_use_ground                      true
% 2.98/1.00  --sup_to_prop_solver                    passive
% 2.98/1.00  --sup_prop_simpl_new                    true
% 2.98/1.00  --sup_prop_simpl_given                  true
% 2.98/1.00  --sup_fun_splitting                     false
% 2.98/1.00  --sup_smt_interval                      50000
% 2.98/1.00  
% 2.98/1.00  ------ Superposition Simplification Setup
% 2.98/1.00  
% 2.98/1.00  --sup_indices_passive                   []
% 2.98/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.98/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_full_bw                           [BwDemod]
% 2.98/1.00  --sup_immed_triv                        [TrivRules]
% 2.98/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.98/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_immed_bw_main                     []
% 2.98/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.98/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.98/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.98/1.00  
% 2.98/1.00  ------ Combination Options
% 2.98/1.00  
% 2.98/1.00  --comb_res_mult                         3
% 2.98/1.00  --comb_sup_mult                         2
% 2.98/1.00  --comb_inst_mult                        10
% 2.98/1.00  
% 2.98/1.00  ------ Debug Options
% 2.98/1.00  
% 2.98/1.00  --dbg_backtrace                         false
% 2.98/1.00  --dbg_dump_prop_clauses                 false
% 2.98/1.00  --dbg_dump_prop_clauses_file            -
% 2.98/1.00  --dbg_out_stat                          false
% 2.98/1.00  ------ Parsing...
% 2.98/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.98/1.00  ------ Proving...
% 2.98/1.00  ------ Problem Properties 
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  clauses                                 34
% 2.98/1.00  conjectures                             6
% 2.98/1.00  EPR                                     6
% 2.98/1.00  Horn                                    25
% 2.98/1.00  unary                                   12
% 2.98/1.00  binary                                  9
% 2.98/1.00  lits                                    80
% 2.98/1.00  lits eq                                 46
% 2.98/1.00  fd_pure                                 0
% 2.98/1.00  fd_pseudo                               0
% 2.98/1.00  fd_cond                                 8
% 2.98/1.00  fd_pseudo_cond                          3
% 2.98/1.00  AC symbols                              0
% 2.98/1.00  
% 2.98/1.00  ------ Schedule dynamic 5 is on 
% 2.98/1.00  
% 2.98/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  ------ 
% 2.98/1.00  Current options:
% 2.98/1.00  ------ 
% 2.98/1.00  
% 2.98/1.00  ------ Input Options
% 2.98/1.00  
% 2.98/1.00  --out_options                           all
% 2.98/1.00  --tptp_safe_out                         true
% 2.98/1.00  --problem_path                          ""
% 2.98/1.00  --include_path                          ""
% 2.98/1.00  --clausifier                            res/vclausify_rel
% 2.98/1.00  --clausifier_options                    --mode clausify
% 2.98/1.00  --stdin                                 false
% 2.98/1.00  --stats_out                             all
% 2.98/1.00  
% 2.98/1.00  ------ General Options
% 2.98/1.00  
% 2.98/1.00  --fof                                   false
% 2.98/1.00  --time_out_real                         305.
% 2.98/1.00  --time_out_virtual                      -1.
% 2.98/1.00  --symbol_type_check                     false
% 2.98/1.00  --clausify_out                          false
% 2.98/1.00  --sig_cnt_out                           false
% 2.98/1.00  --trig_cnt_out                          false
% 2.98/1.00  --trig_cnt_out_tolerance                1.
% 2.98/1.00  --trig_cnt_out_sk_spl                   false
% 2.98/1.00  --abstr_cl_out                          false
% 2.98/1.00  
% 2.98/1.00  ------ Global Options
% 2.98/1.00  
% 2.98/1.00  --schedule                              default
% 2.98/1.00  --add_important_lit                     false
% 2.98/1.00  --prop_solver_per_cl                    1000
% 2.98/1.00  --min_unsat_core                        false
% 2.98/1.00  --soft_assumptions                      false
% 2.98/1.00  --soft_lemma_size                       3
% 2.98/1.00  --prop_impl_unit_size                   0
% 2.98/1.00  --prop_impl_unit                        []
% 2.98/1.00  --share_sel_clauses                     true
% 2.98/1.00  --reset_solvers                         false
% 2.98/1.00  --bc_imp_inh                            [conj_cone]
% 2.98/1.00  --conj_cone_tolerance                   3.
% 2.98/1.00  --extra_neg_conj                        none
% 2.98/1.00  --large_theory_mode                     true
% 2.98/1.00  --prolific_symb_bound                   200
% 2.98/1.00  --lt_threshold                          2000
% 2.98/1.00  --clause_weak_htbl                      true
% 2.98/1.00  --gc_record_bc_elim                     false
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing Options
% 2.98/1.00  
% 2.98/1.00  --preprocessing_flag                    true
% 2.98/1.00  --time_out_prep_mult                    0.1
% 2.98/1.00  --splitting_mode                        input
% 2.98/1.00  --splitting_grd                         true
% 2.98/1.00  --splitting_cvd                         false
% 2.98/1.00  --splitting_cvd_svl                     false
% 2.98/1.00  --splitting_nvd                         32
% 2.98/1.00  --sub_typing                            true
% 2.98/1.00  --prep_gs_sim                           true
% 2.98/1.00  --prep_unflatten                        true
% 2.98/1.00  --prep_res_sim                          true
% 2.98/1.00  --prep_upred                            true
% 2.98/1.00  --prep_sem_filter                       exhaustive
% 2.98/1.00  --prep_sem_filter_out                   false
% 2.98/1.00  --pred_elim                             true
% 2.98/1.00  --res_sim_input                         true
% 2.98/1.00  --eq_ax_congr_red                       true
% 2.98/1.00  --pure_diseq_elim                       true
% 2.98/1.00  --brand_transform                       false
% 2.98/1.00  --non_eq_to_eq                          false
% 2.98/1.00  --prep_def_merge                        true
% 2.98/1.00  --prep_def_merge_prop_impl              false
% 2.98/1.00  --prep_def_merge_mbd                    true
% 2.98/1.00  --prep_def_merge_tr_red                 false
% 2.98/1.00  --prep_def_merge_tr_cl                  false
% 2.98/1.00  --smt_preprocessing                     true
% 2.98/1.00  --smt_ac_axioms                         fast
% 2.98/1.00  --preprocessed_out                      false
% 2.98/1.00  --preprocessed_stats                    false
% 2.98/1.00  
% 2.98/1.00  ------ Abstraction refinement Options
% 2.98/1.00  
% 2.98/1.00  --abstr_ref                             []
% 2.98/1.00  --abstr_ref_prep                        false
% 2.98/1.00  --abstr_ref_until_sat                   false
% 2.98/1.00  --abstr_ref_sig_restrict                funpre
% 2.98/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.98/1.00  --abstr_ref_under                       []
% 2.98/1.00  
% 2.98/1.00  ------ SAT Options
% 2.98/1.00  
% 2.98/1.00  --sat_mode                              false
% 2.98/1.00  --sat_fm_restart_options                ""
% 2.98/1.00  --sat_gr_def                            false
% 2.98/1.00  --sat_epr_types                         true
% 2.98/1.00  --sat_non_cyclic_types                  false
% 2.98/1.00  --sat_finite_models                     false
% 2.98/1.00  --sat_fm_lemmas                         false
% 2.98/1.00  --sat_fm_prep                           false
% 2.98/1.00  --sat_fm_uc_incr                        true
% 2.98/1.00  --sat_out_model                         small
% 2.98/1.00  --sat_out_clauses                       false
% 2.98/1.00  
% 2.98/1.00  ------ QBF Options
% 2.98/1.00  
% 2.98/1.00  --qbf_mode                              false
% 2.98/1.00  --qbf_elim_univ                         false
% 2.98/1.00  --qbf_dom_inst                          none
% 2.98/1.00  --qbf_dom_pre_inst                      false
% 2.98/1.00  --qbf_sk_in                             false
% 2.98/1.00  --qbf_pred_elim                         true
% 2.98/1.00  --qbf_split                             512
% 2.98/1.00  
% 2.98/1.00  ------ BMC1 Options
% 2.98/1.00  
% 2.98/1.00  --bmc1_incremental                      false
% 2.98/1.00  --bmc1_axioms                           reachable_all
% 2.98/1.00  --bmc1_min_bound                        0
% 2.98/1.00  --bmc1_max_bound                        -1
% 2.98/1.00  --bmc1_max_bound_default                -1
% 2.98/1.00  --bmc1_symbol_reachability              true
% 2.98/1.00  --bmc1_property_lemmas                  false
% 2.98/1.00  --bmc1_k_induction                      false
% 2.98/1.00  --bmc1_non_equiv_states                 false
% 2.98/1.00  --bmc1_deadlock                         false
% 2.98/1.00  --bmc1_ucm                              false
% 2.98/1.00  --bmc1_add_unsat_core                   none
% 2.98/1.00  --bmc1_unsat_core_children              false
% 2.98/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.98/1.00  --bmc1_out_stat                         full
% 2.98/1.00  --bmc1_ground_init                      false
% 2.98/1.00  --bmc1_pre_inst_next_state              false
% 2.98/1.00  --bmc1_pre_inst_state                   false
% 2.98/1.00  --bmc1_pre_inst_reach_state             false
% 2.98/1.00  --bmc1_out_unsat_core                   false
% 2.98/1.00  --bmc1_aig_witness_out                  false
% 2.98/1.00  --bmc1_verbose                          false
% 2.98/1.00  --bmc1_dump_clauses_tptp                false
% 2.98/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.98/1.00  --bmc1_dump_file                        -
% 2.98/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.98/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.98/1.00  --bmc1_ucm_extend_mode                  1
% 2.98/1.00  --bmc1_ucm_init_mode                    2
% 2.98/1.00  --bmc1_ucm_cone_mode                    none
% 2.98/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.98/1.00  --bmc1_ucm_relax_model                  4
% 2.98/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.98/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.98/1.00  --bmc1_ucm_layered_model                none
% 2.98/1.00  --bmc1_ucm_max_lemma_size               10
% 2.98/1.00  
% 2.98/1.00  ------ AIG Options
% 2.98/1.00  
% 2.98/1.00  --aig_mode                              false
% 2.98/1.00  
% 2.98/1.00  ------ Instantiation Options
% 2.98/1.00  
% 2.98/1.00  --instantiation_flag                    true
% 2.98/1.00  --inst_sos_flag                         false
% 2.98/1.00  --inst_sos_phase                        true
% 2.98/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.98/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.98/1.00  --inst_lit_sel_side                     none
% 2.98/1.00  --inst_solver_per_active                1400
% 2.98/1.00  --inst_solver_calls_frac                1.
% 2.98/1.00  --inst_passive_queue_type               priority_queues
% 2.98/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.98/1.00  --inst_passive_queues_freq              [25;2]
% 2.98/1.00  --inst_dismatching                      true
% 2.98/1.00  --inst_eager_unprocessed_to_passive     true
% 2.98/1.00  --inst_prop_sim_given                   true
% 2.98/1.00  --inst_prop_sim_new                     false
% 2.98/1.00  --inst_subs_new                         false
% 2.98/1.00  --inst_eq_res_simp                      false
% 2.98/1.00  --inst_subs_given                       false
% 2.98/1.00  --inst_orphan_elimination               true
% 2.98/1.00  --inst_learning_loop_flag               true
% 2.98/1.00  --inst_learning_start                   3000
% 2.98/1.00  --inst_learning_factor                  2
% 2.98/1.00  --inst_start_prop_sim_after_learn       3
% 2.98/1.00  --inst_sel_renew                        solver
% 2.98/1.00  --inst_lit_activity_flag                true
% 2.98/1.00  --inst_restr_to_given                   false
% 2.98/1.00  --inst_activity_threshold               500
% 2.98/1.00  --inst_out_proof                        true
% 2.98/1.00  
% 2.98/1.00  ------ Resolution Options
% 2.98/1.00  
% 2.98/1.00  --resolution_flag                       false
% 2.98/1.00  --res_lit_sel                           adaptive
% 2.98/1.00  --res_lit_sel_side                      none
% 2.98/1.00  --res_ordering                          kbo
% 2.98/1.00  --res_to_prop_solver                    active
% 2.98/1.00  --res_prop_simpl_new                    false
% 2.98/1.00  --res_prop_simpl_given                  true
% 2.98/1.00  --res_passive_queue_type                priority_queues
% 2.98/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.98/1.00  --res_passive_queues_freq               [15;5]
% 2.98/1.00  --res_forward_subs                      full
% 2.98/1.00  --res_backward_subs                     full
% 2.98/1.00  --res_forward_subs_resolution           true
% 2.98/1.00  --res_backward_subs_resolution          true
% 2.98/1.00  --res_orphan_elimination                true
% 2.98/1.00  --res_time_limit                        2.
% 2.98/1.00  --res_out_proof                         true
% 2.98/1.00  
% 2.98/1.00  ------ Superposition Options
% 2.98/1.00  
% 2.98/1.00  --superposition_flag                    true
% 2.98/1.00  --sup_passive_queue_type                priority_queues
% 2.98/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.98/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.98/1.00  --demod_completeness_check              fast
% 2.98/1.00  --demod_use_ground                      true
% 2.98/1.00  --sup_to_prop_solver                    passive
% 2.98/1.00  --sup_prop_simpl_new                    true
% 2.98/1.00  --sup_prop_simpl_given                  true
% 2.98/1.00  --sup_fun_splitting                     false
% 2.98/1.00  --sup_smt_interval                      50000
% 2.98/1.00  
% 2.98/1.00  ------ Superposition Simplification Setup
% 2.98/1.00  
% 2.98/1.00  --sup_indices_passive                   []
% 2.98/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.98/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.98/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_full_bw                           [BwDemod]
% 2.98/1.00  --sup_immed_triv                        [TrivRules]
% 2.98/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.98/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_immed_bw_main                     []
% 2.98/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.98/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.98/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.98/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.98/1.00  
% 2.98/1.00  ------ Combination Options
% 2.98/1.00  
% 2.98/1.00  --comb_res_mult                         3
% 2.98/1.00  --comb_sup_mult                         2
% 2.98/1.00  --comb_inst_mult                        10
% 2.98/1.00  
% 2.98/1.00  ------ Debug Options
% 2.98/1.00  
% 2.98/1.00  --dbg_backtrace                         false
% 2.98/1.00  --dbg_dump_prop_clauses                 false
% 2.98/1.00  --dbg_dump_prop_clauses_file            -
% 2.98/1.00  --dbg_out_stat                          false
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  ------ Proving...
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  % SZS status Theorem for theBenchmark.p
% 2.98/1.00  
% 2.98/1.00   Resolution empty clause
% 2.98/1.00  
% 2.98/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.98/1.00  
% 2.98/1.00  fof(f15,axiom,(
% 2.98/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4,X5] : ~(k4_mcart_1(X2,X3,X4,X5) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f29,plain,(
% 2.98/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4,X5] : (k4_mcart_1(X2,X3,X4,X5) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 2.98/1.00    inference(ennf_transformation,[],[f15])).
% 2.98/1.00  
% 2.98/1.00  fof(f40,plain,(
% 2.98/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4,X5] : (k4_mcart_1(X2,X3,X4,X5) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X5,X4,X3,X2] : (k4_mcart_1(X2,X3,X4,X5) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)))),
% 2.98/1.00    introduced(choice_axiom,[])).
% 2.98/1.00  
% 2.98/1.00  fof(f41,plain,(
% 2.98/1.00    ! [X0] : ((! [X2,X3,X4,X5] : (k4_mcart_1(X2,X3,X4,X5) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)) | k1_xboole_0 = X0)),
% 2.98/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f40])).
% 2.98/1.00  
% 2.98/1.00  fof(f68,plain,(
% 2.98/1.00    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(cnf_transformation,[],[f41])).
% 2.98/1.00  
% 2.98/1.00  fof(f6,axiom,(
% 2.98/1.00    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f22,plain,(
% 2.98/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 2.98/1.00    inference(ennf_transformation,[],[f6])).
% 2.98/1.00  
% 2.98/1.00  fof(f58,plain,(
% 2.98/1.00    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f22])).
% 2.98/1.00  
% 2.98/1.00  fof(f18,conjecture,(
% 2.98/1.00    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) => (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => (k3_mcart_1(X5,X6,X7) = X4 => X3 = X6)))) => (k6_mcart_1(X0,X1,X2,X4) = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f19,negated_conjecture,(
% 2.98/1.00    ~! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) => (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => (k3_mcart_1(X5,X6,X7) = X4 => X3 = X6)))) => (k6_mcart_1(X0,X1,X2,X4) = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 2.98/1.00    inference(negated_conjecture,[],[f18])).
% 2.98/1.00  
% 2.98/1.00  fof(f31,plain,(
% 2.98/1.00    ? [X0,X1,X2,X3,X4] : (((k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & ! [X5] : (! [X6] : (! [X7] : ((X3 = X6 | k3_mcart_1(X5,X6,X7) != X4) | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0))) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)))),
% 2.98/1.00    inference(ennf_transformation,[],[f19])).
% 2.98/1.00  
% 2.98/1.00  fof(f32,plain,(
% 2.98/1.00    ? [X0,X1,X2,X3,X4] : (k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X5] : (! [X6] : (! [X7] : (X3 = X6 | k3_mcart_1(X5,X6,X7) != X4 | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0)) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)))),
% 2.98/1.00    inference(flattening,[],[f31])).
% 2.98/1.00  
% 2.98/1.00  fof(f44,plain,(
% 2.98/1.00    ? [X0,X1,X2,X3,X4] : (k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X5] : (! [X6] : (! [X7] : (X3 = X6 | k3_mcart_1(X5,X6,X7) != X4 | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0)) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2))) => (k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X5] : (! [X6] : (! [X7] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4)) | ~m1_subset_1(X6,sK3)) | ~m1_subset_1(X5,sK2)) & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)))),
% 2.98/1.00    introduced(choice_axiom,[])).
% 2.98/1.00  
% 2.98/1.00  fof(f45,plain,(
% 2.98/1.00    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X5] : (! [X6] : (! [X7] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4)) | ~m1_subset_1(X6,sK3)) | ~m1_subset_1(X5,sK2)) & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4))),
% 2.98/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f32,f44])).
% 2.98/1.00  
% 2.98/1.00  fof(f81,plain,(
% 2.98/1.00    k1_xboole_0 != sK2),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f82,plain,(
% 2.98/1.00    k1_xboole_0 != sK3),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f83,plain,(
% 2.98/1.00    k1_xboole_0 != sK4),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f17,axiom,(
% 2.98/1.00    ! [X0,X1,X2,X3] : ((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) <=> k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f42,plain,(
% 2.98/1.00    ! [X0,X1,X2,X3] : (((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) & (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | (k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 2.98/1.00    inference(nnf_transformation,[],[f17])).
% 2.98/1.00  
% 2.98/1.00  fof(f43,plain,(
% 2.98/1.00    ! [X0,X1,X2,X3] : (((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) & (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.98/1.00    inference(flattening,[],[f42])).
% 2.98/1.00  
% 2.98/1.00  fof(f74,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(cnf_transformation,[],[f43])).
% 2.98/1.00  
% 2.98/1.00  fof(f11,axiom,(
% 2.98/1.00    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f63,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f11])).
% 2.98/1.00  
% 2.98/1.00  fof(f10,axiom,(
% 2.98/1.00    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f62,plain,(
% 2.98/1.00    ( ! [X2,X0,X1] : (k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f10])).
% 2.98/1.00  
% 2.98/1.00  fof(f85,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.98/1.00    inference(definition_unfolding,[],[f63,f62])).
% 2.98/1.00  
% 2.98/1.00  fof(f103,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(definition_unfolding,[],[f74,f85])).
% 2.98/1.00  
% 2.98/1.00  fof(f75,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X0 | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f43])).
% 2.98/1.00  
% 2.98/1.00  fof(f102,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X0 | k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) )),
% 2.98/1.00    inference(definition_unfolding,[],[f75,f85])).
% 2.98/1.00  
% 2.98/1.00  fof(f114,plain,(
% 2.98/1.00    ( ! [X2,X3,X1] : (k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1),X2),X3)) )),
% 2.98/1.00    inference(equality_resolution,[],[f102])).
% 2.98/1.00  
% 2.98/1.00  fof(f79,plain,(
% 2.98/1.00    m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4))),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f105,plain,(
% 2.98/1.00    m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))),
% 2.98/1.00    inference(definition_unfolding,[],[f79,f62])).
% 2.98/1.00  
% 2.98/1.00  fof(f7,axiom,(
% 2.98/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f23,plain,(
% 2.98/1.00    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 2.98/1.00    inference(ennf_transformation,[],[f7])).
% 2.98/1.00  
% 2.98/1.00  fof(f24,plain,(
% 2.98/1.00    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 2.98/1.00    inference(flattening,[],[f23])).
% 2.98/1.00  
% 2.98/1.00  fof(f59,plain,(
% 2.98/1.00    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f24])).
% 2.98/1.00  
% 2.98/1.00  fof(f8,axiom,(
% 2.98/1.00    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f60,plain,(
% 2.98/1.00    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.98/1.00    inference(cnf_transformation,[],[f8])).
% 2.98/1.00  
% 2.98/1.00  fof(f14,axiom,(
% 2.98/1.00    ! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,X1) => k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f27,plain,(
% 2.98/1.00    ! [X0,X1] : ((k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1)) | ~v1_relat_1(X1))),
% 2.98/1.00    inference(ennf_transformation,[],[f14])).
% 2.98/1.00  
% 2.98/1.00  fof(f28,plain,(
% 2.98/1.00    ! [X0,X1] : (k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1) | ~v1_relat_1(X1))),
% 2.98/1.00    inference(flattening,[],[f27])).
% 2.98/1.00  
% 2.98/1.00  fof(f67,plain,(
% 2.98/1.00    ( ! [X0,X1] : (k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1) | ~v1_relat_1(X1)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f28])).
% 2.98/1.00  
% 2.98/1.00  fof(f1,axiom,(
% 2.98/1.00    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f20,plain,(
% 2.98/1.00    ! [X0] : (v1_xboole_0(X0) => ! [X1] : ~r2_hidden(X1,X0))),
% 2.98/1.00    inference(unused_predicate_definition_removal,[],[f1])).
% 2.98/1.00  
% 2.98/1.00  fof(f21,plain,(
% 2.98/1.00    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0))),
% 2.98/1.00    inference(ennf_transformation,[],[f20])).
% 2.98/1.00  
% 2.98/1.00  fof(f46,plain,(
% 2.98/1.00    ( ! [X0,X1] : (~r2_hidden(X1,X0) | ~v1_xboole_0(X0)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f21])).
% 2.98/1.00  
% 2.98/1.00  fof(f13,axiom,(
% 2.98/1.00    ! [X0,X1,X2] : (r2_hidden(X0,k2_zfmisc_1(X1,X2)) => (r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f26,plain,(
% 2.98/1.00    ! [X0,X1,X2] : ((r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2)))),
% 2.98/1.00    inference(ennf_transformation,[],[f13])).
% 2.98/1.00  
% 2.98/1.00  fof(f65,plain,(
% 2.98/1.00    ( ! [X2,X0,X1] : (r2_hidden(k1_mcart_1(X0),X1) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2))) )),
% 2.98/1.00    inference(cnf_transformation,[],[f26])).
% 2.98/1.00  
% 2.98/1.00  fof(f80,plain,(
% 2.98/1.00    ( ! [X6,X7,X5] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4) | ~m1_subset_1(X6,sK3) | ~m1_subset_1(X5,sK2)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f9,axiom,(
% 2.98/1.00    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f61,plain,(
% 2.98/1.00    ( ! [X2,X0,X1] : (k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f9])).
% 2.98/1.00  
% 2.98/1.00  fof(f104,plain,(
% 2.98/1.00    ( ! [X6,X7,X5] : (sK5 = X6 | k4_tarski(k4_tarski(X5,X6),X7) != sK6 | ~m1_subset_1(X7,sK4) | ~m1_subset_1(X6,sK3) | ~m1_subset_1(X5,sK2)) )),
% 2.98/1.00    inference(definition_unfolding,[],[f80,f61])).
% 2.98/1.00  
% 2.98/1.00  fof(f16,axiom,(
% 2.98/1.00    ! [X0,X1,X2] : ~(~! [X3] : (m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) => (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3))) & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f30,plain,(
% 2.98/1.00    ! [X0,X1,X2] : (! [X3] : ((k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3)) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 2.98/1.00    inference(ennf_transformation,[],[f16])).
% 2.98/1.00  
% 2.98/1.00  fof(f72,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(cnf_transformation,[],[f30])).
% 2.98/1.00  
% 2.98/1.00  fof(f97,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(definition_unfolding,[],[f72,f62])).
% 2.98/1.00  
% 2.98/1.00  fof(f84,plain,(
% 2.98/1.00    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5),
% 2.98/1.00    inference(cnf_transformation,[],[f45])).
% 2.98/1.00  
% 2.98/1.00  fof(f66,plain,(
% 2.98/1.00    ( ! [X2,X0,X1] : (r2_hidden(k2_mcart_1(X0),X2) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2))) )),
% 2.98/1.00    inference(cnf_transformation,[],[f26])).
% 2.98/1.00  
% 2.98/1.00  fof(f12,axiom,(
% 2.98/1.00    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) => m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2))),
% 2.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.98/1.00  
% 2.98/1.00  fof(f25,plain,(
% 2.98/1.00    ! [X0,X1,X2,X3] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)))),
% 2.98/1.00    inference(ennf_transformation,[],[f12])).
% 2.98/1.00  
% 2.98/1.00  fof(f64,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))) )),
% 2.98/1.00    inference(cnf_transformation,[],[f25])).
% 2.98/1.00  
% 2.98/1.00  fof(f95,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))) )),
% 2.98/1.00    inference(definition_unfolding,[],[f64,f62])).
% 2.98/1.00  
% 2.98/1.00  fof(f73,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(cnf_transformation,[],[f30])).
% 2.98/1.00  
% 2.98/1.00  fof(f96,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.98/1.00    inference(definition_unfolding,[],[f73,f62])).
% 2.98/1.00  
% 2.98/1.00  fof(f77,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X2 | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.98/1.00    inference(cnf_transformation,[],[f43])).
% 2.98/1.00  
% 2.98/1.00  fof(f100,plain,(
% 2.98/1.00    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X2 | k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) )),
% 2.98/1.00    inference(definition_unfolding,[],[f77,f85])).
% 2.98/1.00  
% 2.98/1.00  fof(f112,plain,(
% 2.98/1.00    ( ! [X0,X3,X1] : (k1_xboole_0 = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),k1_xboole_0),X3)) )),
% 2.98/1.00    inference(equality_resolution,[],[f100])).
% 2.98/1.00  
% 2.98/1.00  cnf(c_20,plain,
% 2.98/1.00      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.98/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_914,plain,
% 2.98/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_11,plain,
% 2.98/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 2.98/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_921,plain,
% 2.98/1.00      ( m1_subset_1(X0,X1) = iProver_top | r2_hidden(X0,X1) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_2138,plain,
% 2.98/1.00      ( k1_xboole_0 = X0 | m1_subset_1(sK1(X0),X0) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_914,c_921]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_32,negated_conjecture,
% 2.98/1.00      ( k1_xboole_0 != sK2 ),
% 2.98/1.00      inference(cnf_transformation,[],[f81]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_31,negated_conjecture,
% 2.98/1.00      ( k1_xboole_0 != sK3 ),
% 2.98/1.00      inference(cnf_transformation,[],[f82]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_30,negated_conjecture,
% 2.98/1.00      ( k1_xboole_0 != sK4 ),
% 2.98/1.00      inference(cnf_transformation,[],[f83]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_28,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0
% 2.98/1.00      | k1_xboole_0 = X0
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | k1_xboole_0 = X3 ),
% 2.98/1.00      inference(cnf_transformation,[],[f103]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_39,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) != k1_xboole_0
% 2.98/1.00      | k1_xboole_0 = k1_xboole_0 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_28]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_27,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0),X1),X2) = k1_xboole_0 ),
% 2.98/1.00      inference(cnf_transformation,[],[f114]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_40,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_27]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_509,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1169,plain,
% 2.98/1.00      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_509]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1170,plain,
% 2.98/1.00      ( sK4 != k1_xboole_0 | k1_xboole_0 = sK4 | k1_xboole_0 != k1_xboole_0 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_1169]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1171,plain,
% 2.98/1.00      ( sK3 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK3 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_509]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1172,plain,
% 2.98/1.00      ( sK3 != k1_xboole_0 | k1_xboole_0 = sK3 | k1_xboole_0 != k1_xboole_0 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_1171]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1173,plain,
% 2.98/1.00      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_509]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1174,plain,
% 2.98/1.00      ( sK2 != k1_xboole_0 | k1_xboole_0 = sK2 | k1_xboole_0 != k1_xboole_0 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_1173]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_34,negated_conjecture,
% 2.98/1.00      ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
% 2.98/1.00      inference(cnf_transformation,[],[f105]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_909,plain,
% 2.98/1.00      ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_12,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.98/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_920,plain,
% 2.98/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 2.98/1.00      | r2_hidden(X0,X1) = iProver_top
% 2.98/1.00      | v1_xboole_0(X1) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3169,plain,
% 2.98/1.00      ( r2_hidden(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_909,c_920]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_13,plain,
% 2.98/1.00      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.98/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_17,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,X1)
% 2.98/1.00      | ~ v1_relat_1(X1)
% 2.98/1.00      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
% 2.98/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_298,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,X1)
% 2.98/1.00      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
% 2.98/1.00      | k2_zfmisc_1(X2,X3) != X1 ),
% 2.98/1.00      inference(resolution_lifted,[status(thm)],[c_13,c_17]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_299,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 2.98/1.00      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
% 2.98/1.00      inference(unflattening,[status(thm)],[c_298]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_908,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
% 2.98/1.00      | r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_299]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3388,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(sK6),k2_mcart_1(sK6)) = sK6
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3169,c_908]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_0,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.98/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_931,plain,
% 2.98/1.00      ( r2_hidden(X0,X1) != iProver_top | v1_xboole_0(X1) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_2324,plain,
% 2.98/1.00      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_914,c_931]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3420,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(sK6),k2_mcart_1(sK6)) = sK6
% 2.98/1.00      | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3388,c_2324]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_16,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) | r2_hidden(k1_mcart_1(X0),X1) ),
% 2.98/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_917,plain,
% 2.98/1.00      ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 2.98/1.00      | r2_hidden(k1_mcart_1(X0),X1) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3387,plain,
% 2.98/1.00      ( r2_hidden(k1_mcart_1(sK6),k2_zfmisc_1(sK2,sK3)) = iProver_top
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3169,c_917]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3468,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))) = k1_mcart_1(sK6)
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3387,c_908]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_4292,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))) = k1_mcart_1(sK6)
% 2.98/1.00      | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3468,c_2324]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_33,negated_conjecture,
% 2.98/1.00      ( ~ m1_subset_1(X0,sK4)
% 2.98/1.00      | ~ m1_subset_1(X1,sK3)
% 2.98/1.00      | ~ m1_subset_1(X2,sK2)
% 2.98/1.00      | k4_tarski(k4_tarski(X2,X1),X0) != sK6
% 2.98/1.00      | sK5 = X1 ),
% 2.98/1.00      inference(cnf_transformation,[],[f104]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_910,plain,
% 2.98/1.00      ( k4_tarski(k4_tarski(X0,X1),X2) != sK6
% 2.98/1.00      | sK5 = X1
% 2.98/1.00      | m1_subset_1(X2,sK4) != iProver_top
% 2.98/1.00      | m1_subset_1(X1,sK3) != iProver_top
% 2.98/1.00      | m1_subset_1(X0,sK2) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5274,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(sK6),X0) != sK6
% 2.98/1.00      | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | k2_mcart_1(k1_mcart_1(sK6)) = sK5
% 2.98/1.00      | m1_subset_1(X0,sK4) != iProver_top
% 2.98/1.00      | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
% 2.98/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_4292,c_910]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_22,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 2.98/1.00      | k6_mcart_1(X1,X2,X3,X0) = k2_mcart_1(k1_mcart_1(X0))
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | k1_xboole_0 = X3 ),
% 2.98/1.00      inference(cnf_transformation,[],[f97]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_912,plain,
% 2.98/1.00      ( k6_mcart_1(X0,X1,X2,X3) = k2_mcart_1(k1_mcart_1(X3))
% 2.98/1.00      | k1_xboole_0 = X0
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3114,plain,
% 2.98/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
% 2.98/1.00      | sK4 = k1_xboole_0
% 2.98/1.00      | sK3 = k1_xboole_0
% 2.98/1.00      | sK2 = k1_xboole_0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_909,c_912]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3404,plain,
% 2.98/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6)) ),
% 2.98/1.00      inference(global_propositional_subsumption,
% 2.98/1.00                [status(thm)],
% 2.98/1.00                [c_3114,c_32,c_31,c_30,c_39,c_40,c_1170,c_1172,c_1174]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_29,negated_conjecture,
% 2.98/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
% 2.98/1.00      inference(cnf_transformation,[],[f84]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3407,plain,
% 2.98/1.00      ( k2_mcart_1(k1_mcart_1(sK6)) != sK5 ),
% 2.98/1.00      inference(demodulation,[status(thm)],[c_3404,c_29]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_15,plain,
% 2.98/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) | r2_hidden(k2_mcart_1(X0),X2) ),
% 2.98/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_918,plain,
% 2.98/1.00      ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 2.98/1.00      | r2_hidden(k2_mcart_1(X0),X2) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3466,plain,
% 2.98/1.00      ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3387,c_918]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_4041,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3466,c_2324]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5156,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_4041,c_921]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3467,plain,
% 2.98/1.00      ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
% 2.98/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3387,c_917]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_4122,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3467,c_2324]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5171,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_4122,c_921]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5279,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | k4_tarski(k1_mcart_1(sK6),X0) != sK6
% 2.98/1.00      | m1_subset_1(X0,sK4) != iProver_top ),
% 2.98/1.00      inference(global_propositional_subsumption,
% 2.98/1.00                [status(thm)],
% 2.98/1.00                [c_5274,c_3407,c_5156,c_5171]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5280,plain,
% 2.98/1.00      ( k4_tarski(k1_mcart_1(sK6),X0) != sK6
% 2.98/1.00      | k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | m1_subset_1(X0,sK4) != iProver_top ),
% 2.98/1.00      inference(renaming,[status(thm)],[c_5279]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5288,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 2.98/1.00      | m1_subset_1(k2_mcart_1(sK6),sK4) != iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_3420,c_5280]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_14,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 2.98/1.00      | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) ),
% 2.98/1.00      inference(cnf_transformation,[],[f95]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_919,plain,
% 2.98/1.00      ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) != iProver_top
% 2.98/1.00      | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) = iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_4330,plain,
% 2.98/1.00      ( m1_subset_1(k7_mcart_1(sK2,sK3,sK4,sK6),sK4) = iProver_top ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_909,c_919]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_21,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 2.98/1.00      | k7_mcart_1(X1,X2,X3,X0) = k2_mcart_1(X0)
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | k1_xboole_0 = X3 ),
% 2.98/1.00      inference(cnf_transformation,[],[f96]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_913,plain,
% 2.98/1.00      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
% 2.98/1.00      | k1_xboole_0 = X0
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 2.98/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3523,plain,
% 2.98/1.00      ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
% 2.98/1.00      | sK4 = k1_xboole_0
% 2.98/1.00      | sK3 = k1_xboole_0
% 2.98/1.00      | sK2 = k1_xboole_0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_909,c_913]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1289,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
% 2.98/1.00      | k7_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(X0)
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = X2
% 2.98/1.00      | k1_xboole_0 = sK2 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_21]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1533,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),X1))
% 2.98/1.00      | k7_mcart_1(sK2,sK3,X1,X0) = k2_mcart_1(X0)
% 2.98/1.00      | k1_xboole_0 = X1
% 2.98/1.00      | k1_xboole_0 = sK3
% 2.98/1.00      | k1_xboole_0 = sK2 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_1289]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_2251,plain,
% 2.98/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 2.98/1.00      | k7_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(X0)
% 2.98/1.00      | k1_xboole_0 = sK4
% 2.98/1.00      | k1_xboole_0 = sK3
% 2.98/1.00      | k1_xboole_0 = sK2 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_1533]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3409,plain,
% 2.98/1.00      ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 2.98/1.00      | k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
% 2.98/1.00      | k1_xboole_0 = sK4
% 2.98/1.00      | k1_xboole_0 = sK3
% 2.98/1.00      | k1_xboole_0 = sK2 ),
% 2.98/1.00      inference(instantiation,[status(thm)],[c_2251]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_3594,plain,
% 2.98/1.00      ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6) ),
% 2.98/1.00      inference(global_propositional_subsumption,
% 2.98/1.00                [status(thm)],
% 2.98/1.00                [c_3523,c_34,c_32,c_31,c_30,c_3409]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_4377,plain,
% 2.98/1.00      ( m1_subset_1(k2_mcart_1(sK6),sK4) = iProver_top ),
% 2.98/1.00      inference(light_normalisation,[status(thm)],[c_4330,c_3594]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5905,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
% 2.98/1.00      inference(global_propositional_subsumption,[status(thm)],[c_5288,c_4377]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_5983,plain,
% 2.98/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) != k1_xboole_0
% 2.98/1.00      | sK4 = k1_xboole_0
% 2.98/1.00      | sK3 = k1_xboole_0
% 2.98/1.00      | sK2 = k1_xboole_0
% 2.98/1.00      | k1_xboole_0 = X0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_5905,c_28]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_25,plain,
% 2.98/1.00      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),k1_xboole_0),X2) = k1_xboole_0 ),
% 2.98/1.00      inference(cnf_transformation,[],[f112]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_1433,plain,
% 2.98/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.98/1.00      inference(superposition,[status(thm)],[c_25,c_25]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_6001,plain,
% 2.98/1.00      ( sK4 = k1_xboole_0
% 2.98/1.00      | sK3 = k1_xboole_0
% 2.98/1.00      | sK2 = k1_xboole_0
% 2.98/1.00      | k1_xboole_0 = X0
% 2.98/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 2.98/1.00      inference(light_normalisation,[status(thm)],[c_5983,c_1433]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_6002,plain,
% 2.98/1.00      ( sK4 = k1_xboole_0
% 2.98/1.00      | sK3 = k1_xboole_0
% 2.98/1.00      | sK2 = k1_xboole_0
% 2.98/1.00      | k1_xboole_0 = X0 ),
% 2.98/1.00      inference(equality_resolution_simp,[status(thm)],[c_6001]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_6703,plain,
% 2.98/1.00      ( k1_xboole_0 = X0 ),
% 2.98/1.00      inference(global_propositional_subsumption,
% 2.98/1.00                [status(thm)],
% 2.98/1.00                [c_2138,c_32,c_31,c_30,c_39,c_40,c_1170,c_1172,c_1174,c_6002]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_6751,plain,
% 2.98/1.00      ( k1_xboole_0 != k1_xboole_0 ),
% 2.98/1.00      inference(demodulation,[status(thm)],[c_6703,c_30]) ).
% 2.98/1.00  
% 2.98/1.00  cnf(c_6765,plain,
% 2.98/1.00      ( $false ),
% 2.98/1.00      inference(equality_resolution_simp,[status(thm)],[c_6751]) ).
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.98/1.00  
% 2.98/1.00  ------                               Statistics
% 2.98/1.00  
% 2.98/1.00  ------ General
% 2.98/1.00  
% 2.98/1.00  abstr_ref_over_cycles:                  0
% 2.98/1.00  abstr_ref_under_cycles:                 0
% 2.98/1.00  gc_basic_clause_elim:                   0
% 2.98/1.00  forced_gc_time:                         0
% 2.98/1.00  parsing_time:                           0.01
% 2.98/1.00  unif_index_cands_time:                  0.
% 2.98/1.00  unif_index_add_time:                    0.
% 2.98/1.00  orderings_time:                         0.
% 2.98/1.00  out_proof_time:                         0.011
% 2.98/1.00  total_time:                             0.211
% 2.98/1.00  num_of_symbols:                         53
% 2.98/1.00  num_of_terms:                           8604
% 2.98/1.00  
% 2.98/1.00  ------ Preprocessing
% 2.98/1.00  
% 2.98/1.00  num_of_splits:                          0
% 2.98/1.00  num_of_split_atoms:                     0
% 2.98/1.00  num_of_reused_defs:                     0
% 2.98/1.00  num_eq_ax_congr_red:                    60
% 2.98/1.00  num_of_sem_filtered_clauses:            1
% 2.98/1.00  num_of_subtypes:                        0
% 2.98/1.00  monotx_restored_types:                  0
% 2.98/1.00  sat_num_of_epr_types:                   0
% 2.98/1.00  sat_num_of_non_cyclic_types:            0
% 2.98/1.00  sat_guarded_non_collapsed_types:        0
% 2.98/1.00  num_pure_diseq_elim:                    0
% 2.98/1.00  simp_replaced_by:                       0
% 2.98/1.00  res_preprocessed:                       158
% 2.98/1.00  prep_upred:                             0
% 2.98/1.00  prep_unflattend:                        1
% 2.98/1.00  smt_new_axioms:                         0
% 2.98/1.00  pred_elim_cands:                        3
% 2.98/1.00  pred_elim:                              1
% 2.98/1.00  pred_elim_cl:                           1
% 2.98/1.00  pred_elim_cycles:                       3
% 2.98/1.00  merged_defs:                            0
% 2.98/1.00  merged_defs_ncl:                        0
% 2.98/1.00  bin_hyper_res:                          0
% 2.98/1.00  prep_cycles:                            4
% 2.98/1.00  pred_elim_time:                         0.001
% 2.98/1.00  splitting_time:                         0.
% 2.98/1.00  sem_filter_time:                        0.
% 2.98/1.00  monotx_time:                            0.001
% 2.98/1.00  subtype_inf_time:                       0.
% 2.98/1.00  
% 2.98/1.00  ------ Problem properties
% 2.98/1.00  
% 2.98/1.00  clauses:                                34
% 2.98/1.00  conjectures:                            6
% 2.98/1.00  epr:                                    6
% 2.98/1.00  horn:                                   25
% 2.98/1.00  ground:                                 5
% 2.98/1.00  unary:                                  12
% 2.98/1.00  binary:                                 9
% 2.98/1.00  lits:                                   80
% 2.98/1.00  lits_eq:                                46
% 2.98/1.00  fd_pure:                                0
% 2.98/1.00  fd_pseudo:                              0
% 2.98/1.00  fd_cond:                                8
% 2.98/1.00  fd_pseudo_cond:                         3
% 2.98/1.00  ac_symbols:                             0
% 2.98/1.00  
% 2.98/1.00  ------ Propositional Solver
% 2.98/1.00  
% 2.98/1.00  prop_solver_calls:                      28
% 2.98/1.00  prop_fast_solver_calls:                 996
% 2.98/1.00  smt_solver_calls:                       0
% 2.98/1.00  smt_fast_solver_calls:                  0
% 2.98/1.00  prop_num_of_clauses:                    2826
% 2.98/1.00  prop_preprocess_simplified:             9153
% 2.98/1.00  prop_fo_subsumed:                       18
% 2.98/1.00  prop_solver_time:                       0.
% 2.98/1.00  smt_solver_time:                        0.
% 2.98/1.00  smt_fast_solver_time:                   0.
% 2.98/1.00  prop_fast_solver_time:                  0.
% 2.98/1.00  prop_unsat_core_time:                   0.
% 2.98/1.00  
% 2.98/1.00  ------ QBF
% 2.98/1.00  
% 2.98/1.00  qbf_q_res:                              0
% 2.98/1.00  qbf_num_tautologies:                    0
% 2.98/1.00  qbf_prep_cycles:                        0
% 2.98/1.00  
% 2.98/1.00  ------ BMC1
% 2.98/1.00  
% 2.98/1.00  bmc1_current_bound:                     -1
% 2.98/1.00  bmc1_last_solved_bound:                 -1
% 2.98/1.00  bmc1_unsat_core_size:                   -1
% 2.98/1.00  bmc1_unsat_core_parents_size:           -1
% 2.98/1.00  bmc1_merge_next_fun:                    0
% 2.98/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.98/1.00  
% 2.98/1.00  ------ Instantiation
% 2.98/1.00  
% 2.98/1.00  inst_num_of_clauses:                    1032
% 2.98/1.00  inst_num_in_passive:                    369
% 2.98/1.00  inst_num_in_active:                     403
% 2.98/1.00  inst_num_in_unprocessed:                260
% 2.98/1.00  inst_num_of_loops:                      420
% 2.98/1.00  inst_num_of_learning_restarts:          0
% 2.98/1.00  inst_num_moves_active_passive:          16
% 2.98/1.00  inst_lit_activity:                      0
% 2.98/1.00  inst_lit_activity_moves:                0
% 2.98/1.00  inst_num_tautologies:                   0
% 2.98/1.00  inst_num_prop_implied:                  0
% 2.98/1.00  inst_num_existing_simplified:           0
% 2.98/1.00  inst_num_eq_res_simplified:             0
% 2.98/1.00  inst_num_child_elim:                    0
% 2.98/1.00  inst_num_of_dismatching_blockings:      63
% 2.98/1.00  inst_num_of_non_proper_insts:           667
% 2.98/1.00  inst_num_of_duplicates:                 0
% 2.98/1.00  inst_inst_num_from_inst_to_res:         0
% 2.98/1.00  inst_dismatching_checking_time:         0.
% 2.98/1.00  
% 2.98/1.00  ------ Resolution
% 2.98/1.00  
% 2.98/1.00  res_num_of_clauses:                     0
% 2.98/1.00  res_num_in_passive:                     0
% 2.98/1.00  res_num_in_active:                      0
% 2.98/1.00  res_num_of_loops:                       162
% 2.98/1.00  res_forward_subset_subsumed:            25
% 2.98/1.00  res_backward_subset_subsumed:           0
% 2.98/1.00  res_forward_subsumed:                   0
% 2.98/1.00  res_backward_subsumed:                  0
% 2.98/1.00  res_forward_subsumption_resolution:     0
% 2.98/1.00  res_backward_subsumption_resolution:    0
% 2.98/1.00  res_clause_to_clause_subsumption:       511
% 2.98/1.00  res_orphan_elimination:                 0
% 2.98/1.00  res_tautology_del:                      2
% 2.98/1.00  res_num_eq_res_simplified:              0
% 2.98/1.00  res_num_sel_changes:                    0
% 2.98/1.00  res_moves_from_active_to_pass:          0
% 2.98/1.00  
% 2.98/1.00  ------ Superposition
% 2.98/1.00  
% 2.98/1.00  sup_time_total:                         0.
% 2.98/1.00  sup_time_generating:                    0.
% 2.98/1.00  sup_time_sim_full:                      0.
% 2.98/1.00  sup_time_sim_immed:                     0.
% 2.98/1.00  
% 2.98/1.00  sup_num_of_clauses:                     86
% 2.98/1.00  sup_num_in_active:                      8
% 2.98/1.00  sup_num_in_passive:                     78
% 2.98/1.00  sup_num_of_loops:                       83
% 2.98/1.00  sup_fw_superposition:                   141
% 2.98/1.00  sup_bw_superposition:                   133
% 2.98/1.00  sup_immediate_simplified:               64
% 2.98/1.00  sup_given_eliminated:                   0
% 2.98/1.00  comparisons_done:                       0
% 2.98/1.00  comparisons_avoided:                    46
% 2.98/1.00  
% 2.98/1.00  ------ Simplifications
% 2.98/1.00  
% 2.98/1.00  
% 2.98/1.00  sim_fw_subset_subsumed:                 11
% 2.98/1.00  sim_bw_subset_subsumed:                 21
% 2.98/1.00  sim_fw_subsumed:                        5
% 2.98/1.00  sim_bw_subsumed:                        19
% 2.98/1.00  sim_fw_subsumption_res:                 1
% 2.98/1.00  sim_bw_subsumption_res:                 0
% 2.98/1.00  sim_tautology_del:                      2
% 2.98/1.00  sim_eq_tautology_del:                   33
% 2.98/1.00  sim_eq_res_simp:                        6
% 2.98/1.00  sim_fw_demodulated:                     25
% 2.98/1.00  sim_bw_demodulated:                     65
% 2.98/1.00  sim_light_normalised:                   8
% 2.98/1.00  sim_joinable_taut:                      0
% 2.98/1.00  sim_joinable_simp:                      0
% 2.98/1.00  sim_ac_normalised:                      0
% 2.98/1.00  sim_smt_subsumption:                    0
% 2.98/1.00  
%------------------------------------------------------------------------------
