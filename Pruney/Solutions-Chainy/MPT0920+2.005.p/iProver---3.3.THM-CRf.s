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
% DateTime   : Thu Dec  3 11:59:21 EST 2020

% Result     : Theorem 1.53s
% Output     : CNFRefutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 733 expanded)
%              Number of clauses        :   45 ( 209 expanded)
%              Number of leaves         :   13 ( 224 expanded)
%              Depth                    :   17
%              Number of atoms          :  449 (5349 expanded)
%              Number of equality atoms :  329 (3258 expanded)
%              Maximal formula depth    :   24 (   8 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,conjecture,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3))
     => ( ! [X6] :
            ( m1_subset_1(X6,X0)
           => ! [X7] :
                ( m1_subset_1(X7,X1)
               => ! [X8] :
                    ( m1_subset_1(X8,X2)
                   => ! [X9] :
                        ( m1_subset_1(X9,X3)
                       => ( k4_mcart_1(X6,X7,X8,X9) = X5
                         => X4 = X7 ) ) ) ) )
       => ( k9_mcart_1(X0,X1,X2,X3,X5) = X4
          | k1_xboole_0 = X3
          | k1_xboole_0 = X2
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4,X5] :
        ( m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3))
       => ( ! [X6] :
              ( m1_subset_1(X6,X0)
             => ! [X7] :
                  ( m1_subset_1(X7,X1)
                 => ! [X8] :
                      ( m1_subset_1(X8,X2)
                     => ! [X9] :
                          ( m1_subset_1(X9,X3)
                         => ( k4_mcart_1(X6,X7,X8,X9) = X5
                           => X4 = X7 ) ) ) ) )
         => ( k9_mcart_1(X0,X1,X2,X3,X5) = X4
            | k1_xboole_0 = X3
            | k1_xboole_0 = X2
            | k1_xboole_0 = X1
            | k1_xboole_0 = X0 ) ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f11,plain,(
    ? [X0,X1,X2,X3,X4,X5] :
      ( k9_mcart_1(X0,X1,X2,X3,X5) != X4
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( X4 = X7
                      | k4_mcart_1(X6,X7,X8,X9) != X5
                      | ~ m1_subset_1(X9,X3) )
                  | ~ m1_subset_1(X8,X2) )
              | ~ m1_subset_1(X7,X1) )
          | ~ m1_subset_1(X6,X0) )
      & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f12,plain,(
    ? [X0,X1,X2,X3,X4,X5] :
      ( k9_mcart_1(X0,X1,X2,X3,X5) != X4
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( X4 = X7
                      | k4_mcart_1(X6,X7,X8,X9) != X5
                      | ~ m1_subset_1(X9,X3) )
                  | ~ m1_subset_1(X8,X2) )
              | ~ m1_subset_1(X7,X1) )
          | ~ m1_subset_1(X6,X0) )
      & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(flattening,[],[f11])).

fof(f18,plain,
    ( ? [X0,X1,X2,X3,X4,X5] :
        ( k9_mcart_1(X0,X1,X2,X3,X5) != X4
        & k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & ! [X6] :
            ( ! [X7] :
                ( ! [X8] :
                    ( ! [X9] :
                        ( X4 = X7
                        | k4_mcart_1(X6,X7,X8,X9) != X5
                        | ~ m1_subset_1(X9,X3) )
                    | ~ m1_subset_1(X8,X2) )
                | ~ m1_subset_1(X7,X1) )
            | ~ m1_subset_1(X6,X0) )
        & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) )
   => ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8
      & k1_xboole_0 != sK7
      & k1_xboole_0 != sK6
      & k1_xboole_0 != sK5
      & k1_xboole_0 != sK4
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( sK8 = X7
                      | k4_mcart_1(X6,X7,X8,X9) != sK9
                      | ~ m1_subset_1(X9,sK7) )
                  | ~ m1_subset_1(X8,sK6) )
              | ~ m1_subset_1(X7,sK5) )
          | ~ m1_subset_1(X6,sK4) )
      & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,
    ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8
    & k1_xboole_0 != sK7
    & k1_xboole_0 != sK6
    & k1_xboole_0 != sK5
    & k1_xboole_0 != sK4
    & ! [X6] :
        ( ! [X7] :
            ( ! [X8] :
                ( ! [X9] :
                    ( sK8 = X7
                    | k4_mcart_1(X6,X7,X8,X9) != sK9
                    | ~ m1_subset_1(X9,sK7) )
                | ~ m1_subset_1(X8,sK6) )
            | ~ m1_subset_1(X7,sK5) )
        | ~ m1_subset_1(X6,sK4) )
    & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f12,f18])).

fof(f32,plain,(
    m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] : k4_zfmisc_1(X0,X1,X2,X3) = k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X2,X0,X3,X1] : k4_zfmisc_1(X0,X1,X2,X3) = k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) ),
    inference(cnf_transformation,[],[f3])).

fof(f50,plain,(
    m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7)) ),
    inference(definition_unfolding,[],[f32,f22])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ~ ( ? [X4] :
            ( ! [X5] :
                ( m1_subset_1(X5,X0)
               => ! [X6] :
                    ( m1_subset_1(X6,X1)
                   => ! [X7] :
                        ( m1_subset_1(X7,X2)
                       => ! [X8] :
                            ( m1_subset_1(X8,X3)
                           => k4_mcart_1(X5,X6,X7,X8) != X4 ) ) ) )
            & m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) )
        & k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( ? [X5] :
              ( ? [X6] :
                  ( ? [X7] :
                      ( ? [X8] :
                          ( k4_mcart_1(X5,X6,X7,X8) = X4
                          & m1_subset_1(X8,X3) )
                      & m1_subset_1(X7,X2) )
                  & m1_subset_1(X6,X1) )
              & m1_subset_1(X5,X0) )
          | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) )
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f16,plain,(
    ! [X6,X7,X5,X4,X3,X2,X1,X0] :
      ( ? [X8] :
          ( k4_mcart_1(X5,X6,X7,X8) = X4
          & m1_subset_1(X8,X3) )
     => ( k4_mcart_1(X5,X6,X7,sK3(X0,X1,X2,X3,X4)) = X4
        & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) ) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,(
    ! [X6,X5,X4,X3,X2,X1,X0] :
      ( ? [X7] :
          ( ? [X8] :
              ( k4_mcart_1(X5,X6,X7,X8) = X4
              & m1_subset_1(X8,X3) )
          & m1_subset_1(X7,X2) )
     => ( ? [X8] :
            ( k4_mcart_1(X5,X6,sK2(X0,X1,X2,X3,X4),X8) = X4
            & m1_subset_1(X8,X3) )
        & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2) ) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ! [X5,X4,X3,X2,X1,X0] :
      ( ? [X6] :
          ( ? [X7] :
              ( ? [X8] :
                  ( k4_mcart_1(X5,X6,X7,X8) = X4
                  & m1_subset_1(X8,X3) )
              & m1_subset_1(X7,X2) )
          & m1_subset_1(X6,X1) )
     => ( ? [X7] :
            ( ? [X8] :
                ( k4_mcart_1(X5,sK1(X0,X1,X2,X3,X4),X7,X8) = X4
                & m1_subset_1(X8,X3) )
            & m1_subset_1(X7,X2) )
        & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ! [X4,X3,X2,X1,X0] :
      ( ? [X5] :
          ( ? [X6] :
              ( ? [X7] :
                  ( ? [X8] :
                      ( k4_mcart_1(X5,X6,X7,X8) = X4
                      & m1_subset_1(X8,X3) )
                  & m1_subset_1(X7,X2) )
              & m1_subset_1(X6,X1) )
          & m1_subset_1(X5,X0) )
     => ( ? [X6] :
            ( ? [X7] :
                ( ? [X8] :
                    ( k4_mcart_1(sK0(X0,X1,X2,X3,X4),X6,X7,X8) = X4
                    & m1_subset_1(X8,X3) )
                & m1_subset_1(X7,X2) )
            & m1_subset_1(X6,X1) )
        & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( ( k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4
            & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)
            & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)
            & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)
            & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) )
          | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) )
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f8,f16,f15,f14,f13])).

fof(f27,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X2,X0,X1] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    inference(cnf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f21,f20])).

fof(f40,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f27,f39,f22])).

fof(f34,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f19])).

fof(f35,plain,(
    k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f19])).

fof(f36,plain,(
    k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f19])).

fof(f37,plain,(
    k1_xboole_0 != sK7 ),
    inference(cnf_transformation,[],[f19])).

fof(f33,plain,(
    ! [X6,X8,X7,X9] :
      ( sK8 = X7
      | k4_mcart_1(X6,X7,X8,X9) != sK9
      | ~ m1_subset_1(X9,sK7)
      | ~ m1_subset_1(X8,sK6)
      | ~ m1_subset_1(X7,sK5)
      | ~ m1_subset_1(X6,sK4) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f49,plain,(
    ! [X6,X8,X7,X9] :
      ( sK8 = X7
      | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK9
      | ~ m1_subset_1(X9,sK7)
      | ~ m1_subset_1(X8,sK6)
      | ~ m1_subset_1(X7,sK5)
      | ~ m1_subset_1(X6,sK4) ) ),
    inference(definition_unfolding,[],[f33,f39])).

fof(f23,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f44,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f23,f22])).

fof(f24,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f43,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f24,f22])).

fof(f25,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f42,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f25,f22])).

fof(f26,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f41,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f26,f22])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
     => ~ ( ? [X5,X6,X7,X8] :
              ( ~ ( k11_mcart_1(X0,X1,X2,X3,X4) = X8
                  & k10_mcart_1(X0,X1,X2,X3,X4) = X7
                  & k9_mcart_1(X0,X1,X2,X3,X4) = X6
                  & k8_mcart_1(X0,X1,X2,X3,X4) = X5 )
              & k4_mcart_1(X5,X6,X7,X8) = X4 )
          & k1_xboole_0 != X3
          & k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ! [X5,X6,X7,X8] :
          ( ( k11_mcart_1(X0,X1,X2,X3,X4) = X8
            & k10_mcart_1(X0,X1,X2,X3,X4) = X7
            & k9_mcart_1(X0,X1,X2,X3,X4) = X6
            & k8_mcart_1(X0,X1,X2,X3,X4) = X5 )
          | k4_mcart_1(X5,X6,X7,X8) != X4 )
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f10,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ! [X5,X6,X7,X8] :
          ( ( k11_mcart_1(X0,X1,X2,X3,X4) = X8
            & k10_mcart_1(X0,X1,X2,X3,X4) = X7
            & k9_mcart_1(X0,X1,X2,X3,X4) = X6
            & k8_mcart_1(X0,X1,X2,X3,X4) = X5 )
          | k4_mcart_1(X5,X6,X7,X8) != X4 )
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(flattening,[],[f9])).

fof(f29,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( k9_mcart_1(X0,X1,X2,X3,X4) = X6
      | k4_mcart_1(X5,X6,X7,X8) != X4
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f47,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( k9_mcart_1(X0,X1,X2,X3,X4) = X6
      | k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8) != X4
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) ) ),
    inference(definition_unfolding,[],[f29,f39,f22])).

fof(f53,plain,(
    ! [X6,X2,X0,X8,X7,X5,X3,X1] :
      ( k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8)) = X6
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8),k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) ) ),
    inference(equality_resolution,[],[f47])).

fof(f38,plain,(
    k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
    inference(cnf_transformation,[],[f19])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_323,plain,
    ( m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
    | k4_tarski(k4_tarski(k4_tarski(sK0(X1,X2,X3,X4,X0),sK1(X1,X2,X3,X4,X0)),sK2(X1,X2,X3,X4,X0)),sK3(X1,X2,X3,X4,X0)) = X0
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_333,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2124,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9
    | sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_323,c_333])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_12,negated_conjecture,
    ( k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_11,negated_conjecture,
    ( k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_10,negated_conjecture,
    ( k1_xboole_0 != sK7 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_136,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_155,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_136])).

cnf(c_137,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_491,plain,
    ( sK7 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK7 ),
    inference(instantiation,[status(thm)],[c_137])).

cnf(c_492,plain,
    ( sK7 != k1_xboole_0
    | k1_xboole_0 = sK7
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_491])).

cnf(c_493,plain,
    ( sK6 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK6 ),
    inference(instantiation,[status(thm)],[c_137])).

cnf(c_494,plain,
    ( sK6 != k1_xboole_0
    | k1_xboole_0 = sK6
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_493])).

cnf(c_495,plain,
    ( sK5 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK5 ),
    inference(instantiation,[status(thm)],[c_137])).

cnf(c_496,plain,
    ( sK5 != k1_xboole_0
    | k1_xboole_0 = sK5
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_495])).

cnf(c_497,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_137])).

cnf(c_498,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_497])).

cnf(c_2329,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2124,c_13,c_12,c_11,c_10,c_155,c_492,c_494,c_496,c_498])).

cnf(c_14,negated_conjecture,
    ( ~ m1_subset_1(X0,sK7)
    | ~ m1_subset_1(X1,sK6)
    | ~ m1_subset_1(X2,sK5)
    | ~ m1_subset_1(X3,sK4)
    | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK9
    | sK8 = X2 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_324,plain,
    ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK9
    | sK8 = X1
    | m1_subset_1(X3,sK7) != iProver_top
    | m1_subset_1(X2,sK6) != iProver_top
    | m1_subset_1(X1,sK5) != iProver_top
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2334,plain,
    ( sK1(sK4,sK5,sK6,sK7,sK9) = sK8
    | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) != iProver_top
    | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) != iProver_top
    | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) != iProver_top
    | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2329,c_324])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
    | m1_subset_1(sK0(X1,X2,X3,X4,X0),X1)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_329,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
    | m1_subset_1(sK0(X2,X1,X0,X3,X4),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_806,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_323,c_329])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
    | m1_subset_1(sK1(X1,X2,X3,X4,X0),X2)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_330,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
    | m1_subset_1(sK1(X2,X1,X0,X3,X4),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1016,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_323,c_330])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
    | m1_subset_1(sK2(X1,X2,X3,X4,X0),X3)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_331,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
    | m1_subset_1(sK2(X2,X1,X0,X3,X4),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1165,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_323,c_331])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
    | m1_subset_1(sK3(X1,X2,X3,X4,X0),X4)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_332,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
    | m1_subset_1(sK3(X2,X1,X0,X3,X4),X3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1174,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) = iProver_top ),
    inference(superposition,[status(thm)],[c_323,c_332])).

cnf(c_2784,plain,
    ( sK1(sK4,sK5,sK6,sK7,sK9) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2334,c_13,c_12,c_11,c_10,c_155,c_492,c_494,c_496,c_498,c_806,c_1016,c_1165,c_1174])).

cnf(c_2788,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK8),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
    inference(demodulation,[status(thm)],[c_2784,c_2329])).

cnf(c_7,plain,
    ( ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3),k2_zfmisc_1(k3_zfmisc_1(X4,X5,X6),X7))
    | k9_mcart_1(X4,X5,X6,X7,k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3)) = X1
    | k1_xboole_0 = X7
    | k1_xboole_0 = X6
    | k1_xboole_0 = X5
    | k1_xboole_0 = X4 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_326,plain,
    ( k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7)) = X5
    | k1_xboole_0 = X0
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7),k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3365,plain,
    ( k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK8),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9))) = sK8
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2788,c_326])).

cnf(c_3380,plain,
    ( k9_mcart_1(X0,X1,X2,X3,sK9) = sK8
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3365,c_2788])).

cnf(c_3543,plain,
    ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) = sK8
    | sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_323,c_3380])).

cnf(c_9,negated_conjecture,
    ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
    inference(cnf_transformation,[],[f38])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3543,c_498,c_496,c_494,c_492,c_155,c_9,c_10,c_11,c_12,c_13])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n020.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 12:00:37 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.53/0.93  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.53/0.93  
% 1.53/0.93  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.53/0.93  
% 1.53/0.93  ------  iProver source info
% 1.53/0.93  
% 1.53/0.93  git: date: 2020-06-30 10:37:57 +0100
% 1.53/0.93  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.53/0.93  git: non_committed_changes: false
% 1.53/0.93  git: last_make_outside_of_git: false
% 1.53/0.93  
% 1.53/0.93  ------ 
% 1.53/0.93  
% 1.53/0.93  ------ Input Options
% 1.53/0.93  
% 1.53/0.93  --out_options                           all
% 1.53/0.93  --tptp_safe_out                         true
% 1.53/0.93  --problem_path                          ""
% 1.53/0.93  --include_path                          ""
% 1.53/0.93  --clausifier                            res/vclausify_rel
% 1.53/0.93  --clausifier_options                    --mode clausify
% 1.53/0.93  --stdin                                 false
% 1.53/0.93  --stats_out                             all
% 1.53/0.93  
% 1.53/0.93  ------ General Options
% 1.53/0.93  
% 1.53/0.93  --fof                                   false
% 1.53/0.93  --time_out_real                         305.
% 1.53/0.93  --time_out_virtual                      -1.
% 1.53/0.93  --symbol_type_check                     false
% 1.53/0.93  --clausify_out                          false
% 1.53/0.93  --sig_cnt_out                           false
% 1.53/0.93  --trig_cnt_out                          false
% 1.53/0.93  --trig_cnt_out_tolerance                1.
% 1.53/0.93  --trig_cnt_out_sk_spl                   false
% 1.53/0.93  --abstr_cl_out                          false
% 1.53/0.93  
% 1.53/0.93  ------ Global Options
% 1.53/0.93  
% 1.53/0.93  --schedule                              default
% 1.53/0.93  --add_important_lit                     false
% 1.53/0.93  --prop_solver_per_cl                    1000
% 1.53/0.93  --min_unsat_core                        false
% 1.53/0.93  --soft_assumptions                      false
% 1.53/0.93  --soft_lemma_size                       3
% 1.53/0.93  --prop_impl_unit_size                   0
% 1.53/0.93  --prop_impl_unit                        []
% 1.53/0.93  --share_sel_clauses                     true
% 1.53/0.93  --reset_solvers                         false
% 1.53/0.93  --bc_imp_inh                            [conj_cone]
% 1.53/0.93  --conj_cone_tolerance                   3.
% 1.53/0.93  --extra_neg_conj                        none
% 1.53/0.93  --large_theory_mode                     true
% 1.53/0.93  --prolific_symb_bound                   200
% 1.53/0.93  --lt_threshold                          2000
% 1.53/0.93  --clause_weak_htbl                      true
% 1.53/0.93  --gc_record_bc_elim                     false
% 1.53/0.93  
% 1.53/0.93  ------ Preprocessing Options
% 1.53/0.93  
% 1.53/0.93  --preprocessing_flag                    true
% 1.53/0.93  --time_out_prep_mult                    0.1
% 1.53/0.93  --splitting_mode                        input
% 1.53/0.93  --splitting_grd                         true
% 1.53/0.93  --splitting_cvd                         false
% 1.53/0.93  --splitting_cvd_svl                     false
% 1.53/0.93  --splitting_nvd                         32
% 1.53/0.93  --sub_typing                            true
% 1.53/0.93  --prep_gs_sim                           true
% 1.53/0.93  --prep_unflatten                        true
% 1.53/0.93  --prep_res_sim                          true
% 1.53/0.93  --prep_upred                            true
% 1.53/0.93  --prep_sem_filter                       exhaustive
% 1.53/0.93  --prep_sem_filter_out                   false
% 1.53/0.93  --pred_elim                             true
% 1.53/0.93  --res_sim_input                         true
% 1.53/0.93  --eq_ax_congr_red                       true
% 1.53/0.93  --pure_diseq_elim                       true
% 1.53/0.93  --brand_transform                       false
% 1.53/0.93  --non_eq_to_eq                          false
% 1.53/0.93  --prep_def_merge                        true
% 1.53/0.93  --prep_def_merge_prop_impl              false
% 1.53/0.93  --prep_def_merge_mbd                    true
% 1.53/0.93  --prep_def_merge_tr_red                 false
% 1.53/0.93  --prep_def_merge_tr_cl                  false
% 1.53/0.93  --smt_preprocessing                     true
% 1.53/0.93  --smt_ac_axioms                         fast
% 1.53/0.93  --preprocessed_out                      false
% 1.53/0.93  --preprocessed_stats                    false
% 1.53/0.93  
% 1.53/0.93  ------ Abstraction refinement Options
% 1.53/0.93  
% 1.53/0.93  --abstr_ref                             []
% 1.53/0.93  --abstr_ref_prep                        false
% 1.53/0.93  --abstr_ref_until_sat                   false
% 1.53/0.93  --abstr_ref_sig_restrict                funpre
% 1.53/0.93  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/0.93  --abstr_ref_under                       []
% 1.53/0.93  
% 1.53/0.93  ------ SAT Options
% 1.53/0.93  
% 1.53/0.93  --sat_mode                              false
% 1.53/0.93  --sat_fm_restart_options                ""
% 1.53/0.93  --sat_gr_def                            false
% 1.53/0.93  --sat_epr_types                         true
% 1.53/0.93  --sat_non_cyclic_types                  false
% 1.53/0.93  --sat_finite_models                     false
% 1.53/0.93  --sat_fm_lemmas                         false
% 1.53/0.93  --sat_fm_prep                           false
% 1.53/0.93  --sat_fm_uc_incr                        true
% 1.53/0.93  --sat_out_model                         small
% 1.53/0.93  --sat_out_clauses                       false
% 1.53/0.93  
% 1.53/0.93  ------ QBF Options
% 1.53/0.93  
% 1.53/0.93  --qbf_mode                              false
% 1.53/0.93  --qbf_elim_univ                         false
% 1.53/0.93  --qbf_dom_inst                          none
% 1.53/0.93  --qbf_dom_pre_inst                      false
% 1.53/0.93  --qbf_sk_in                             false
% 1.53/0.93  --qbf_pred_elim                         true
% 1.53/0.93  --qbf_split                             512
% 1.53/0.93  
% 1.53/0.93  ------ BMC1 Options
% 1.53/0.93  
% 1.53/0.93  --bmc1_incremental                      false
% 1.53/0.93  --bmc1_axioms                           reachable_all
% 1.53/0.93  --bmc1_min_bound                        0
% 1.53/0.93  --bmc1_max_bound                        -1
% 1.53/0.93  --bmc1_max_bound_default                -1
% 1.53/0.93  --bmc1_symbol_reachability              true
% 1.53/0.93  --bmc1_property_lemmas                  false
% 1.53/0.93  --bmc1_k_induction                      false
% 1.53/0.93  --bmc1_non_equiv_states                 false
% 1.53/0.93  --bmc1_deadlock                         false
% 1.53/0.93  --bmc1_ucm                              false
% 1.53/0.93  --bmc1_add_unsat_core                   none
% 1.53/0.93  --bmc1_unsat_core_children              false
% 1.53/0.93  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/0.93  --bmc1_out_stat                         full
% 1.53/0.93  --bmc1_ground_init                      false
% 1.53/0.93  --bmc1_pre_inst_next_state              false
% 1.53/0.93  --bmc1_pre_inst_state                   false
% 1.53/0.93  --bmc1_pre_inst_reach_state             false
% 1.53/0.93  --bmc1_out_unsat_core                   false
% 1.53/0.93  --bmc1_aig_witness_out                  false
% 1.53/0.93  --bmc1_verbose                          false
% 1.53/0.93  --bmc1_dump_clauses_tptp                false
% 1.53/0.93  --bmc1_dump_unsat_core_tptp             false
% 1.53/0.93  --bmc1_dump_file                        -
% 1.53/0.93  --bmc1_ucm_expand_uc_limit              128
% 1.53/0.93  --bmc1_ucm_n_expand_iterations          6
% 1.53/0.93  --bmc1_ucm_extend_mode                  1
% 1.53/0.93  --bmc1_ucm_init_mode                    2
% 1.53/0.93  --bmc1_ucm_cone_mode                    none
% 1.53/0.93  --bmc1_ucm_reduced_relation_type        0
% 1.53/0.93  --bmc1_ucm_relax_model                  4
% 1.53/0.93  --bmc1_ucm_full_tr_after_sat            true
% 1.53/0.93  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/0.93  --bmc1_ucm_layered_model                none
% 1.53/0.93  --bmc1_ucm_max_lemma_size               10
% 1.53/0.93  
% 1.53/0.93  ------ AIG Options
% 1.53/0.93  
% 1.53/0.93  --aig_mode                              false
% 1.53/0.93  
% 1.53/0.93  ------ Instantiation Options
% 1.53/0.93  
% 1.53/0.93  --instantiation_flag                    true
% 1.53/0.93  --inst_sos_flag                         false
% 1.53/0.93  --inst_sos_phase                        true
% 1.53/0.93  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/0.93  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/0.93  --inst_lit_sel_side                     num_symb
% 1.53/0.93  --inst_solver_per_active                1400
% 1.53/0.93  --inst_solver_calls_frac                1.
% 1.53/0.93  --inst_passive_queue_type               priority_queues
% 1.53/0.93  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/0.93  --inst_passive_queues_freq              [25;2]
% 1.53/0.93  --inst_dismatching                      true
% 1.53/0.93  --inst_eager_unprocessed_to_passive     true
% 1.53/0.93  --inst_prop_sim_given                   true
% 1.53/0.93  --inst_prop_sim_new                     false
% 1.53/0.93  --inst_subs_new                         false
% 1.53/0.93  --inst_eq_res_simp                      false
% 1.53/0.93  --inst_subs_given                       false
% 1.53/0.93  --inst_orphan_elimination               true
% 1.53/0.93  --inst_learning_loop_flag               true
% 1.53/0.93  --inst_learning_start                   3000
% 1.53/0.93  --inst_learning_factor                  2
% 1.53/0.93  --inst_start_prop_sim_after_learn       3
% 1.53/0.93  --inst_sel_renew                        solver
% 1.53/0.93  --inst_lit_activity_flag                true
% 1.53/0.93  --inst_restr_to_given                   false
% 1.53/0.93  --inst_activity_threshold               500
% 1.53/0.93  --inst_out_proof                        true
% 1.53/0.93  
% 1.53/0.93  ------ Resolution Options
% 1.53/0.93  
% 1.53/0.93  --resolution_flag                       true
% 1.53/0.93  --res_lit_sel                           adaptive
% 1.53/0.93  --res_lit_sel_side                      none
% 1.53/0.93  --res_ordering                          kbo
% 1.53/0.93  --res_to_prop_solver                    active
% 1.53/0.93  --res_prop_simpl_new                    false
% 1.53/0.93  --res_prop_simpl_given                  true
% 1.53/0.93  --res_passive_queue_type                priority_queues
% 1.53/0.93  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/0.93  --res_passive_queues_freq               [15;5]
% 1.53/0.93  --res_forward_subs                      full
% 1.53/0.93  --res_backward_subs                     full
% 1.53/0.93  --res_forward_subs_resolution           true
% 1.53/0.93  --res_backward_subs_resolution          true
% 1.53/0.93  --res_orphan_elimination                true
% 1.53/0.93  --res_time_limit                        2.
% 1.53/0.93  --res_out_proof                         true
% 1.53/0.93  
% 1.53/0.93  ------ Superposition Options
% 1.53/0.93  
% 1.53/0.93  --superposition_flag                    true
% 1.53/0.93  --sup_passive_queue_type                priority_queues
% 1.53/0.93  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/0.93  --sup_passive_queues_freq               [8;1;4]
% 1.53/0.93  --demod_completeness_check              fast
% 1.53/0.93  --demod_use_ground                      true
% 1.53/0.93  --sup_to_prop_solver                    passive
% 1.53/0.93  --sup_prop_simpl_new                    true
% 1.53/0.93  --sup_prop_simpl_given                  true
% 1.53/0.93  --sup_fun_splitting                     false
% 1.53/0.93  --sup_smt_interval                      50000
% 1.53/0.93  
% 1.53/0.93  ------ Superposition Simplification Setup
% 1.53/0.93  
% 1.53/0.93  --sup_indices_passive                   []
% 1.53/0.93  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/0.93  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_full_bw                           [BwDemod]
% 1.53/0.93  --sup_immed_triv                        [TrivRules]
% 1.53/0.93  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/0.93  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_immed_bw_main                     []
% 1.53/0.93  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.93  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/0.93  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.93  
% 1.53/0.93  ------ Combination Options
% 1.53/0.93  
% 1.53/0.93  --comb_res_mult                         3
% 1.53/0.93  --comb_sup_mult                         2
% 1.53/0.93  --comb_inst_mult                        10
% 1.53/0.93  
% 1.53/0.93  ------ Debug Options
% 1.53/0.93  
% 1.53/0.93  --dbg_backtrace                         false
% 1.53/0.93  --dbg_dump_prop_clauses                 false
% 1.53/0.93  --dbg_dump_prop_clauses_file            -
% 1.53/0.93  --dbg_out_stat                          false
% 1.53/0.93  ------ Parsing...
% 1.53/0.93  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.53/0.93  
% 1.53/0.93  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.53/0.93  
% 1.53/0.93  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.53/0.93  
% 1.53/0.93  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.53/0.93  ------ Proving...
% 1.53/0.93  ------ Problem Properties 
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  clauses                                 16
% 1.53/0.93  conjectures                             7
% 1.53/0.93  EPR                                     4
% 1.53/0.93  Horn                                    7
% 1.53/0.93  unary                                   6
% 1.53/0.93  binary                                  0
% 1.53/0.93  lits                                    66
% 1.53/0.93  lits eq                                 48
% 1.53/0.93  fd_pure                                 0
% 1.53/0.93  fd_pseudo                               0
% 1.53/0.93  fd_cond                                 5
% 1.53/0.93  fd_pseudo_cond                          0
% 1.53/0.93  AC symbols                              0
% 1.53/0.93  
% 1.53/0.93  ------ Schedule dynamic 5 is on 
% 1.53/0.93  
% 1.53/0.93  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  ------ 
% 1.53/0.93  Current options:
% 1.53/0.93  ------ 
% 1.53/0.93  
% 1.53/0.93  ------ Input Options
% 1.53/0.93  
% 1.53/0.93  --out_options                           all
% 1.53/0.93  --tptp_safe_out                         true
% 1.53/0.93  --problem_path                          ""
% 1.53/0.93  --include_path                          ""
% 1.53/0.93  --clausifier                            res/vclausify_rel
% 1.53/0.93  --clausifier_options                    --mode clausify
% 1.53/0.93  --stdin                                 false
% 1.53/0.93  --stats_out                             all
% 1.53/0.93  
% 1.53/0.93  ------ General Options
% 1.53/0.93  
% 1.53/0.93  --fof                                   false
% 1.53/0.93  --time_out_real                         305.
% 1.53/0.93  --time_out_virtual                      -1.
% 1.53/0.93  --symbol_type_check                     false
% 1.53/0.93  --clausify_out                          false
% 1.53/0.93  --sig_cnt_out                           false
% 1.53/0.93  --trig_cnt_out                          false
% 1.53/0.93  --trig_cnt_out_tolerance                1.
% 1.53/0.93  --trig_cnt_out_sk_spl                   false
% 1.53/0.93  --abstr_cl_out                          false
% 1.53/0.93  
% 1.53/0.93  ------ Global Options
% 1.53/0.93  
% 1.53/0.93  --schedule                              default
% 1.53/0.93  --add_important_lit                     false
% 1.53/0.93  --prop_solver_per_cl                    1000
% 1.53/0.93  --min_unsat_core                        false
% 1.53/0.93  --soft_assumptions                      false
% 1.53/0.93  --soft_lemma_size                       3
% 1.53/0.93  --prop_impl_unit_size                   0
% 1.53/0.93  --prop_impl_unit                        []
% 1.53/0.93  --share_sel_clauses                     true
% 1.53/0.93  --reset_solvers                         false
% 1.53/0.93  --bc_imp_inh                            [conj_cone]
% 1.53/0.93  --conj_cone_tolerance                   3.
% 1.53/0.93  --extra_neg_conj                        none
% 1.53/0.93  --large_theory_mode                     true
% 1.53/0.93  --prolific_symb_bound                   200
% 1.53/0.93  --lt_threshold                          2000
% 1.53/0.93  --clause_weak_htbl                      true
% 1.53/0.93  --gc_record_bc_elim                     false
% 1.53/0.93  
% 1.53/0.93  ------ Preprocessing Options
% 1.53/0.93  
% 1.53/0.93  --preprocessing_flag                    true
% 1.53/0.93  --time_out_prep_mult                    0.1
% 1.53/0.93  --splitting_mode                        input
% 1.53/0.93  --splitting_grd                         true
% 1.53/0.93  --splitting_cvd                         false
% 1.53/0.93  --splitting_cvd_svl                     false
% 1.53/0.93  --splitting_nvd                         32
% 1.53/0.93  --sub_typing                            true
% 1.53/0.93  --prep_gs_sim                           true
% 1.53/0.93  --prep_unflatten                        true
% 1.53/0.93  --prep_res_sim                          true
% 1.53/0.93  --prep_upred                            true
% 1.53/0.93  --prep_sem_filter                       exhaustive
% 1.53/0.93  --prep_sem_filter_out                   false
% 1.53/0.93  --pred_elim                             true
% 1.53/0.93  --res_sim_input                         true
% 1.53/0.93  --eq_ax_congr_red                       true
% 1.53/0.93  --pure_diseq_elim                       true
% 1.53/0.93  --brand_transform                       false
% 1.53/0.93  --non_eq_to_eq                          false
% 1.53/0.93  --prep_def_merge                        true
% 1.53/0.93  --prep_def_merge_prop_impl              false
% 1.53/0.93  --prep_def_merge_mbd                    true
% 1.53/0.93  --prep_def_merge_tr_red                 false
% 1.53/0.93  --prep_def_merge_tr_cl                  false
% 1.53/0.93  --smt_preprocessing                     true
% 1.53/0.93  --smt_ac_axioms                         fast
% 1.53/0.93  --preprocessed_out                      false
% 1.53/0.93  --preprocessed_stats                    false
% 1.53/0.93  
% 1.53/0.93  ------ Abstraction refinement Options
% 1.53/0.93  
% 1.53/0.93  --abstr_ref                             []
% 1.53/0.93  --abstr_ref_prep                        false
% 1.53/0.93  --abstr_ref_until_sat                   false
% 1.53/0.93  --abstr_ref_sig_restrict                funpre
% 1.53/0.93  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/0.93  --abstr_ref_under                       []
% 1.53/0.93  
% 1.53/0.93  ------ SAT Options
% 1.53/0.93  
% 1.53/0.93  --sat_mode                              false
% 1.53/0.93  --sat_fm_restart_options                ""
% 1.53/0.93  --sat_gr_def                            false
% 1.53/0.93  --sat_epr_types                         true
% 1.53/0.93  --sat_non_cyclic_types                  false
% 1.53/0.93  --sat_finite_models                     false
% 1.53/0.93  --sat_fm_lemmas                         false
% 1.53/0.93  --sat_fm_prep                           false
% 1.53/0.93  --sat_fm_uc_incr                        true
% 1.53/0.93  --sat_out_model                         small
% 1.53/0.93  --sat_out_clauses                       false
% 1.53/0.93  
% 1.53/0.93  ------ QBF Options
% 1.53/0.93  
% 1.53/0.93  --qbf_mode                              false
% 1.53/0.93  --qbf_elim_univ                         false
% 1.53/0.93  --qbf_dom_inst                          none
% 1.53/0.93  --qbf_dom_pre_inst                      false
% 1.53/0.93  --qbf_sk_in                             false
% 1.53/0.93  --qbf_pred_elim                         true
% 1.53/0.93  --qbf_split                             512
% 1.53/0.93  
% 1.53/0.93  ------ BMC1 Options
% 1.53/0.93  
% 1.53/0.93  --bmc1_incremental                      false
% 1.53/0.93  --bmc1_axioms                           reachable_all
% 1.53/0.93  --bmc1_min_bound                        0
% 1.53/0.93  --bmc1_max_bound                        -1
% 1.53/0.93  --bmc1_max_bound_default                -1
% 1.53/0.93  --bmc1_symbol_reachability              true
% 1.53/0.93  --bmc1_property_lemmas                  false
% 1.53/0.93  --bmc1_k_induction                      false
% 1.53/0.93  --bmc1_non_equiv_states                 false
% 1.53/0.93  --bmc1_deadlock                         false
% 1.53/0.93  --bmc1_ucm                              false
% 1.53/0.93  --bmc1_add_unsat_core                   none
% 1.53/0.93  --bmc1_unsat_core_children              false
% 1.53/0.93  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/0.93  --bmc1_out_stat                         full
% 1.53/0.93  --bmc1_ground_init                      false
% 1.53/0.93  --bmc1_pre_inst_next_state              false
% 1.53/0.93  --bmc1_pre_inst_state                   false
% 1.53/0.93  --bmc1_pre_inst_reach_state             false
% 1.53/0.93  --bmc1_out_unsat_core                   false
% 1.53/0.93  --bmc1_aig_witness_out                  false
% 1.53/0.93  --bmc1_verbose                          false
% 1.53/0.93  --bmc1_dump_clauses_tptp                false
% 1.53/0.93  --bmc1_dump_unsat_core_tptp             false
% 1.53/0.93  --bmc1_dump_file                        -
% 1.53/0.93  --bmc1_ucm_expand_uc_limit              128
% 1.53/0.93  --bmc1_ucm_n_expand_iterations          6
% 1.53/0.93  --bmc1_ucm_extend_mode                  1
% 1.53/0.93  --bmc1_ucm_init_mode                    2
% 1.53/0.93  --bmc1_ucm_cone_mode                    none
% 1.53/0.93  --bmc1_ucm_reduced_relation_type        0
% 1.53/0.93  --bmc1_ucm_relax_model                  4
% 1.53/0.93  --bmc1_ucm_full_tr_after_sat            true
% 1.53/0.93  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/0.93  --bmc1_ucm_layered_model                none
% 1.53/0.93  --bmc1_ucm_max_lemma_size               10
% 1.53/0.93  
% 1.53/0.93  ------ AIG Options
% 1.53/0.93  
% 1.53/0.93  --aig_mode                              false
% 1.53/0.93  
% 1.53/0.93  ------ Instantiation Options
% 1.53/0.93  
% 1.53/0.93  --instantiation_flag                    true
% 1.53/0.93  --inst_sos_flag                         false
% 1.53/0.93  --inst_sos_phase                        true
% 1.53/0.93  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/0.93  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/0.93  --inst_lit_sel_side                     none
% 1.53/0.93  --inst_solver_per_active                1400
% 1.53/0.93  --inst_solver_calls_frac                1.
% 1.53/0.93  --inst_passive_queue_type               priority_queues
% 1.53/0.93  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/0.93  --inst_passive_queues_freq              [25;2]
% 1.53/0.93  --inst_dismatching                      true
% 1.53/0.93  --inst_eager_unprocessed_to_passive     true
% 1.53/0.93  --inst_prop_sim_given                   true
% 1.53/0.93  --inst_prop_sim_new                     false
% 1.53/0.93  --inst_subs_new                         false
% 1.53/0.93  --inst_eq_res_simp                      false
% 1.53/0.93  --inst_subs_given                       false
% 1.53/0.93  --inst_orphan_elimination               true
% 1.53/0.93  --inst_learning_loop_flag               true
% 1.53/0.93  --inst_learning_start                   3000
% 1.53/0.93  --inst_learning_factor                  2
% 1.53/0.93  --inst_start_prop_sim_after_learn       3
% 1.53/0.93  --inst_sel_renew                        solver
% 1.53/0.93  --inst_lit_activity_flag                true
% 1.53/0.93  --inst_restr_to_given                   false
% 1.53/0.93  --inst_activity_threshold               500
% 1.53/0.93  --inst_out_proof                        true
% 1.53/0.93  
% 1.53/0.93  ------ Resolution Options
% 1.53/0.93  
% 1.53/0.93  --resolution_flag                       false
% 1.53/0.93  --res_lit_sel                           adaptive
% 1.53/0.93  --res_lit_sel_side                      none
% 1.53/0.93  --res_ordering                          kbo
% 1.53/0.93  --res_to_prop_solver                    active
% 1.53/0.93  --res_prop_simpl_new                    false
% 1.53/0.93  --res_prop_simpl_given                  true
% 1.53/0.93  --res_passive_queue_type                priority_queues
% 1.53/0.93  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/0.93  --res_passive_queues_freq               [15;5]
% 1.53/0.93  --res_forward_subs                      full
% 1.53/0.93  --res_backward_subs                     full
% 1.53/0.93  --res_forward_subs_resolution           true
% 1.53/0.93  --res_backward_subs_resolution          true
% 1.53/0.93  --res_orphan_elimination                true
% 1.53/0.93  --res_time_limit                        2.
% 1.53/0.93  --res_out_proof                         true
% 1.53/0.93  
% 1.53/0.93  ------ Superposition Options
% 1.53/0.93  
% 1.53/0.93  --superposition_flag                    true
% 1.53/0.93  --sup_passive_queue_type                priority_queues
% 1.53/0.93  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/0.93  --sup_passive_queues_freq               [8;1;4]
% 1.53/0.93  --demod_completeness_check              fast
% 1.53/0.93  --demod_use_ground                      true
% 1.53/0.93  --sup_to_prop_solver                    passive
% 1.53/0.93  --sup_prop_simpl_new                    true
% 1.53/0.93  --sup_prop_simpl_given                  true
% 1.53/0.93  --sup_fun_splitting                     false
% 1.53/0.93  --sup_smt_interval                      50000
% 1.53/0.93  
% 1.53/0.93  ------ Superposition Simplification Setup
% 1.53/0.93  
% 1.53/0.93  --sup_indices_passive                   []
% 1.53/0.93  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.93  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/0.93  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_full_bw                           [BwDemod]
% 1.53/0.93  --sup_immed_triv                        [TrivRules]
% 1.53/0.93  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/0.93  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_immed_bw_main                     []
% 1.53/0.93  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.93  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/0.93  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.93  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.93  
% 1.53/0.93  ------ Combination Options
% 1.53/0.93  
% 1.53/0.93  --comb_res_mult                         3
% 1.53/0.93  --comb_sup_mult                         2
% 1.53/0.93  --comb_inst_mult                        10
% 1.53/0.93  
% 1.53/0.93  ------ Debug Options
% 1.53/0.93  
% 1.53/0.93  --dbg_backtrace                         false
% 1.53/0.93  --dbg_dump_prop_clauses                 false
% 1.53/0.93  --dbg_dump_prop_clauses_file            -
% 1.53/0.93  --dbg_out_stat                          false
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  ------ Proving...
% 1.53/0.93  
% 1.53/0.93  
% 1.53/0.93  % SZS status Theorem for theBenchmark.p
% 1.53/0.93  
% 1.53/0.93  % SZS output start CNFRefutation for theBenchmark.p
% 1.53/0.93  
% 1.53/0.93  fof(f6,conjecture,(
% 1.53/0.93    ! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X7))))) => (k9_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.53/0.93    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.93  
% 1.53/0.93  fof(f7,negated_conjecture,(
% 1.53/0.93    ~! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X7))))) => (k9_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.53/0.93    inference(negated_conjecture,[],[f6])).
% 1.53/0.93  
% 1.53/0.93  fof(f11,plain,(
% 1.53/0.93    ? [X0,X1,X2,X3,X4,X5] : (((k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & ! [X6] : (! [X7] : (! [X8] : (! [X9] : ((X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5) | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0))) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.53/0.93    inference(ennf_transformation,[],[f7])).
% 1.53/0.93  
% 1.53/0.93  fof(f12,plain,(
% 1.53/0.93    ? [X0,X1,X2,X3,X4,X5] : (k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.53/0.93    inference(flattening,[],[f11])).
% 1.53/0.93  
% 1.53/0.93  fof(f18,plain,(
% 1.53/0.93    ? [X0,X1,X2,X3,X4,X5] : (k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3))) => (k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 & k1_xboole_0 != sK7 & k1_xboole_0 != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK8 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7)) | ~m1_subset_1(X8,sK6)) | ~m1_subset_1(X7,sK5)) | ~m1_subset_1(X6,sK4)) & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)))),
% 1.53/0.93    introduced(choice_axiom,[])).
% 1.53/0.93  
% 1.53/0.93  fof(f19,plain,(
% 1.53/0.93    k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 & k1_xboole_0 != sK7 & k1_xboole_0 != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK8 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7)) | ~m1_subset_1(X8,sK6)) | ~m1_subset_1(X7,sK5)) | ~m1_subset_1(X6,sK4)) & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7))),
% 1.53/0.93    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f12,f18])).
% 1.53/0.93  
% 1.53/0.93  fof(f32,plain,(
% 1.53/0.93    m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7))),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f3,axiom,(
% 1.53/0.93    ! [X0,X1,X2,X3] : k4_zfmisc_1(X0,X1,X2,X3) = k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)),
% 1.53/0.93    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.93  
% 1.53/0.93  fof(f22,plain,(
% 1.53/0.93    ( ! [X2,X0,X3,X1] : (k4_zfmisc_1(X0,X1,X2,X3) = k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) )),
% 1.53/0.93    inference(cnf_transformation,[],[f3])).
% 1.53/0.93  
% 1.53/0.93  fof(f50,plain,(
% 1.53/0.93    m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7))),
% 1.53/0.93    inference(definition_unfolding,[],[f32,f22])).
% 1.53/0.93  
% 1.53/0.93  fof(f4,axiom,(
% 1.53/0.93    ! [X0,X1,X2,X3] : ~(? [X4] : (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => ! [X8] : (m1_subset_1(X8,X3) => k4_mcart_1(X5,X6,X7,X8) != X4)))) & m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.53/0.93    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.93  
% 1.53/0.93  fof(f8,plain,(
% 1.53/0.93    ! [X0,X1,X2,X3] : (! [X4] : (? [X5] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(X5,X0)) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.53/0.93    inference(ennf_transformation,[],[f4])).
% 1.53/0.93  
% 1.53/0.93  fof(f16,plain,(
% 1.53/0.93    ( ! [X6,X7,X5] : (! [X4,X3,X2,X1,X0] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) => (k4_mcart_1(X5,X6,X7,sK3(X0,X1,X2,X3,X4)) = X4 & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)))) )),
% 1.53/0.93    introduced(choice_axiom,[])).
% 1.53/0.93  
% 1.53/0.93  fof(f15,plain,(
% 1.53/0.93    ( ! [X6,X5] : (! [X4,X3,X2,X1,X0] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) => (? [X8] : (k4_mcart_1(X5,X6,sK2(X0,X1,X2,X3,X4),X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)))) )),
% 1.53/0.93    introduced(choice_axiom,[])).
% 1.53/0.93  
% 1.53/0.93  fof(f14,plain,(
% 1.53/0.93    ( ! [X5] : (! [X4,X3,X2,X1,X0] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) => (? [X7] : (? [X8] : (k4_mcart_1(X5,sK1(X0,X1,X2,X3,X4),X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)))) )),
% 1.53/0.93    introduced(choice_axiom,[])).
% 1.53/0.93  
% 1.53/0.93  fof(f13,plain,(
% 1.53/0.93    ! [X4,X3,X2,X1,X0] : (? [X5] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(X5,X0)) => (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(sK0(X0,X1,X2,X3,X4),X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)))),
% 1.53/0.93    introduced(choice_axiom,[])).
% 1.53/0.93  
% 1.53/0.93  fof(f17,plain,(
% 1.53/0.93    ! [X0,X1,X2,X3] : (! [X4] : (((((k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4 & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)) & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)) & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.53/0.93    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f8,f16,f15,f14,f13])).
% 1.53/0.93  
% 1.53/0.93  fof(f27,plain,(
% 1.53/0.93    ( ! [X4,X2,X0,X3,X1] : (k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.93    inference(cnf_transformation,[],[f17])).
% 1.53/0.93  
% 1.53/0.93  fof(f2,axiom,(
% 1.53/0.93    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)),
% 1.53/0.93    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.93  
% 1.53/0.93  fof(f21,plain,(
% 1.53/0.93    ( ! [X2,X0,X3,X1] : (k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.53/0.93    inference(cnf_transformation,[],[f2])).
% 1.53/0.93  
% 1.53/0.93  fof(f1,axiom,(
% 1.53/0.93    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)),
% 1.53/0.93    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.93  
% 1.53/0.93  fof(f20,plain,(
% 1.53/0.93    ( ! [X2,X0,X1] : (k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)) )),
% 1.53/0.93    inference(cnf_transformation,[],[f1])).
% 1.53/0.93  
% 1.53/0.93  fof(f39,plain,(
% 1.53/0.93    ( ! [X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.53/0.93    inference(definition_unfolding,[],[f21,f20])).
% 1.53/0.93  
% 1.53/0.93  fof(f40,plain,(
% 1.53/0.93    ( ! [X4,X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.93    inference(definition_unfolding,[],[f27,f39,f22])).
% 1.53/0.93  
% 1.53/0.93  fof(f34,plain,(
% 1.53/0.93    k1_xboole_0 != sK4),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f35,plain,(
% 1.53/0.93    k1_xboole_0 != sK5),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f36,plain,(
% 1.53/0.93    k1_xboole_0 != sK6),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f37,plain,(
% 1.53/0.93    k1_xboole_0 != sK7),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f33,plain,(
% 1.53/0.93    ( ! [X6,X8,X7,X9] : (sK8 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7) | ~m1_subset_1(X8,sK6) | ~m1_subset_1(X7,sK5) | ~m1_subset_1(X6,sK4)) )),
% 1.53/0.93    inference(cnf_transformation,[],[f19])).
% 1.53/0.93  
% 1.53/0.93  fof(f49,plain,(
% 1.53/0.93    ( ! [X6,X8,X7,X9] : (sK8 = X7 | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK9 | ~m1_subset_1(X9,sK7) | ~m1_subset_1(X8,sK6) | ~m1_subset_1(X7,sK5) | ~m1_subset_1(X6,sK4)) )),
% 1.53/0.94    inference(definition_unfolding,[],[f33,f39])).
% 1.53/0.94  
% 1.53/0.94  fof(f23,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(cnf_transformation,[],[f17])).
% 1.53/0.94  
% 1.53/0.94  fof(f44,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(definition_unfolding,[],[f23,f22])).
% 1.53/0.94  
% 1.53/0.94  fof(f24,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(cnf_transformation,[],[f17])).
% 1.53/0.94  
% 1.53/0.94  fof(f43,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(definition_unfolding,[],[f24,f22])).
% 1.53/0.94  
% 1.53/0.94  fof(f25,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK2(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(cnf_transformation,[],[f17])).
% 1.53/0.94  
% 1.53/0.94  fof(f42,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK2(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(definition_unfolding,[],[f25,f22])).
% 1.53/0.94  
% 1.53/0.94  fof(f26,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(cnf_transformation,[],[f17])).
% 1.53/0.94  
% 1.53/0.94  fof(f41,plain,(
% 1.53/0.94    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.53/0.94    inference(definition_unfolding,[],[f26,f22])).
% 1.53/0.94  
% 1.53/0.94  fof(f5,axiom,(
% 1.53/0.94    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => ~(? [X5,X6,X7,X8] : (~(k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) & k4_mcart_1(X5,X6,X7,X8) = X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0))),
% 1.53/0.94    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.94  
% 1.53/0.94  fof(f9,plain,(
% 1.53/0.94    ! [X0,X1,X2,X3,X4] : ((! [X5,X6,X7,X8] : ((k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) | k4_mcart_1(X5,X6,X7,X8) != X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.53/0.94    inference(ennf_transformation,[],[f5])).
% 1.53/0.94  
% 1.53/0.94  fof(f10,plain,(
% 1.53/0.94    ! [X0,X1,X2,X3,X4] : (! [X5,X6,X7,X8] : ((k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) | k4_mcart_1(X5,X6,X7,X8) != X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.53/0.94    inference(flattening,[],[f9])).
% 1.53/0.94  
% 1.53/0.94  fof(f29,plain,(
% 1.53/0.94    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k9_mcart_1(X0,X1,X2,X3,X4) = X6 | k4_mcart_1(X5,X6,X7,X8) != X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.53/0.94    inference(cnf_transformation,[],[f10])).
% 1.53/0.94  
% 1.53/0.94  fof(f47,plain,(
% 1.53/0.94    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k9_mcart_1(X0,X1,X2,X3,X4) = X6 | k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8) != X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))) )),
% 1.53/0.94    inference(definition_unfolding,[],[f29,f39,f22])).
% 1.53/0.94  
% 1.53/0.94  fof(f53,plain,(
% 1.53/0.94    ( ! [X6,X2,X0,X8,X7,X5,X3,X1] : (k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8)) = X6 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8),k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3))) )),
% 1.53/0.94    inference(equality_resolution,[],[f47])).
% 1.53/0.94  
% 1.53/0.94  fof(f38,plain,(
% 1.53/0.94    k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8),
% 1.53/0.94    inference(cnf_transformation,[],[f19])).
% 1.53/0.94  
% 1.53/0.94  cnf(c_15,negated_conjecture,
% 1.53/0.94      ( m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7)) ),
% 1.53/0.94      inference(cnf_transformation,[],[f50]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_323,plain,
% 1.53/0.94      ( m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(sK4,sK5,sK6),sK7)) = iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_0,plain,
% 1.53/0.94      ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
% 1.53/0.94      | k4_tarski(k4_tarski(k4_tarski(sK0(X1,X2,X3,X4,X0),sK1(X1,X2,X3,X4,X0)),sK2(X1,X2,X3,X4,X0)),sK3(X1,X2,X3,X4,X0)) = X0
% 1.53/0.94      | k1_xboole_0 = X4
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1 ),
% 1.53/0.94      inference(cnf_transformation,[],[f40]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_333,plain,
% 1.53/0.94      ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2124,plain,
% 1.53/0.94      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9
% 1.53/0.94      | sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0 ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_333]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_13,negated_conjecture,
% 1.53/0.94      ( k1_xboole_0 != sK4 ),
% 1.53/0.94      inference(cnf_transformation,[],[f34]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_12,negated_conjecture,
% 1.53/0.94      ( k1_xboole_0 != sK5 ),
% 1.53/0.94      inference(cnf_transformation,[],[f35]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_11,negated_conjecture,
% 1.53/0.94      ( k1_xboole_0 != sK6 ),
% 1.53/0.94      inference(cnf_transformation,[],[f36]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_10,negated_conjecture,
% 1.53/0.94      ( k1_xboole_0 != sK7 ),
% 1.53/0.94      inference(cnf_transformation,[],[f37]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_136,plain,( X0 = X0 ),theory(equality) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_155,plain,
% 1.53/0.94      ( k1_xboole_0 = k1_xboole_0 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_136]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_137,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_491,plain,
% 1.53/0.94      ( sK7 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK7 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_137]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_492,plain,
% 1.53/0.94      ( sK7 != k1_xboole_0
% 1.53/0.94      | k1_xboole_0 = sK7
% 1.53/0.94      | k1_xboole_0 != k1_xboole_0 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_491]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_493,plain,
% 1.53/0.94      ( sK6 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK6 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_137]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_494,plain,
% 1.53/0.94      ( sK6 != k1_xboole_0
% 1.53/0.94      | k1_xboole_0 = sK6
% 1.53/0.94      | k1_xboole_0 != k1_xboole_0 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_493]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_495,plain,
% 1.53/0.94      ( sK5 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK5 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_137]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_496,plain,
% 1.53/0.94      ( sK5 != k1_xboole_0
% 1.53/0.94      | k1_xboole_0 = sK5
% 1.53/0.94      | k1_xboole_0 != k1_xboole_0 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_495]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_497,plain,
% 1.53/0.94      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_137]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_498,plain,
% 1.53/0.94      ( sK4 != k1_xboole_0
% 1.53/0.94      | k1_xboole_0 = sK4
% 1.53/0.94      | k1_xboole_0 != k1_xboole_0 ),
% 1.53/0.94      inference(instantiation,[status(thm)],[c_497]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2329,plain,
% 1.53/0.94      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
% 1.53/0.94      inference(global_propositional_subsumption,
% 1.53/0.94                [status(thm)],
% 1.53/0.94                [c_2124,c_13,c_12,c_11,c_10,c_155,c_492,c_494,c_496,
% 1.53/0.94                 c_498]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_14,negated_conjecture,
% 1.53/0.94      ( ~ m1_subset_1(X0,sK7)
% 1.53/0.94      | ~ m1_subset_1(X1,sK6)
% 1.53/0.94      | ~ m1_subset_1(X2,sK5)
% 1.53/0.94      | ~ m1_subset_1(X3,sK4)
% 1.53/0.94      | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK9
% 1.53/0.94      | sK8 = X2 ),
% 1.53/0.94      inference(cnf_transformation,[],[f49]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_324,plain,
% 1.53/0.94      ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK9
% 1.53/0.94      | sK8 = X1
% 1.53/0.94      | m1_subset_1(X3,sK7) != iProver_top
% 1.53/0.94      | m1_subset_1(X2,sK6) != iProver_top
% 1.53/0.94      | m1_subset_1(X1,sK5) != iProver_top
% 1.53/0.94      | m1_subset_1(X0,sK4) != iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2334,plain,
% 1.53/0.94      ( sK1(sK4,sK5,sK6,sK7,sK9) = sK8
% 1.53/0.94      | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) != iProver_top
% 1.53/0.94      | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) != iProver_top
% 1.53/0.94      | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) != iProver_top
% 1.53/0.94      | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) != iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_2329,c_324]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_4,plain,
% 1.53/0.94      ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
% 1.53/0.94      | m1_subset_1(sK0(X1,X2,X3,X4,X0),X1)
% 1.53/0.94      | k1_xboole_0 = X4
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1 ),
% 1.53/0.94      inference(cnf_transformation,[],[f44]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_329,plain,
% 1.53/0.94      ( k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
% 1.53/0.94      | m1_subset_1(sK0(X2,X1,X0,X3,X4),X2) = iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_806,plain,
% 1.53/0.94      ( sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0
% 1.53/0.94      | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) = iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_329]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_3,plain,
% 1.53/0.94      ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
% 1.53/0.94      | m1_subset_1(sK1(X1,X2,X3,X4,X0),X2)
% 1.53/0.94      | k1_xboole_0 = X4
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1 ),
% 1.53/0.94      inference(cnf_transformation,[],[f43]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_330,plain,
% 1.53/0.94      ( k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
% 1.53/0.94      | m1_subset_1(sK1(X2,X1,X0,X3,X4),X1) = iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_1016,plain,
% 1.53/0.94      ( sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0
% 1.53/0.94      | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) = iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_330]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2,plain,
% 1.53/0.94      ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
% 1.53/0.94      | m1_subset_1(sK2(X1,X2,X3,X4,X0),X3)
% 1.53/0.94      | k1_xboole_0 = X4
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1 ),
% 1.53/0.94      inference(cnf_transformation,[],[f42]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_331,plain,
% 1.53/0.94      ( k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
% 1.53/0.94      | m1_subset_1(sK2(X2,X1,X0,X3,X4),X0) = iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_1165,plain,
% 1.53/0.94      ( sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0
% 1.53/0.94      | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) = iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_331]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_1,plain,
% 1.53/0.94      ( ~ m1_subset_1(X0,k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4))
% 1.53/0.94      | m1_subset_1(sK3(X1,X2,X3,X4,X0),X4)
% 1.53/0.94      | k1_xboole_0 = X4
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1 ),
% 1.53/0.94      inference(cnf_transformation,[],[f41]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_332,plain,
% 1.53/0.94      ( k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | m1_subset_1(X4,k2_zfmisc_1(k3_zfmisc_1(X2,X1,X0),X3)) != iProver_top
% 1.53/0.94      | m1_subset_1(sK3(X2,X1,X0,X3,X4),X3) = iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_1174,plain,
% 1.53/0.94      ( sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0
% 1.53/0.94      | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) = iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_332]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2784,plain,
% 1.53/0.94      ( sK1(sK4,sK5,sK6,sK7,sK9) = sK8 ),
% 1.53/0.94      inference(global_propositional_subsumption,
% 1.53/0.94                [status(thm)],
% 1.53/0.94                [c_2334,c_13,c_12,c_11,c_10,c_155,c_492,c_494,c_496,
% 1.53/0.94                 c_498,c_806,c_1016,c_1165,c_1174]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_2788,plain,
% 1.53/0.94      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK8),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
% 1.53/0.94      inference(demodulation,[status(thm)],[c_2784,c_2329]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_7,plain,
% 1.53/0.94      ( ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3),k2_zfmisc_1(k3_zfmisc_1(X4,X5,X6),X7))
% 1.53/0.94      | k9_mcart_1(X4,X5,X6,X7,k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3)) = X1
% 1.53/0.94      | k1_xboole_0 = X7
% 1.53/0.94      | k1_xboole_0 = X6
% 1.53/0.94      | k1_xboole_0 = X5
% 1.53/0.94      | k1_xboole_0 = X4 ),
% 1.53/0.94      inference(cnf_transformation,[],[f53]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_326,plain,
% 1.53/0.94      ( k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7)) = X5
% 1.53/0.94      | k1_xboole_0 = X0
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7),k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
% 1.53/0.94      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_3365,plain,
% 1.53/0.94      ( k9_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK8),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9))) = sK8
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X0
% 1.53/0.94      | m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_2788,c_326]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_3380,plain,
% 1.53/0.94      ( k9_mcart_1(X0,X1,X2,X3,sK9) = sK8
% 1.53/0.94      | k1_xboole_0 = X3
% 1.53/0.94      | k1_xboole_0 = X2
% 1.53/0.94      | k1_xboole_0 = X1
% 1.53/0.94      | k1_xboole_0 = X0
% 1.53/0.94      | m1_subset_1(sK9,k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3)) != iProver_top ),
% 1.53/0.94      inference(light_normalisation,[status(thm)],[c_3365,c_2788]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_3543,plain,
% 1.53/0.94      ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) = sK8
% 1.53/0.94      | sK7 = k1_xboole_0
% 1.53/0.94      | sK6 = k1_xboole_0
% 1.53/0.94      | sK5 = k1_xboole_0
% 1.53/0.94      | sK4 = k1_xboole_0 ),
% 1.53/0.94      inference(superposition,[status(thm)],[c_323,c_3380]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(c_9,negated_conjecture,
% 1.53/0.94      ( k9_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
% 1.53/0.94      inference(cnf_transformation,[],[f38]) ).
% 1.53/0.94  
% 1.53/0.94  cnf(contradiction,plain,
% 1.53/0.94      ( $false ),
% 1.53/0.94      inference(minisat,
% 1.53/0.94                [status(thm)],
% 1.53/0.94                [c_3543,c_498,c_496,c_494,c_492,c_155,c_9,c_10,c_11,c_12,
% 1.53/0.94                 c_13]) ).
% 1.53/0.94  
% 1.53/0.94  
% 1.53/0.94  % SZS output end CNFRefutation for theBenchmark.p
% 1.53/0.94  
% 1.53/0.94  ------                               Statistics
% 1.53/0.94  
% 1.53/0.94  ------ General
% 1.53/0.94  
% 1.53/0.94  abstr_ref_over_cycles:                  0
% 1.53/0.94  abstr_ref_under_cycles:                 0
% 1.53/0.94  gc_basic_clause_elim:                   0
% 1.53/0.94  forced_gc_time:                         0
% 1.53/0.94  parsing_time:                           0.009
% 1.53/0.94  unif_index_cands_time:                  0.
% 1.53/0.94  unif_index_add_time:                    0.
% 1.53/0.94  orderings_time:                         0.
% 1.53/0.94  out_proof_time:                         0.01
% 1.53/0.94  total_time:                             0.16
% 1.53/0.94  num_of_symbols:                         50
% 1.53/0.94  num_of_terms:                           10040
% 1.53/0.94  
% 1.53/0.94  ------ Preprocessing
% 1.53/0.94  
% 1.53/0.94  num_of_splits:                          0
% 1.53/0.94  num_of_split_atoms:                     0
% 1.53/0.94  num_of_reused_defs:                     0
% 1.53/0.94  num_eq_ax_congr_red:                    64
% 1.53/0.94  num_of_sem_filtered_clauses:            1
% 1.53/0.94  num_of_subtypes:                        0
% 1.53/0.94  monotx_restored_types:                  0
% 1.53/0.94  sat_num_of_epr_types:                   0
% 1.53/0.94  sat_num_of_non_cyclic_types:            0
% 1.53/0.94  sat_guarded_non_collapsed_types:        0
% 1.53/0.94  num_pure_diseq_elim:                    0
% 1.53/0.94  simp_replaced_by:                       0
% 1.53/0.94  res_preprocessed:                       69
% 1.53/0.94  prep_upred:                             0
% 1.53/0.94  prep_unflattend:                        0
% 1.53/0.94  smt_new_axioms:                         0
% 1.53/0.94  pred_elim_cands:                        1
% 1.53/0.94  pred_elim:                              0
% 1.53/0.94  pred_elim_cl:                           0
% 1.53/0.94  pred_elim_cycles:                       1
% 1.53/0.94  merged_defs:                            0
% 1.53/0.94  merged_defs_ncl:                        0
% 1.53/0.94  bin_hyper_res:                          0
% 1.53/0.94  prep_cycles:                            3
% 1.53/0.94  pred_elim_time:                         0.
% 1.53/0.94  splitting_time:                         0.
% 1.53/0.94  sem_filter_time:                        0.
% 1.53/0.94  monotx_time:                            0.
% 1.53/0.94  subtype_inf_time:                       0.
% 1.53/0.94  
% 1.53/0.94  ------ Problem properties
% 1.53/0.94  
% 1.53/0.94  clauses:                                16
% 1.53/0.94  conjectures:                            7
% 1.53/0.94  epr:                                    4
% 1.53/0.94  horn:                                   7
% 1.53/0.94  ground:                                 6
% 1.53/0.94  unary:                                  6
% 1.53/0.94  binary:                                 0
% 1.53/0.94  lits:                                   66
% 1.53/0.94  lits_eq:                                48
% 1.53/0.94  fd_pure:                                0
% 1.53/0.94  fd_pseudo:                              0
% 1.53/0.94  fd_cond:                                5
% 1.53/0.94  fd_pseudo_cond:                         0
% 1.53/0.94  ac_symbols:                             0
% 1.53/0.94  
% 1.53/0.94  ------ Propositional Solver
% 1.53/0.94  
% 1.53/0.94  prop_solver_calls:                      22
% 1.53/0.94  prop_fast_solver_calls:                 706
% 1.53/0.94  smt_solver_calls:                       0
% 1.53/0.94  smt_fast_solver_calls:                  0
% 1.53/0.94  prop_num_of_clauses:                    1524
% 1.53/0.94  prop_preprocess_simplified:             5650
% 1.53/0.94  prop_fo_subsumed:                       36
% 1.53/0.94  prop_solver_time:                       0.
% 1.53/0.94  smt_solver_time:                        0.
% 1.53/0.94  smt_fast_solver_time:                   0.
% 1.53/0.94  prop_fast_solver_time:                  0.
% 1.53/0.94  prop_unsat_core_time:                   0.
% 1.53/0.94  
% 1.53/0.94  ------ QBF
% 1.53/0.94  
% 1.53/0.94  qbf_q_res:                              0
% 1.53/0.94  qbf_num_tautologies:                    0
% 1.53/0.94  qbf_prep_cycles:                        0
% 1.53/0.94  
% 1.53/0.94  ------ BMC1
% 1.53/0.94  
% 1.53/0.94  bmc1_current_bound:                     -1
% 1.53/0.94  bmc1_last_solved_bound:                 -1
% 1.53/0.94  bmc1_unsat_core_size:                   -1
% 1.53/0.94  bmc1_unsat_core_parents_size:           -1
% 1.53/0.94  bmc1_merge_next_fun:                    0
% 1.53/0.94  bmc1_unsat_core_clauses_time:           0.
% 1.53/0.94  
% 1.53/0.94  ------ Instantiation
% 1.53/0.94  
% 1.53/0.94  inst_num_of_clauses:                    494
% 1.53/0.94  inst_num_in_passive:                    297
% 1.53/0.94  inst_num_in_active:                     180
% 1.53/0.94  inst_num_in_unprocessed:                17
% 1.53/0.94  inst_num_of_loops:                      180
% 1.53/0.94  inst_num_of_learning_restarts:          0
% 1.53/0.94  inst_num_moves_active_passive:          0
% 1.53/0.94  inst_lit_activity:                      0
% 1.53/0.94  inst_lit_activity_moves:                0
% 1.53/0.94  inst_num_tautologies:                   0
% 1.53/0.94  inst_num_prop_implied:                  0
% 1.53/0.94  inst_num_existing_simplified:           0
% 1.53/0.94  inst_num_eq_res_simplified:             0
% 1.53/0.94  inst_num_child_elim:                    0
% 1.53/0.94  inst_num_of_dismatching_blockings:      0
% 1.53/0.94  inst_num_of_non_proper_insts:           461
% 1.53/0.94  inst_num_of_duplicates:                 0
% 1.53/0.94  inst_inst_num_from_inst_to_res:         0
% 1.53/0.94  inst_dismatching_checking_time:         0.
% 1.53/0.94  
% 1.53/0.94  ------ Resolution
% 1.53/0.94  
% 1.53/0.94  res_num_of_clauses:                     0
% 1.53/0.94  res_num_in_passive:                     0
% 1.53/0.94  res_num_in_active:                      0
% 1.53/0.94  res_num_of_loops:                       72
% 1.53/0.94  res_forward_subset_subsumed:            5
% 1.53/0.94  res_backward_subset_subsumed:           0
% 1.53/0.94  res_forward_subsumed:                   0
% 1.53/0.94  res_backward_subsumed:                  0
% 1.53/0.94  res_forward_subsumption_resolution:     0
% 1.53/0.94  res_backward_subsumption_resolution:    0
% 1.53/0.94  res_clause_to_clause_subsumption:       45
% 1.53/0.94  res_orphan_elimination:                 0
% 1.53/0.94  res_tautology_del:                      0
% 1.53/0.94  res_num_eq_res_simplified:              0
% 1.53/0.94  res_num_sel_changes:                    0
% 1.53/0.94  res_moves_from_active_to_pass:          0
% 1.53/0.94  
% 1.53/0.94  ------ Superposition
% 1.53/0.94  
% 1.53/0.94  sup_time_total:                         0.
% 1.53/0.94  sup_time_generating:                    0.
% 1.53/0.94  sup_time_sim_full:                      0.
% 1.53/0.94  sup_time_sim_immed:                     0.
% 1.53/0.94  
% 1.53/0.94  sup_num_of_clauses:                     43
% 1.53/0.94  sup_num_in_active:                      32
% 1.53/0.94  sup_num_in_passive:                     11
% 1.53/0.94  sup_num_of_loops:                       34
% 1.53/0.94  sup_fw_superposition:                   9
% 1.53/0.94  sup_bw_superposition:                   30
% 1.53/0.94  sup_immediate_simplified:               24
% 1.53/0.94  sup_given_eliminated:                   0
% 1.53/0.94  comparisons_done:                       0
% 1.53/0.94  comparisons_avoided:                    16
% 1.53/0.94  
% 1.53/0.94  ------ Simplifications
% 1.53/0.94  
% 1.53/0.94  
% 1.53/0.94  sim_fw_subset_subsumed:                 0
% 1.53/0.94  sim_bw_subset_subsumed:                 0
% 1.53/0.94  sim_fw_subsumed:                        0
% 1.53/0.94  sim_bw_subsumed:                        0
% 1.53/0.94  sim_fw_subsumption_res:                 0
% 1.53/0.94  sim_bw_subsumption_res:                 0
% 1.53/0.94  sim_tautology_del:                      0
% 1.53/0.94  sim_eq_tautology_del:                   1
% 1.53/0.94  sim_eq_res_simp:                        0
% 1.53/0.94  sim_fw_demodulated:                     0
% 1.53/0.94  sim_bw_demodulated:                     3
% 1.53/0.94  sim_light_normalised:                   27
% 1.53/0.94  sim_joinable_taut:                      0
% 1.53/0.94  sim_joinable_simp:                      0
% 1.53/0.94  sim_ac_normalised:                      0
% 1.53/0.94  sim_smt_subsumption:                    0
% 1.53/0.94  
%------------------------------------------------------------------------------
