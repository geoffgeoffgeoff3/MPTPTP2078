%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:59:25 EST 2020

% Result     : Theorem 1.58s
% Output     : CNFRefutation 1.58s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 811 expanded)
%              Number of clauses        :   45 ( 209 expanded)
%              Number of leaves         :   14 ( 250 expanded)
%              Depth                    :   17
%              Number of atoms          :  452 (5427 expanded)
%              Number of equality atoms :  332 (3336 expanded)
%              Maximal formula depth    :   24 (   8 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
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
                         => X4 = X9 ) ) ) ) )
       => ( k11_mcart_1(X0,X1,X2,X3,X5) = X4
          | k1_xboole_0 = X3
          | k1_xboole_0 = X2
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
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
                           => X4 = X9 ) ) ) ) )
         => ( k11_mcart_1(X0,X1,X2,X3,X5) = X4
            | k1_xboole_0 = X3
            | k1_xboole_0 = X2
            | k1_xboole_0 = X1
            | k1_xboole_0 = X0 ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f12,plain,(
    ? [X0,X1,X2,X3,X4,X5] :
      ( k11_mcart_1(X0,X1,X2,X3,X5) != X4
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( X4 = X9
                      | k4_mcart_1(X6,X7,X8,X9) != X5
                      | ~ m1_subset_1(X9,X3) )
                  | ~ m1_subset_1(X8,X2) )
              | ~ m1_subset_1(X7,X1) )
          | ~ m1_subset_1(X6,X0) )
      & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f13,plain,(
    ? [X0,X1,X2,X3,X4,X5] :
      ( k11_mcart_1(X0,X1,X2,X3,X5) != X4
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( X4 = X9
                      | k4_mcart_1(X6,X7,X8,X9) != X5
                      | ~ m1_subset_1(X9,X3) )
                  | ~ m1_subset_1(X8,X2) )
              | ~ m1_subset_1(X7,X1) )
          | ~ m1_subset_1(X6,X0) )
      & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(flattening,[],[f12])).

fof(f19,plain,
    ( ? [X0,X1,X2,X3,X4,X5] :
        ( k11_mcart_1(X0,X1,X2,X3,X5) != X4
        & k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & ! [X6] :
            ( ! [X7] :
                ( ! [X8] :
                    ( ! [X9] :
                        ( X4 = X9
                        | k4_mcart_1(X6,X7,X8,X9) != X5
                        | ~ m1_subset_1(X9,X3) )
                    | ~ m1_subset_1(X8,X2) )
                | ~ m1_subset_1(X7,X1) )
            | ~ m1_subset_1(X6,X0) )
        & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) )
   => ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8
      & k1_xboole_0 != sK7
      & k1_xboole_0 != sK6
      & k1_xboole_0 != sK5
      & k1_xboole_0 != sK4
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( sK8 = X9
                      | k4_mcart_1(X6,X7,X8,X9) != sK9
                      | ~ m1_subset_1(X9,sK7) )
                  | ~ m1_subset_1(X8,sK6) )
              | ~ m1_subset_1(X7,sK5) )
          | ~ m1_subset_1(X6,sK4) )
      & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8
    & k1_xboole_0 != sK7
    & k1_xboole_0 != sK6
    & k1_xboole_0 != sK5
    & k1_xboole_0 != sK4
    & ! [X6] :
        ( ! [X7] :
            ( ! [X8] :
                ( ! [X9] :
                    ( sK8 = X9
                    | k4_mcart_1(X6,X7,X8,X9) != sK9
                    | ~ m1_subset_1(X9,sK7) )
                | ~ m1_subset_1(X8,sK6) )
            | ~ m1_subset_1(X7,sK5) )
        | ~ m1_subset_1(X6,sK4) )
    & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f13,f19])).

fof(f34,plain,(
    m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X2,X0,X1] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    inference(cnf_transformation,[],[f2])).

fof(f42,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f24,f22])).

fof(f53,plain,(
    m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)) ),
    inference(definition_unfolding,[],[f34,f42])).

fof(f5,axiom,(
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

fof(f9,plain,(
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
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X6,X7,X5,X4,X3,X2,X1,X0] :
      ( ? [X8] :
          ( k4_mcart_1(X5,X6,X7,X8) = X4
          & m1_subset_1(X8,X3) )
     => ( k4_mcart_1(X5,X6,X7,sK3(X0,X1,X2,X3,X4)) = X4
        & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) ) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
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

fof(f15,plain,(
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

fof(f14,plain,(
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

fof(f18,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f9,f17,f16,f15,f14])).

fof(f29,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f3])).

fof(f1,axiom,(
    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X2,X0,X1] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    inference(cnf_transformation,[],[f1])).

fof(f41,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f23,f21])).

fof(f43,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f29,f41,f42])).

fof(f36,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f20])).

fof(f37,plain,(
    k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f20])).

fof(f38,plain,(
    k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f20])).

fof(f39,plain,(
    k1_xboole_0 != sK7 ),
    inference(cnf_transformation,[],[f20])).

fof(f35,plain,(
    ! [X6,X8,X7,X9] :
      ( sK8 = X9
      | k4_mcart_1(X6,X7,X8,X9) != sK9
      | ~ m1_subset_1(X9,sK7)
      | ~ m1_subset_1(X8,sK6)
      | ~ m1_subset_1(X7,sK5)
      | ~ m1_subset_1(X6,sK4) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f52,plain,(
    ! [X6,X8,X7,X9] :
      ( sK8 = X9
      | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK9
      | ~ m1_subset_1(X9,sK7)
      | ~ m1_subset_1(X8,sK6)
      | ~ m1_subset_1(X7,sK5)
      | ~ m1_subset_1(X6,sK4) ) ),
    inference(definition_unfolding,[],[f35,f41])).

fof(f25,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f47,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f25,f42])).

fof(f26,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f46,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f26,f42])).

fof(f27,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f45,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f27,f42])).

fof(f28,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f44,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f28,f42])).

fof(f6,axiom,(
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
    inference(ennf_transformation,[],[f6])).

fof(f11,plain,(
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
    inference(flattening,[],[f10])).

fof(f33,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( k11_mcart_1(X0,X1,X2,X3,X4) = X8
      | k4_mcart_1(X5,X6,X7,X8) != X4
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f48,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] :
      ( k11_mcart_1(X0,X1,X2,X3,X4) = X8
      | k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8) != X4
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(definition_unfolding,[],[f33,f41,f42])).

fof(f54,plain,(
    ! [X6,X2,X0,X8,X7,X5,X3,X1] :
      ( k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8)) = X8
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(equality_resolution,[],[f48])).

fof(f40,plain,(
    k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
    inference(cnf_transformation,[],[f20])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_320,plain,
    ( m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | k4_tarski(k4_tarski(k4_tarski(sK0(X1,X2,X3,X4,X0),sK1(X1,X2,X3,X4,X0)),sK2(X1,X2,X3,X4,X0)),sK3(X1,X2,X3,X4,X0)) = X0
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_330,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2151,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9
    | sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_320,c_330])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_12,negated_conjecture,
    ( k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_11,negated_conjecture,
    ( k1_xboole_0 != sK6 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_10,negated_conjecture,
    ( k1_xboole_0 != sK7 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_135,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_152,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_135])).

cnf(c_136,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_488,plain,
    ( sK7 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK7 ),
    inference(instantiation,[status(thm)],[c_136])).

cnf(c_489,plain,
    ( sK7 != k1_xboole_0
    | k1_xboole_0 = sK7
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_488])).

cnf(c_490,plain,
    ( sK6 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK6 ),
    inference(instantiation,[status(thm)],[c_136])).

cnf(c_491,plain,
    ( sK6 != k1_xboole_0
    | k1_xboole_0 = sK6
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_490])).

cnf(c_492,plain,
    ( sK5 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK5 ),
    inference(instantiation,[status(thm)],[c_136])).

cnf(c_493,plain,
    ( sK5 != k1_xboole_0
    | k1_xboole_0 = sK5
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_492])).

cnf(c_494,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_136])).

cnf(c_495,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_494])).

cnf(c_2356,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2151,c_13,c_12,c_11,c_10,c_152,c_489,c_491,c_493,c_495])).

cnf(c_14,negated_conjecture,
    ( ~ m1_subset_1(X0,sK7)
    | ~ m1_subset_1(X1,sK6)
    | ~ m1_subset_1(X2,sK5)
    | ~ m1_subset_1(X3,sK4)
    | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK9
    | sK8 = X0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_321,plain,
    ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK9
    | sK8 = X3
    | m1_subset_1(X3,sK7) != iProver_top
    | m1_subset_1(X2,sK6) != iProver_top
    | m1_subset_1(X1,sK5) != iProver_top
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2361,plain,
    ( sK3(sK4,sK5,sK6,sK7,sK9) = sK8
    | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) != iProver_top
    | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) != iProver_top
    | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) != iProver_top
    | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2356,c_321])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(sK0(X1,X2,X3,X4,X0),X1)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_326,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
    | m1_subset_1(sK0(X2,X1,X0,X3,X4),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_867,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_320,c_326])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(sK1(X1,X2,X3,X4,X0),X2)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_327,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
    | m1_subset_1(sK1(X2,X1,X0,X3,X4),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1023,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_320,c_327])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(sK2(X1,X2,X3,X4,X0),X3)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_328,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
    | m1_subset_1(sK2(X2,X1,X0,X3,X4),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1172,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_320,c_328])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(sK3(X1,X2,X3,X4,X0),X4)
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
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
    | m1_subset_1(sK3(X2,X1,X0,X3,X4),X3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1181,plain,
    ( sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) = iProver_top ),
    inference(superposition,[status(thm)],[c_320,c_329])).

cnf(c_2811,plain,
    ( sK3(sK4,sK5,sK6,sK7,sK9) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2361,c_13,c_12,c_11,c_10,c_152,c_489,c_491,c_493,c_495,c_867,c_1023,c_1172,c_1181])).

cnf(c_2815,plain,
    ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK8) = sK9 ),
    inference(demodulation,[status(thm)],[c_2811,c_2356])).

cnf(c_5,plain,
    ( ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X4,X5),X6),X7))
    | k11_mcart_1(X4,X5,X6,X7,k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3)) = X3
    | k1_xboole_0 = X7
    | k1_xboole_0 = X6
    | k1_xboole_0 = X5
    | k1_xboole_0 = X4 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_325,plain,
    ( k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7)) = X7
    | k1_xboole_0 = X0
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3272,plain,
    ( k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK8)) = sK8
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2815,c_325])).

cnf(c_3303,plain,
    ( k11_mcart_1(X0,X1,X2,X3,sK9) = sK8
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3272,c_2815])).

cnf(c_3450,plain,
    ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) = sK8
    | sK7 = k1_xboole_0
    | sK6 = k1_xboole_0
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_320,c_3303])).

cnf(c_9,negated_conjecture,
    ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
    inference(cnf_transformation,[],[f40])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3450,c_495,c_493,c_491,c_489,c_152,c_9,c_10,c_11,c_12,c_13])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 14:53:27 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 1.58/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.58/0.99  
% 1.58/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.58/0.99  
% 1.58/0.99  ------  iProver source info
% 1.58/0.99  
% 1.58/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.58/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.58/0.99  git: non_committed_changes: false
% 1.58/0.99  git: last_make_outside_of_git: false
% 1.58/0.99  
% 1.58/0.99  ------ 
% 1.58/0.99  
% 1.58/0.99  ------ Input Options
% 1.58/0.99  
% 1.58/0.99  --out_options                           all
% 1.58/0.99  --tptp_safe_out                         true
% 1.58/0.99  --problem_path                          ""
% 1.58/0.99  --include_path                          ""
% 1.58/0.99  --clausifier                            res/vclausify_rel
% 1.58/0.99  --clausifier_options                    --mode clausify
% 1.58/0.99  --stdin                                 false
% 1.58/0.99  --stats_out                             all
% 1.58/0.99  
% 1.58/0.99  ------ General Options
% 1.58/0.99  
% 1.58/0.99  --fof                                   false
% 1.58/0.99  --time_out_real                         305.
% 1.58/0.99  --time_out_virtual                      -1.
% 1.58/0.99  --symbol_type_check                     false
% 1.58/0.99  --clausify_out                          false
% 1.58/0.99  --sig_cnt_out                           false
% 1.58/0.99  --trig_cnt_out                          false
% 1.58/0.99  --trig_cnt_out_tolerance                1.
% 1.58/0.99  --trig_cnt_out_sk_spl                   false
% 1.58/0.99  --abstr_cl_out                          false
% 1.58/0.99  
% 1.58/0.99  ------ Global Options
% 1.58/0.99  
% 1.58/0.99  --schedule                              default
% 1.58/0.99  --add_important_lit                     false
% 1.58/0.99  --prop_solver_per_cl                    1000
% 1.58/0.99  --min_unsat_core                        false
% 1.58/0.99  --soft_assumptions                      false
% 1.58/0.99  --soft_lemma_size                       3
% 1.58/0.99  --prop_impl_unit_size                   0
% 1.58/0.99  --prop_impl_unit                        []
% 1.58/0.99  --share_sel_clauses                     true
% 1.58/0.99  --reset_solvers                         false
% 1.58/0.99  --bc_imp_inh                            [conj_cone]
% 1.58/0.99  --conj_cone_tolerance                   3.
% 1.58/0.99  --extra_neg_conj                        none
% 1.58/0.99  --large_theory_mode                     true
% 1.58/0.99  --prolific_symb_bound                   200
% 1.58/0.99  --lt_threshold                          2000
% 1.58/0.99  --clause_weak_htbl                      true
% 1.58/0.99  --gc_record_bc_elim                     false
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing Options
% 1.58/0.99  
% 1.58/0.99  --preprocessing_flag                    true
% 1.58/0.99  --time_out_prep_mult                    0.1
% 1.58/0.99  --splitting_mode                        input
% 1.58/0.99  --splitting_grd                         true
% 1.58/0.99  --splitting_cvd                         false
% 1.58/0.99  --splitting_cvd_svl                     false
% 1.58/0.99  --splitting_nvd                         32
% 1.58/0.99  --sub_typing                            true
% 1.58/0.99  --prep_gs_sim                           true
% 1.58/0.99  --prep_unflatten                        true
% 1.58/0.99  --prep_res_sim                          true
% 1.58/0.99  --prep_upred                            true
% 1.58/0.99  --prep_sem_filter                       exhaustive
% 1.58/0.99  --prep_sem_filter_out                   false
% 1.58/0.99  --pred_elim                             true
% 1.58/0.99  --res_sim_input                         true
% 1.58/0.99  --eq_ax_congr_red                       true
% 1.58/0.99  --pure_diseq_elim                       true
% 1.58/0.99  --brand_transform                       false
% 1.58/0.99  --non_eq_to_eq                          false
% 1.58/0.99  --prep_def_merge                        true
% 1.58/0.99  --prep_def_merge_prop_impl              false
% 1.58/0.99  --prep_def_merge_mbd                    true
% 1.58/0.99  --prep_def_merge_tr_red                 false
% 1.58/0.99  --prep_def_merge_tr_cl                  false
% 1.58/0.99  --smt_preprocessing                     true
% 1.58/0.99  --smt_ac_axioms                         fast
% 1.58/0.99  --preprocessed_out                      false
% 1.58/0.99  --preprocessed_stats                    false
% 1.58/0.99  
% 1.58/0.99  ------ Abstraction refinement Options
% 1.58/0.99  
% 1.58/0.99  --abstr_ref                             []
% 1.58/0.99  --abstr_ref_prep                        false
% 1.58/0.99  --abstr_ref_until_sat                   false
% 1.58/0.99  --abstr_ref_sig_restrict                funpre
% 1.58/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.58/0.99  --abstr_ref_under                       []
% 1.58/0.99  
% 1.58/0.99  ------ SAT Options
% 1.58/0.99  
% 1.58/0.99  --sat_mode                              false
% 1.58/0.99  --sat_fm_restart_options                ""
% 1.58/0.99  --sat_gr_def                            false
% 1.58/0.99  --sat_epr_types                         true
% 1.58/0.99  --sat_non_cyclic_types                  false
% 1.58/0.99  --sat_finite_models                     false
% 1.58/0.99  --sat_fm_lemmas                         false
% 1.58/0.99  --sat_fm_prep                           false
% 1.58/0.99  --sat_fm_uc_incr                        true
% 1.58/0.99  --sat_out_model                         small
% 1.58/0.99  --sat_out_clauses                       false
% 1.58/0.99  
% 1.58/0.99  ------ QBF Options
% 1.58/0.99  
% 1.58/0.99  --qbf_mode                              false
% 1.58/0.99  --qbf_elim_univ                         false
% 1.58/0.99  --qbf_dom_inst                          none
% 1.58/0.99  --qbf_dom_pre_inst                      false
% 1.58/0.99  --qbf_sk_in                             false
% 1.58/0.99  --qbf_pred_elim                         true
% 1.58/0.99  --qbf_split                             512
% 1.58/0.99  
% 1.58/0.99  ------ BMC1 Options
% 1.58/0.99  
% 1.58/0.99  --bmc1_incremental                      false
% 1.58/0.99  --bmc1_axioms                           reachable_all
% 1.58/0.99  --bmc1_min_bound                        0
% 1.58/0.99  --bmc1_max_bound                        -1
% 1.58/0.99  --bmc1_max_bound_default                -1
% 1.58/0.99  --bmc1_symbol_reachability              true
% 1.58/0.99  --bmc1_property_lemmas                  false
% 1.58/0.99  --bmc1_k_induction                      false
% 1.58/0.99  --bmc1_non_equiv_states                 false
% 1.58/0.99  --bmc1_deadlock                         false
% 1.58/0.99  --bmc1_ucm                              false
% 1.58/0.99  --bmc1_add_unsat_core                   none
% 1.58/0.99  --bmc1_unsat_core_children              false
% 1.58/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.58/0.99  --bmc1_out_stat                         full
% 1.58/0.99  --bmc1_ground_init                      false
% 1.58/0.99  --bmc1_pre_inst_next_state              false
% 1.58/0.99  --bmc1_pre_inst_state                   false
% 1.58/0.99  --bmc1_pre_inst_reach_state             false
% 1.58/0.99  --bmc1_out_unsat_core                   false
% 1.58/0.99  --bmc1_aig_witness_out                  false
% 1.58/0.99  --bmc1_verbose                          false
% 1.58/0.99  --bmc1_dump_clauses_tptp                false
% 1.58/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.58/0.99  --bmc1_dump_file                        -
% 1.58/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.58/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.58/0.99  --bmc1_ucm_extend_mode                  1
% 1.58/0.99  --bmc1_ucm_init_mode                    2
% 1.58/0.99  --bmc1_ucm_cone_mode                    none
% 1.58/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.58/0.99  --bmc1_ucm_relax_model                  4
% 1.58/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.58/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.58/0.99  --bmc1_ucm_layered_model                none
% 1.58/0.99  --bmc1_ucm_max_lemma_size               10
% 1.58/0.99  
% 1.58/0.99  ------ AIG Options
% 1.58/0.99  
% 1.58/0.99  --aig_mode                              false
% 1.58/0.99  
% 1.58/0.99  ------ Instantiation Options
% 1.58/0.99  
% 1.58/0.99  --instantiation_flag                    true
% 1.58/0.99  --inst_sos_flag                         false
% 1.58/0.99  --inst_sos_phase                        true
% 1.58/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.58/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.58/0.99  --inst_lit_sel_side                     num_symb
% 1.58/0.99  --inst_solver_per_active                1400
% 1.58/0.99  --inst_solver_calls_frac                1.
% 1.58/0.99  --inst_passive_queue_type               priority_queues
% 1.58/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.58/0.99  --inst_passive_queues_freq              [25;2]
% 1.58/0.99  --inst_dismatching                      true
% 1.58/0.99  --inst_eager_unprocessed_to_passive     true
% 1.58/0.99  --inst_prop_sim_given                   true
% 1.58/0.99  --inst_prop_sim_new                     false
% 1.58/0.99  --inst_subs_new                         false
% 1.58/0.99  --inst_eq_res_simp                      false
% 1.58/0.99  --inst_subs_given                       false
% 1.58/0.99  --inst_orphan_elimination               true
% 1.58/0.99  --inst_learning_loop_flag               true
% 1.58/0.99  --inst_learning_start                   3000
% 1.58/0.99  --inst_learning_factor                  2
% 1.58/0.99  --inst_start_prop_sim_after_learn       3
% 1.58/0.99  --inst_sel_renew                        solver
% 1.58/0.99  --inst_lit_activity_flag                true
% 1.58/0.99  --inst_restr_to_given                   false
% 1.58/0.99  --inst_activity_threshold               500
% 1.58/0.99  --inst_out_proof                        true
% 1.58/0.99  
% 1.58/0.99  ------ Resolution Options
% 1.58/0.99  
% 1.58/0.99  --resolution_flag                       true
% 1.58/0.99  --res_lit_sel                           adaptive
% 1.58/0.99  --res_lit_sel_side                      none
% 1.58/0.99  --res_ordering                          kbo
% 1.58/0.99  --res_to_prop_solver                    active
% 1.58/0.99  --res_prop_simpl_new                    false
% 1.58/0.99  --res_prop_simpl_given                  true
% 1.58/0.99  --res_passive_queue_type                priority_queues
% 1.58/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.58/0.99  --res_passive_queues_freq               [15;5]
% 1.58/0.99  --res_forward_subs                      full
% 1.58/0.99  --res_backward_subs                     full
% 1.58/0.99  --res_forward_subs_resolution           true
% 1.58/0.99  --res_backward_subs_resolution          true
% 1.58/0.99  --res_orphan_elimination                true
% 1.58/0.99  --res_time_limit                        2.
% 1.58/0.99  --res_out_proof                         true
% 1.58/0.99  
% 1.58/0.99  ------ Superposition Options
% 1.58/0.99  
% 1.58/0.99  --superposition_flag                    true
% 1.58/0.99  --sup_passive_queue_type                priority_queues
% 1.58/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.58/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.58/0.99  --demod_completeness_check              fast
% 1.58/0.99  --demod_use_ground                      true
% 1.58/0.99  --sup_to_prop_solver                    passive
% 1.58/0.99  --sup_prop_simpl_new                    true
% 1.58/0.99  --sup_prop_simpl_given                  true
% 1.58/0.99  --sup_fun_splitting                     false
% 1.58/0.99  --sup_smt_interval                      50000
% 1.58/0.99  
% 1.58/0.99  ------ Superposition Simplification Setup
% 1.58/0.99  
% 1.58/0.99  --sup_indices_passive                   []
% 1.58/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.58/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_full_bw                           [BwDemod]
% 1.58/0.99  --sup_immed_triv                        [TrivRules]
% 1.58/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_immed_bw_main                     []
% 1.58/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.58/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.58/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.58/0.99  
% 1.58/0.99  ------ Combination Options
% 1.58/0.99  
% 1.58/0.99  --comb_res_mult                         3
% 1.58/0.99  --comb_sup_mult                         2
% 1.58/0.99  --comb_inst_mult                        10
% 1.58/0.99  
% 1.58/0.99  ------ Debug Options
% 1.58/0.99  
% 1.58/0.99  --dbg_backtrace                         false
% 1.58/0.99  --dbg_dump_prop_clauses                 false
% 1.58/0.99  --dbg_dump_prop_clauses_file            -
% 1.58/0.99  --dbg_out_stat                          false
% 1.58/0.99  ------ Parsing...
% 1.58/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.58/0.99  ------ Proving...
% 1.58/0.99  ------ Problem Properties 
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  clauses                                 16
% 1.58/0.99  conjectures                             7
% 1.58/0.99  EPR                                     4
% 1.58/0.99  Horn                                    7
% 1.58/0.99  unary                                   6
% 1.58/0.99  binary                                  0
% 1.58/0.99  lits                                    66
% 1.58/0.99  lits eq                                 48
% 1.58/0.99  fd_pure                                 0
% 1.58/0.99  fd_pseudo                               0
% 1.58/0.99  fd_cond                                 5
% 1.58/0.99  fd_pseudo_cond                          0
% 1.58/0.99  AC symbols                              0
% 1.58/0.99  
% 1.58/0.99  ------ Schedule dynamic 5 is on 
% 1.58/0.99  
% 1.58/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  ------ 
% 1.58/0.99  Current options:
% 1.58/0.99  ------ 
% 1.58/0.99  
% 1.58/0.99  ------ Input Options
% 1.58/0.99  
% 1.58/0.99  --out_options                           all
% 1.58/0.99  --tptp_safe_out                         true
% 1.58/0.99  --problem_path                          ""
% 1.58/0.99  --include_path                          ""
% 1.58/0.99  --clausifier                            res/vclausify_rel
% 1.58/0.99  --clausifier_options                    --mode clausify
% 1.58/0.99  --stdin                                 false
% 1.58/0.99  --stats_out                             all
% 1.58/0.99  
% 1.58/0.99  ------ General Options
% 1.58/0.99  
% 1.58/0.99  --fof                                   false
% 1.58/0.99  --time_out_real                         305.
% 1.58/0.99  --time_out_virtual                      -1.
% 1.58/0.99  --symbol_type_check                     false
% 1.58/0.99  --clausify_out                          false
% 1.58/0.99  --sig_cnt_out                           false
% 1.58/0.99  --trig_cnt_out                          false
% 1.58/0.99  --trig_cnt_out_tolerance                1.
% 1.58/0.99  --trig_cnt_out_sk_spl                   false
% 1.58/0.99  --abstr_cl_out                          false
% 1.58/0.99  
% 1.58/0.99  ------ Global Options
% 1.58/0.99  
% 1.58/0.99  --schedule                              default
% 1.58/0.99  --add_important_lit                     false
% 1.58/0.99  --prop_solver_per_cl                    1000
% 1.58/0.99  --min_unsat_core                        false
% 1.58/0.99  --soft_assumptions                      false
% 1.58/0.99  --soft_lemma_size                       3
% 1.58/0.99  --prop_impl_unit_size                   0
% 1.58/0.99  --prop_impl_unit                        []
% 1.58/0.99  --share_sel_clauses                     true
% 1.58/0.99  --reset_solvers                         false
% 1.58/0.99  --bc_imp_inh                            [conj_cone]
% 1.58/0.99  --conj_cone_tolerance                   3.
% 1.58/0.99  --extra_neg_conj                        none
% 1.58/0.99  --large_theory_mode                     true
% 1.58/0.99  --prolific_symb_bound                   200
% 1.58/0.99  --lt_threshold                          2000
% 1.58/0.99  --clause_weak_htbl                      true
% 1.58/0.99  --gc_record_bc_elim                     false
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing Options
% 1.58/0.99  
% 1.58/0.99  --preprocessing_flag                    true
% 1.58/0.99  --time_out_prep_mult                    0.1
% 1.58/0.99  --splitting_mode                        input
% 1.58/0.99  --splitting_grd                         true
% 1.58/0.99  --splitting_cvd                         false
% 1.58/0.99  --splitting_cvd_svl                     false
% 1.58/0.99  --splitting_nvd                         32
% 1.58/0.99  --sub_typing                            true
% 1.58/0.99  --prep_gs_sim                           true
% 1.58/0.99  --prep_unflatten                        true
% 1.58/0.99  --prep_res_sim                          true
% 1.58/0.99  --prep_upred                            true
% 1.58/0.99  --prep_sem_filter                       exhaustive
% 1.58/0.99  --prep_sem_filter_out                   false
% 1.58/0.99  --pred_elim                             true
% 1.58/0.99  --res_sim_input                         true
% 1.58/0.99  --eq_ax_congr_red                       true
% 1.58/0.99  --pure_diseq_elim                       true
% 1.58/0.99  --brand_transform                       false
% 1.58/0.99  --non_eq_to_eq                          false
% 1.58/0.99  --prep_def_merge                        true
% 1.58/0.99  --prep_def_merge_prop_impl              false
% 1.58/0.99  --prep_def_merge_mbd                    true
% 1.58/0.99  --prep_def_merge_tr_red                 false
% 1.58/0.99  --prep_def_merge_tr_cl                  false
% 1.58/0.99  --smt_preprocessing                     true
% 1.58/0.99  --smt_ac_axioms                         fast
% 1.58/0.99  --preprocessed_out                      false
% 1.58/0.99  --preprocessed_stats                    false
% 1.58/0.99  
% 1.58/0.99  ------ Abstraction refinement Options
% 1.58/0.99  
% 1.58/0.99  --abstr_ref                             []
% 1.58/0.99  --abstr_ref_prep                        false
% 1.58/0.99  --abstr_ref_until_sat                   false
% 1.58/0.99  --abstr_ref_sig_restrict                funpre
% 1.58/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.58/0.99  --abstr_ref_under                       []
% 1.58/0.99  
% 1.58/0.99  ------ SAT Options
% 1.58/0.99  
% 1.58/0.99  --sat_mode                              false
% 1.58/0.99  --sat_fm_restart_options                ""
% 1.58/0.99  --sat_gr_def                            false
% 1.58/0.99  --sat_epr_types                         true
% 1.58/0.99  --sat_non_cyclic_types                  false
% 1.58/0.99  --sat_finite_models                     false
% 1.58/0.99  --sat_fm_lemmas                         false
% 1.58/0.99  --sat_fm_prep                           false
% 1.58/0.99  --sat_fm_uc_incr                        true
% 1.58/0.99  --sat_out_model                         small
% 1.58/0.99  --sat_out_clauses                       false
% 1.58/0.99  
% 1.58/0.99  ------ QBF Options
% 1.58/0.99  
% 1.58/0.99  --qbf_mode                              false
% 1.58/0.99  --qbf_elim_univ                         false
% 1.58/0.99  --qbf_dom_inst                          none
% 1.58/0.99  --qbf_dom_pre_inst                      false
% 1.58/0.99  --qbf_sk_in                             false
% 1.58/0.99  --qbf_pred_elim                         true
% 1.58/0.99  --qbf_split                             512
% 1.58/0.99  
% 1.58/0.99  ------ BMC1 Options
% 1.58/0.99  
% 1.58/0.99  --bmc1_incremental                      false
% 1.58/0.99  --bmc1_axioms                           reachable_all
% 1.58/0.99  --bmc1_min_bound                        0
% 1.58/0.99  --bmc1_max_bound                        -1
% 1.58/0.99  --bmc1_max_bound_default                -1
% 1.58/0.99  --bmc1_symbol_reachability              true
% 1.58/0.99  --bmc1_property_lemmas                  false
% 1.58/0.99  --bmc1_k_induction                      false
% 1.58/0.99  --bmc1_non_equiv_states                 false
% 1.58/0.99  --bmc1_deadlock                         false
% 1.58/0.99  --bmc1_ucm                              false
% 1.58/0.99  --bmc1_add_unsat_core                   none
% 1.58/0.99  --bmc1_unsat_core_children              false
% 1.58/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.58/0.99  --bmc1_out_stat                         full
% 1.58/0.99  --bmc1_ground_init                      false
% 1.58/0.99  --bmc1_pre_inst_next_state              false
% 1.58/0.99  --bmc1_pre_inst_state                   false
% 1.58/0.99  --bmc1_pre_inst_reach_state             false
% 1.58/0.99  --bmc1_out_unsat_core                   false
% 1.58/0.99  --bmc1_aig_witness_out                  false
% 1.58/0.99  --bmc1_verbose                          false
% 1.58/0.99  --bmc1_dump_clauses_tptp                false
% 1.58/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.58/0.99  --bmc1_dump_file                        -
% 1.58/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.58/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.58/0.99  --bmc1_ucm_extend_mode                  1
% 1.58/0.99  --bmc1_ucm_init_mode                    2
% 1.58/0.99  --bmc1_ucm_cone_mode                    none
% 1.58/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.58/0.99  --bmc1_ucm_relax_model                  4
% 1.58/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.58/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.58/0.99  --bmc1_ucm_layered_model                none
% 1.58/0.99  --bmc1_ucm_max_lemma_size               10
% 1.58/0.99  
% 1.58/0.99  ------ AIG Options
% 1.58/0.99  
% 1.58/0.99  --aig_mode                              false
% 1.58/0.99  
% 1.58/0.99  ------ Instantiation Options
% 1.58/0.99  
% 1.58/0.99  --instantiation_flag                    true
% 1.58/0.99  --inst_sos_flag                         false
% 1.58/0.99  --inst_sos_phase                        true
% 1.58/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.58/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.58/0.99  --inst_lit_sel_side                     none
% 1.58/0.99  --inst_solver_per_active                1400
% 1.58/0.99  --inst_solver_calls_frac                1.
% 1.58/0.99  --inst_passive_queue_type               priority_queues
% 1.58/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.58/0.99  --inst_passive_queues_freq              [25;2]
% 1.58/0.99  --inst_dismatching                      true
% 1.58/0.99  --inst_eager_unprocessed_to_passive     true
% 1.58/0.99  --inst_prop_sim_given                   true
% 1.58/0.99  --inst_prop_sim_new                     false
% 1.58/0.99  --inst_subs_new                         false
% 1.58/0.99  --inst_eq_res_simp                      false
% 1.58/0.99  --inst_subs_given                       false
% 1.58/0.99  --inst_orphan_elimination               true
% 1.58/0.99  --inst_learning_loop_flag               true
% 1.58/0.99  --inst_learning_start                   3000
% 1.58/0.99  --inst_learning_factor                  2
% 1.58/0.99  --inst_start_prop_sim_after_learn       3
% 1.58/0.99  --inst_sel_renew                        solver
% 1.58/0.99  --inst_lit_activity_flag                true
% 1.58/0.99  --inst_restr_to_given                   false
% 1.58/0.99  --inst_activity_threshold               500
% 1.58/0.99  --inst_out_proof                        true
% 1.58/0.99  
% 1.58/0.99  ------ Resolution Options
% 1.58/0.99  
% 1.58/0.99  --resolution_flag                       false
% 1.58/0.99  --res_lit_sel                           adaptive
% 1.58/0.99  --res_lit_sel_side                      none
% 1.58/0.99  --res_ordering                          kbo
% 1.58/0.99  --res_to_prop_solver                    active
% 1.58/0.99  --res_prop_simpl_new                    false
% 1.58/0.99  --res_prop_simpl_given                  true
% 1.58/0.99  --res_passive_queue_type                priority_queues
% 1.58/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.58/0.99  --res_passive_queues_freq               [15;5]
% 1.58/0.99  --res_forward_subs                      full
% 1.58/0.99  --res_backward_subs                     full
% 1.58/0.99  --res_forward_subs_resolution           true
% 1.58/0.99  --res_backward_subs_resolution          true
% 1.58/0.99  --res_orphan_elimination                true
% 1.58/0.99  --res_time_limit                        2.
% 1.58/0.99  --res_out_proof                         true
% 1.58/0.99  
% 1.58/0.99  ------ Superposition Options
% 1.58/0.99  
% 1.58/0.99  --superposition_flag                    true
% 1.58/0.99  --sup_passive_queue_type                priority_queues
% 1.58/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.58/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.58/0.99  --demod_completeness_check              fast
% 1.58/0.99  --demod_use_ground                      true
% 1.58/0.99  --sup_to_prop_solver                    passive
% 1.58/0.99  --sup_prop_simpl_new                    true
% 1.58/0.99  --sup_prop_simpl_given                  true
% 1.58/0.99  --sup_fun_splitting                     false
% 1.58/0.99  --sup_smt_interval                      50000
% 1.58/0.99  
% 1.58/0.99  ------ Superposition Simplification Setup
% 1.58/0.99  
% 1.58/0.99  --sup_indices_passive                   []
% 1.58/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.58/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.58/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_full_bw                           [BwDemod]
% 1.58/0.99  --sup_immed_triv                        [TrivRules]
% 1.58/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.58/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_immed_bw_main                     []
% 1.58/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.58/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.58/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.58/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.58/0.99  
% 1.58/0.99  ------ Combination Options
% 1.58/0.99  
% 1.58/0.99  --comb_res_mult                         3
% 1.58/0.99  --comb_sup_mult                         2
% 1.58/0.99  --comb_inst_mult                        10
% 1.58/0.99  
% 1.58/0.99  ------ Debug Options
% 1.58/0.99  
% 1.58/0.99  --dbg_backtrace                         false
% 1.58/0.99  --dbg_dump_prop_clauses                 false
% 1.58/0.99  --dbg_dump_prop_clauses_file            -
% 1.58/0.99  --dbg_out_stat                          false
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  ------ Proving...
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  % SZS status Theorem for theBenchmark.p
% 1.58/0.99  
% 1.58/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.58/0.99  
% 1.58/0.99  fof(f7,conjecture,(
% 1.58/0.99    ! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X9))))) => (k11_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f8,negated_conjecture,(
% 1.58/0.99    ~! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X9))))) => (k11_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.58/0.99    inference(negated_conjecture,[],[f7])).
% 1.58/0.99  
% 1.58/0.99  fof(f12,plain,(
% 1.58/0.99    ? [X0,X1,X2,X3,X4,X5] : (((k11_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & ! [X6] : (! [X7] : (! [X8] : (! [X9] : ((X4 = X9 | k4_mcart_1(X6,X7,X8,X9) != X5) | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0))) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.58/0.99    inference(ennf_transformation,[],[f8])).
% 1.58/0.99  
% 1.58/0.99  fof(f13,plain,(
% 1.58/0.99    ? [X0,X1,X2,X3,X4,X5] : (k11_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X9 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.58/0.99    inference(flattening,[],[f12])).
% 1.58/0.99  
% 1.58/0.99  fof(f19,plain,(
% 1.58/0.99    ? [X0,X1,X2,X3,X4,X5] : (k11_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X9 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3))) => (k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 & k1_xboole_0 != sK7 & k1_xboole_0 != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK8 = X9 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7)) | ~m1_subset_1(X8,sK6)) | ~m1_subset_1(X7,sK5)) | ~m1_subset_1(X6,sK4)) & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7)))),
% 1.58/0.99    introduced(choice_axiom,[])).
% 1.58/0.99  
% 1.58/0.99  fof(f20,plain,(
% 1.58/0.99    k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 & k1_xboole_0 != sK7 & k1_xboole_0 != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK8 = X9 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7)) | ~m1_subset_1(X8,sK6)) | ~m1_subset_1(X7,sK5)) | ~m1_subset_1(X6,sK4)) & m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7))),
% 1.58/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7,sK8,sK9])],[f13,f19])).
% 1.58/0.99  
% 1.58/0.99  fof(f34,plain,(
% 1.58/0.99    m1_subset_1(sK9,k4_zfmisc_1(sK4,sK5,sK6,sK7))),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f4,axiom,(
% 1.58/0.99    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f24,plain,(
% 1.58/0.99    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 1.58/0.99    inference(cnf_transformation,[],[f4])).
% 1.58/0.99  
% 1.58/0.99  fof(f2,axiom,(
% 1.58/0.99    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f22,plain,(
% 1.58/0.99    ( ! [X2,X0,X1] : (k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) )),
% 1.58/0.99    inference(cnf_transformation,[],[f2])).
% 1.58/0.99  
% 1.58/0.99  fof(f42,plain,(
% 1.58/0.99    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 1.58/0.99    inference(definition_unfolding,[],[f24,f22])).
% 1.58/0.99  
% 1.58/0.99  fof(f53,plain,(
% 1.58/0.99    m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7))),
% 1.58/0.99    inference(definition_unfolding,[],[f34,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f5,axiom,(
% 1.58/0.99    ! [X0,X1,X2,X3] : ~(? [X4] : (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => ! [X8] : (m1_subset_1(X8,X3) => k4_mcart_1(X5,X6,X7,X8) != X4)))) & m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f9,plain,(
% 1.58/0.99    ! [X0,X1,X2,X3] : (! [X4] : (? [X5] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(X5,X0)) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.58/0.99    inference(ennf_transformation,[],[f5])).
% 1.58/0.99  
% 1.58/0.99  fof(f17,plain,(
% 1.58/0.99    ( ! [X6,X7,X5] : (! [X4,X3,X2,X1,X0] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) => (k4_mcart_1(X5,X6,X7,sK3(X0,X1,X2,X3,X4)) = X4 & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)))) )),
% 1.58/0.99    introduced(choice_axiom,[])).
% 1.58/0.99  
% 1.58/0.99  fof(f16,plain,(
% 1.58/0.99    ( ! [X6,X5] : (! [X4,X3,X2,X1,X0] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) => (? [X8] : (k4_mcart_1(X5,X6,sK2(X0,X1,X2,X3,X4),X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)))) )),
% 1.58/0.99    introduced(choice_axiom,[])).
% 1.58/0.99  
% 1.58/0.99  fof(f15,plain,(
% 1.58/0.99    ( ! [X5] : (! [X4,X3,X2,X1,X0] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) => (? [X7] : (? [X8] : (k4_mcart_1(X5,sK1(X0,X1,X2,X3,X4),X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)))) )),
% 1.58/0.99    introduced(choice_axiom,[])).
% 1.58/0.99  
% 1.58/0.99  fof(f14,plain,(
% 1.58/0.99    ! [X4,X3,X2,X1,X0] : (? [X5] : (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(X5,X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(X5,X0)) => (? [X6] : (? [X7] : (? [X8] : (k4_mcart_1(sK0(X0,X1,X2,X3,X4),X6,X7,X8) = X4 & m1_subset_1(X8,X3)) & m1_subset_1(X7,X2)) & m1_subset_1(X6,X1)) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)))),
% 1.58/0.99    introduced(choice_axiom,[])).
% 1.58/0.99  
% 1.58/0.99  fof(f18,plain,(
% 1.58/0.99    ! [X0,X1,X2,X3] : (! [X4] : (((((k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4 & m1_subset_1(sK3(X0,X1,X2,X3,X4),X3)) & m1_subset_1(sK2(X0,X1,X2,X3,X4),X2)) & m1_subset_1(sK1(X0,X1,X2,X3,X4),X1)) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.58/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f9,f17,f16,f15,f14])).
% 1.58/0.99  
% 1.58/0.99  fof(f29,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (k4_mcart_1(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4),sK2(X0,X1,X2,X3,X4),sK3(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(cnf_transformation,[],[f18])).
% 1.58/0.99  
% 1.58/0.99  fof(f3,axiom,(
% 1.58/0.99    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f23,plain,(
% 1.58/0.99    ( ! [X2,X0,X3,X1] : (k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.58/0.99    inference(cnf_transformation,[],[f3])).
% 1.58/0.99  
% 1.58/0.99  fof(f1,axiom,(
% 1.58/0.99    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f21,plain,(
% 1.58/0.99    ( ! [X2,X0,X1] : (k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)) )),
% 1.58/0.99    inference(cnf_transformation,[],[f1])).
% 1.58/0.99  
% 1.58/0.99  fof(f41,plain,(
% 1.58/0.99    ( ! [X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.58/0.99    inference(definition_unfolding,[],[f23,f21])).
% 1.58/0.99  
% 1.58/0.99  fof(f43,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(definition_unfolding,[],[f29,f41,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f36,plain,(
% 1.58/0.99    k1_xboole_0 != sK4),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f37,plain,(
% 1.58/0.99    k1_xboole_0 != sK5),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f38,plain,(
% 1.58/0.99    k1_xboole_0 != sK6),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f39,plain,(
% 1.58/0.99    k1_xboole_0 != sK7),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f35,plain,(
% 1.58/0.99    ( ! [X6,X8,X7,X9] : (sK8 = X9 | k4_mcart_1(X6,X7,X8,X9) != sK9 | ~m1_subset_1(X9,sK7) | ~m1_subset_1(X8,sK6) | ~m1_subset_1(X7,sK5) | ~m1_subset_1(X6,sK4)) )),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  fof(f52,plain,(
% 1.58/0.99    ( ! [X6,X8,X7,X9] : (sK8 = X9 | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK9 | ~m1_subset_1(X9,sK7) | ~m1_subset_1(X8,sK6) | ~m1_subset_1(X7,sK5) | ~m1_subset_1(X6,sK4)) )),
% 1.58/0.99    inference(definition_unfolding,[],[f35,f41])).
% 1.58/0.99  
% 1.58/0.99  fof(f25,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(cnf_transformation,[],[f18])).
% 1.58/0.99  
% 1.58/0.99  fof(f47,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(definition_unfolding,[],[f25,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f26,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(cnf_transformation,[],[f18])).
% 1.58/0.99  
% 1.58/0.99  fof(f46,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(definition_unfolding,[],[f26,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f27,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK2(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(cnf_transformation,[],[f18])).
% 1.58/0.99  
% 1.58/0.99  fof(f45,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK2(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(definition_unfolding,[],[f27,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f28,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(cnf_transformation,[],[f18])).
% 1.58/0.99  
% 1.58/0.99  fof(f44,plain,(
% 1.58/0.99    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(sK3(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.58/0.99    inference(definition_unfolding,[],[f28,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f6,axiom,(
% 1.58/0.99    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => ~(? [X5,X6,X7,X8] : (~(k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) & k4_mcart_1(X5,X6,X7,X8) = X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0))),
% 1.58/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.58/0.99  
% 1.58/0.99  fof(f10,plain,(
% 1.58/0.99    ! [X0,X1,X2,X3,X4] : ((! [X5,X6,X7,X8] : ((k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) | k4_mcart_1(X5,X6,X7,X8) != X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.58/0.99    inference(ennf_transformation,[],[f6])).
% 1.58/0.99  
% 1.58/0.99  fof(f11,plain,(
% 1.58/0.99    ! [X0,X1,X2,X3,X4] : (! [X5,X6,X7,X8] : ((k11_mcart_1(X0,X1,X2,X3,X4) = X8 & k10_mcart_1(X0,X1,X2,X3,X4) = X7 & k9_mcart_1(X0,X1,X2,X3,X4) = X6 & k8_mcart_1(X0,X1,X2,X3,X4) = X5) | k4_mcart_1(X5,X6,X7,X8) != X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.58/0.99    inference(flattening,[],[f10])).
% 1.58/0.99  
% 1.58/0.99  fof(f33,plain,(
% 1.58/0.99    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k11_mcart_1(X0,X1,X2,X3,X4) = X8 | k4_mcart_1(X5,X6,X7,X8) != X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.58/0.99    inference(cnf_transformation,[],[f11])).
% 1.58/0.99  
% 1.58/0.99  fof(f48,plain,(
% 1.58/0.99    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k11_mcart_1(X0,X1,X2,X3,X4) = X8 | k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8) != X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.58/0.99    inference(definition_unfolding,[],[f33,f41,f42])).
% 1.58/0.99  
% 1.58/0.99  fof(f54,plain,(
% 1.58/0.99    ( ! [X6,X2,X0,X8,X7,X5,X3,X1] : (k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8)) = X8 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X5,X6),X7),X8),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.58/0.99    inference(equality_resolution,[],[f48])).
% 1.58/0.99  
% 1.58/0.99  fof(f40,plain,(
% 1.58/0.99    k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8),
% 1.58/0.99    inference(cnf_transformation,[],[f20])).
% 1.58/0.99  
% 1.58/0.99  cnf(c_15,negated_conjecture,
% 1.58/0.99      ( m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)) ),
% 1.58/0.99      inference(cnf_transformation,[],[f53]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_320,plain,
% 1.58/0.99      ( m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)) = iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_0,plain,
% 1.58/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.58/0.99      | k4_tarski(k4_tarski(k4_tarski(sK0(X1,X2,X3,X4,X0),sK1(X1,X2,X3,X4,X0)),sK2(X1,X2,X3,X4,X0)),sK3(X1,X2,X3,X4,X0)) = X0
% 1.58/0.99      | k1_xboole_0 = X4
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1 ),
% 1.58/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_330,plain,
% 1.58/0.99      ( k4_tarski(k4_tarski(k4_tarski(sK0(X0,X1,X2,X3,X4),sK1(X0,X1,X2,X3,X4)),sK2(X0,X1,X2,X3,X4)),sK3(X0,X1,X2,X3,X4)) = X4
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2151,plain,
% 1.58/0.99      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9
% 1.58/0.99      | sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0 ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_330]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_13,negated_conjecture,
% 1.58/0.99      ( k1_xboole_0 != sK4 ),
% 1.58/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_12,negated_conjecture,
% 1.58/0.99      ( k1_xboole_0 != sK5 ),
% 1.58/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_11,negated_conjecture,
% 1.58/0.99      ( k1_xboole_0 != sK6 ),
% 1.58/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_10,negated_conjecture,
% 1.58/0.99      ( k1_xboole_0 != sK7 ),
% 1.58/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_135,plain,( X0 = X0 ),theory(equality) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_152,plain,
% 1.58/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_135]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_136,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_488,plain,
% 1.58/0.99      ( sK7 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK7 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_136]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_489,plain,
% 1.58/0.99      ( sK7 != k1_xboole_0
% 1.58/0.99      | k1_xboole_0 = sK7
% 1.58/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_488]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_490,plain,
% 1.58/0.99      ( sK6 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK6 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_136]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_491,plain,
% 1.58/0.99      ( sK6 != k1_xboole_0
% 1.58/0.99      | k1_xboole_0 = sK6
% 1.58/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_490]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_492,plain,
% 1.58/0.99      ( sK5 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK5 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_136]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_493,plain,
% 1.58/0.99      ( sK5 != k1_xboole_0
% 1.58/0.99      | k1_xboole_0 = sK5
% 1.58/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_492]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_494,plain,
% 1.58/0.99      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_136]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_495,plain,
% 1.58/0.99      ( sK4 != k1_xboole_0
% 1.58/0.99      | k1_xboole_0 = sK4
% 1.58/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.58/0.99      inference(instantiation,[status(thm)],[c_494]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2356,plain,
% 1.58/0.99      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK3(sK4,sK5,sK6,sK7,sK9)) = sK9 ),
% 1.58/0.99      inference(global_propositional_subsumption,
% 1.58/0.99                [status(thm)],
% 1.58/0.99                [c_2151,c_13,c_12,c_11,c_10,c_152,c_489,c_491,c_493,
% 1.58/0.99                 c_495]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_14,negated_conjecture,
% 1.58/0.99      ( ~ m1_subset_1(X0,sK7)
% 1.58/0.99      | ~ m1_subset_1(X1,sK6)
% 1.58/0.99      | ~ m1_subset_1(X2,sK5)
% 1.58/0.99      | ~ m1_subset_1(X3,sK4)
% 1.58/0.99      | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK9
% 1.58/0.99      | sK8 = X0 ),
% 1.58/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_321,plain,
% 1.58/0.99      ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK9
% 1.58/0.99      | sK8 = X3
% 1.58/0.99      | m1_subset_1(X3,sK7) != iProver_top
% 1.58/0.99      | m1_subset_1(X2,sK6) != iProver_top
% 1.58/0.99      | m1_subset_1(X1,sK5) != iProver_top
% 1.58/0.99      | m1_subset_1(X0,sK4) != iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2361,plain,
% 1.58/0.99      ( sK3(sK4,sK5,sK6,sK7,sK9) = sK8
% 1.58/0.99      | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) != iProver_top
% 1.58/0.99      | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) != iProver_top
% 1.58/0.99      | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) != iProver_top
% 1.58/0.99      | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) != iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_2356,c_321]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_4,plain,
% 1.58/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.58/0.99      | m1_subset_1(sK0(X1,X2,X3,X4,X0),X1)
% 1.58/0.99      | k1_xboole_0 = X4
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1 ),
% 1.58/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_326,plain,
% 1.58/0.99      ( k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
% 1.58/0.99      | m1_subset_1(sK0(X2,X1,X0,X3,X4),X2) = iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_867,plain,
% 1.58/0.99      ( sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0
% 1.58/0.99      | m1_subset_1(sK0(sK4,sK5,sK6,sK7,sK9),sK4) = iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_326]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_3,plain,
% 1.58/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.58/0.99      | m1_subset_1(sK1(X1,X2,X3,X4,X0),X2)
% 1.58/0.99      | k1_xboole_0 = X4
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1 ),
% 1.58/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_327,plain,
% 1.58/0.99      ( k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
% 1.58/0.99      | m1_subset_1(sK1(X2,X1,X0,X3,X4),X1) = iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_1023,plain,
% 1.58/0.99      ( sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0
% 1.58/0.99      | m1_subset_1(sK1(sK4,sK5,sK6,sK7,sK9),sK5) = iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_327]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2,plain,
% 1.58/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.58/0.99      | m1_subset_1(sK2(X1,X2,X3,X4,X0),X3)
% 1.58/0.99      | k1_xboole_0 = X4
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1 ),
% 1.58/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_328,plain,
% 1.58/0.99      ( k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
% 1.58/0.99      | m1_subset_1(sK2(X2,X1,X0,X3,X4),X0) = iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_1172,plain,
% 1.58/0.99      ( sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0
% 1.58/0.99      | m1_subset_1(sK2(sK4,sK5,sK6,sK7,sK9),sK6) = iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_328]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_1,plain,
% 1.58/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.58/0.99      | m1_subset_1(sK3(X1,X2,X3,X4,X0),X4)
% 1.58/0.99      | k1_xboole_0 = X4
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1 ),
% 1.58/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_329,plain,
% 1.58/0.99      ( k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X1),X0),X3)) != iProver_top
% 1.58/0.99      | m1_subset_1(sK3(X2,X1,X0,X3,X4),X3) = iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_1181,plain,
% 1.58/0.99      ( sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0
% 1.58/0.99      | m1_subset_1(sK3(sK4,sK5,sK6,sK7,sK9),sK7) = iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_329]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2811,plain,
% 1.58/0.99      ( sK3(sK4,sK5,sK6,sK7,sK9) = sK8 ),
% 1.58/0.99      inference(global_propositional_subsumption,
% 1.58/0.99                [status(thm)],
% 1.58/0.99                [c_2361,c_13,c_12,c_11,c_10,c_152,c_489,c_491,c_493,
% 1.58/0.99                 c_495,c_867,c_1023,c_1172,c_1181]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_2815,plain,
% 1.58/0.99      ( k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK8) = sK9 ),
% 1.58/0.99      inference(demodulation,[status(thm)],[c_2811,c_2356]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_5,plain,
% 1.58/0.99      ( ~ m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X4,X5),X6),X7))
% 1.58/0.99      | k11_mcart_1(X4,X5,X6,X7,k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3)) = X3
% 1.58/0.99      | k1_xboole_0 = X7
% 1.58/0.99      | k1_xboole_0 = X6
% 1.58/0.99      | k1_xboole_0 = X5
% 1.58/0.99      | k1_xboole_0 = X4 ),
% 1.58/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_325,plain,
% 1.58/0.99      ( k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7)) = X7
% 1.58/0.99      | k1_xboole_0 = X0
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | m1_subset_1(k4_tarski(k4_tarski(k4_tarski(X4,X5),X6),X7),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
% 1.58/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_3272,plain,
% 1.58/0.99      ( k11_mcart_1(X0,X1,X2,X3,k4_tarski(k4_tarski(k4_tarski(sK0(sK4,sK5,sK6,sK7,sK9),sK1(sK4,sK5,sK6,sK7,sK9)),sK2(sK4,sK5,sK6,sK7,sK9)),sK8)) = sK8
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X0
% 1.58/0.99      | m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_2815,c_325]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_3303,plain,
% 1.58/0.99      ( k11_mcart_1(X0,X1,X2,X3,sK9) = sK8
% 1.58/0.99      | k1_xboole_0 = X3
% 1.58/0.99      | k1_xboole_0 = X2
% 1.58/0.99      | k1_xboole_0 = X1
% 1.58/0.99      | k1_xboole_0 = X0
% 1.58/0.99      | m1_subset_1(sK9,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
% 1.58/0.99      inference(light_normalisation,[status(thm)],[c_3272,c_2815]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_3450,plain,
% 1.58/0.99      ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) = sK8
% 1.58/0.99      | sK7 = k1_xboole_0
% 1.58/0.99      | sK6 = k1_xboole_0
% 1.58/0.99      | sK5 = k1_xboole_0
% 1.58/0.99      | sK4 = k1_xboole_0 ),
% 1.58/0.99      inference(superposition,[status(thm)],[c_320,c_3303]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(c_9,negated_conjecture,
% 1.58/0.99      ( k11_mcart_1(sK4,sK5,sK6,sK7,sK9) != sK8 ),
% 1.58/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.58/0.99  
% 1.58/0.99  cnf(contradiction,plain,
% 1.58/0.99      ( $false ),
% 1.58/0.99      inference(minisat,
% 1.58/0.99                [status(thm)],
% 1.58/0.99                [c_3450,c_495,c_493,c_491,c_489,c_152,c_9,c_10,c_11,c_12,
% 1.58/0.99                 c_13]) ).
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.58/0.99  
% 1.58/0.99  ------                               Statistics
% 1.58/0.99  
% 1.58/0.99  ------ General
% 1.58/0.99  
% 1.58/0.99  abstr_ref_over_cycles:                  0
% 1.58/0.99  abstr_ref_under_cycles:                 0
% 1.58/0.99  gc_basic_clause_elim:                   0
% 1.58/0.99  forced_gc_time:                         0
% 1.58/0.99  parsing_time:                           0.008
% 1.58/0.99  unif_index_cands_time:                  0.
% 1.58/0.99  unif_index_add_time:                    0.
% 1.58/0.99  orderings_time:                         0.
% 1.58/0.99  out_proof_time:                         0.01
% 1.58/0.99  total_time:                             0.165
% 1.58/0.99  num_of_symbols:                         49
% 1.58/0.99  num_of_terms:                           9763
% 1.58/0.99  
% 1.58/0.99  ------ Preprocessing
% 1.58/0.99  
% 1.58/0.99  num_of_splits:                          0
% 1.58/0.99  num_of_split_atoms:                     0
% 1.58/0.99  num_of_reused_defs:                     0
% 1.58/0.99  num_eq_ax_congr_red:                    64
% 1.58/0.99  num_of_sem_filtered_clauses:            1
% 1.58/0.99  num_of_subtypes:                        0
% 1.58/0.99  monotx_restored_types:                  0
% 1.58/0.99  sat_num_of_epr_types:                   0
% 1.58/0.99  sat_num_of_non_cyclic_types:            0
% 1.58/0.99  sat_guarded_non_collapsed_types:        0
% 1.58/0.99  num_pure_diseq_elim:                    0
% 1.58/0.99  simp_replaced_by:                       0
% 1.58/0.99  res_preprocessed:                       67
% 1.58/0.99  prep_upred:                             0
% 1.58/0.99  prep_unflattend:                        0
% 1.58/0.99  smt_new_axioms:                         0
% 1.58/0.99  pred_elim_cands:                        1
% 1.58/0.99  pred_elim:                              0
% 1.58/0.99  pred_elim_cl:                           0
% 1.58/0.99  pred_elim_cycles:                       1
% 1.58/0.99  merged_defs:                            0
% 1.58/0.99  merged_defs_ncl:                        0
% 1.58/0.99  bin_hyper_res:                          0
% 1.58/0.99  prep_cycles:                            3
% 1.58/0.99  pred_elim_time:                         0.
% 1.58/0.99  splitting_time:                         0.
% 1.58/0.99  sem_filter_time:                        0.
% 1.58/0.99  monotx_time:                            0.
% 1.58/0.99  subtype_inf_time:                       0.
% 1.58/0.99  
% 1.58/0.99  ------ Problem properties
% 1.58/0.99  
% 1.58/0.99  clauses:                                16
% 1.58/0.99  conjectures:                            7
% 1.58/0.99  epr:                                    4
% 1.58/0.99  horn:                                   7
% 1.58/0.99  ground:                                 6
% 1.58/0.99  unary:                                  6
% 1.58/0.99  binary:                                 0
% 1.58/0.99  lits:                                   66
% 1.58/0.99  lits_eq:                                48
% 1.58/0.99  fd_pure:                                0
% 1.58/0.99  fd_pseudo:                              0
% 1.58/0.99  fd_cond:                                5
% 1.58/0.99  fd_pseudo_cond:                         0
% 1.58/0.99  ac_symbols:                             0
% 1.58/0.99  
% 1.58/0.99  ------ Propositional Solver
% 1.58/0.99  
% 1.58/0.99  prop_solver_calls:                      22
% 1.58/0.99  prop_fast_solver_calls:                 684
% 1.58/0.99  smt_solver_calls:                       0
% 1.58/0.99  smt_fast_solver_calls:                  0
% 1.58/0.99  prop_num_of_clauses:                    1474
% 1.58/0.99  prop_preprocess_simplified:             5474
% 1.58/0.99  prop_fo_subsumed:                       36
% 1.58/0.99  prop_solver_time:                       0.
% 1.58/0.99  smt_solver_time:                        0.
% 1.58/0.99  smt_fast_solver_time:                   0.
% 1.58/0.99  prop_fast_solver_time:                  0.
% 1.58/0.99  prop_unsat_core_time:                   0.
% 1.58/0.99  
% 1.58/0.99  ------ QBF
% 1.58/0.99  
% 1.58/0.99  qbf_q_res:                              0
% 1.58/0.99  qbf_num_tautologies:                    0
% 1.58/0.99  qbf_prep_cycles:                        0
% 1.58/0.99  
% 1.58/0.99  ------ BMC1
% 1.58/0.99  
% 1.58/0.99  bmc1_current_bound:                     -1
% 1.58/0.99  bmc1_last_solved_bound:                 -1
% 1.58/0.99  bmc1_unsat_core_size:                   -1
% 1.58/0.99  bmc1_unsat_core_parents_size:           -1
% 1.58/0.99  bmc1_merge_next_fun:                    0
% 1.58/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.58/0.99  
% 1.58/0.99  ------ Instantiation
% 1.58/0.99  
% 1.58/0.99  inst_num_of_clauses:                    477
% 1.58/0.99  inst_num_in_passive:                    280
% 1.58/0.99  inst_num_in_active:                     180
% 1.58/0.99  inst_num_in_unprocessed:                17
% 1.58/0.99  inst_num_of_loops:                      180
% 1.58/0.99  inst_num_of_learning_restarts:          0
% 1.58/0.99  inst_num_moves_active_passive:          0
% 1.58/0.99  inst_lit_activity:                      0
% 1.58/0.99  inst_lit_activity_moves:                0
% 1.58/0.99  inst_num_tautologies:                   0
% 1.58/0.99  inst_num_prop_implied:                  0
% 1.58/0.99  inst_num_existing_simplified:           0
% 1.58/0.99  inst_num_eq_res_simplified:             0
% 1.58/0.99  inst_num_child_elim:                    0
% 1.58/0.99  inst_num_of_dismatching_blockings:      0
% 1.58/0.99  inst_num_of_non_proper_insts:           445
% 1.58/0.99  inst_num_of_duplicates:                 0
% 1.58/0.99  inst_inst_num_from_inst_to_res:         0
% 1.58/0.99  inst_dismatching_checking_time:         0.
% 1.58/0.99  
% 1.58/0.99  ------ Resolution
% 1.58/0.99  
% 1.58/0.99  res_num_of_clauses:                     0
% 1.58/0.99  res_num_in_passive:                     0
% 1.58/0.99  res_num_in_active:                      0
% 1.58/0.99  res_num_of_loops:                       70
% 1.58/0.99  res_forward_subset_subsumed:            5
% 1.58/0.99  res_backward_subset_subsumed:           0
% 1.58/0.99  res_forward_subsumed:                   0
% 1.58/0.99  res_backward_subsumed:                  0
% 1.58/0.99  res_forward_subsumption_resolution:     0
% 1.58/0.99  res_backward_subsumption_resolution:    0
% 1.58/0.99  res_clause_to_clause_subsumption:       41
% 1.58/0.99  res_orphan_elimination:                 0
% 1.58/0.99  res_tautology_del:                      0
% 1.58/0.99  res_num_eq_res_simplified:              0
% 1.58/0.99  res_num_sel_changes:                    0
% 1.58/0.99  res_moves_from_active_to_pass:          0
% 1.58/0.99  
% 1.58/0.99  ------ Superposition
% 1.58/0.99  
% 1.58/0.99  sup_time_total:                         0.
% 1.58/0.99  sup_time_generating:                    0.
% 1.58/0.99  sup_time_sim_full:                      0.
% 1.58/0.99  sup_time_sim_immed:                     0.
% 1.58/0.99  
% 1.58/0.99  sup_num_of_clauses:                     43
% 1.58/0.99  sup_num_in_active:                      32
% 1.58/0.99  sup_num_in_passive:                     11
% 1.58/0.99  sup_num_of_loops:                       34
% 1.58/0.99  sup_fw_superposition:                   9
% 1.58/0.99  sup_bw_superposition:                   30
% 1.58/0.99  sup_immediate_simplified:               24
% 1.58/0.99  sup_given_eliminated:                   0
% 1.58/0.99  comparisons_done:                       0
% 1.58/0.99  comparisons_avoided:                    16
% 1.58/0.99  
% 1.58/0.99  ------ Simplifications
% 1.58/0.99  
% 1.58/0.99  
% 1.58/0.99  sim_fw_subset_subsumed:                 0
% 1.58/0.99  sim_bw_subset_subsumed:                 0
% 1.58/0.99  sim_fw_subsumed:                        0
% 1.58/0.99  sim_bw_subsumed:                        0
% 1.58/0.99  sim_fw_subsumption_res:                 0
% 1.58/0.99  sim_bw_subsumption_res:                 0
% 1.58/0.99  sim_tautology_del:                      0
% 1.58/0.99  sim_eq_tautology_del:                   1
% 1.58/0.99  sim_eq_res_simp:                        0
% 1.58/0.99  sim_fw_demodulated:                     0
% 1.58/0.99  sim_bw_demodulated:                     3
% 1.58/0.99  sim_light_normalised:                   26
% 1.58/0.99  sim_joinable_taut:                      0
% 1.58/0.99  sim_joinable_simp:                      0
% 1.58/0.99  sim_ac_normalised:                      0
% 1.58/0.99  sim_smt_subsumption:                    0
% 1.58/0.99  
%------------------------------------------------------------------------------
