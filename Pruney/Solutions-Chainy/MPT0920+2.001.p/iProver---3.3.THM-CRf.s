%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:59:20 EST 2020

% Result     : Theorem 1.82s
% Output     : CNFRefutation 1.82s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 350 expanded)
%              Number of clauses        :   43 (  99 expanded)
%              Number of leaves         :   14 (  94 expanded)
%              Depth                    :   13
%              Number of atoms          :  276 (2063 expanded)
%              Number of equality atoms :  174 (1309 expanded)
%              Maximal formula depth    :   24 (   6 average)
%              Maximal clause size      :   24 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
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
    inference(negated_conjecture,[],[f13])).

fof(f23,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f24,plain,(
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
    inference(flattening,[],[f23])).

fof(f29,plain,
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
   => ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6
      & k1_xboole_0 != sK5
      & k1_xboole_0 != sK4
      & k1_xboole_0 != sK3
      & k1_xboole_0 != sK2
      & ! [X6] :
          ( ! [X7] :
              ( ! [X8] :
                  ( ! [X9] :
                      ( sK6 = X7
                      | k4_mcart_1(X6,X7,X8,X9) != sK7
                      | ~ m1_subset_1(X9,sK5) )
                  | ~ m1_subset_1(X8,sK4) )
              | ~ m1_subset_1(X7,sK3) )
          | ~ m1_subset_1(X6,sK2) )
      & m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5)) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6
    & k1_xboole_0 != sK5
    & k1_xboole_0 != sK4
    & k1_xboole_0 != sK3
    & k1_xboole_0 != sK2
    & ! [X6] :
        ( ! [X7] :
            ( ! [X8] :
                ( ! [X9] :
                    ( sK6 = X7
                    | k4_mcart_1(X6,X7,X8,X9) != sK7
                    | ~ m1_subset_1(X9,sK5) )
                | ~ m1_subset_1(X8,sK4) )
            | ~ m1_subset_1(X7,sK3) )
        | ~ m1_subset_1(X6,sK2) )
    & m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7])],[f24,f29])).

fof(f47,plain,(
    m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5)) ),
    inference(cnf_transformation,[],[f30])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X2,X0,X1] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f55,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f37,f35])).

fof(f62,plain,(
    m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
    inference(definition_unfolding,[],[f47,f55])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
     => m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f39,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f57,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(definition_unfolding,[],[f39,f55])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ~ ( ~ ! [X4] :
              ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
             => k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4 )
        & k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4
          | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) )
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f11])).

fof(f44,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X2,X0,X1] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f2])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] : k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f36,f34])).

fof(f60,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4)),k10_mcart_1(X0,X1,X2,X3,X4)),k11_mcart_1(X0,X1,X2,X3,X4)) = X4
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f44,f54,f55])).

fof(f49,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f30])).

fof(f50,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f30])).

fof(f51,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f30])).

fof(f52,plain,(
    k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f30])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( k2_mcart_1(k4_tarski(X0,X1)) = X1
      & k1_mcart_1(k4_tarski(X0,X1)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f12])).

fof(f48,plain,(
    ! [X6,X8,X7,X9] :
      ( sK6 = X7
      | k4_mcart_1(X6,X7,X8,X9) != sK7
      | ~ m1_subset_1(X9,sK5)
      | ~ m1_subset_1(X8,sK4)
      | ~ m1_subset_1(X7,sK3)
      | ~ m1_subset_1(X6,sK2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f61,plain,(
    ! [X6,X8,X7,X9] :
      ( sK6 = X7
      | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK7
      | ~ m1_subset_1(X9,sK5)
      | ~ m1_subset_1(X8,sK4)
      | ~ m1_subset_1(X7,sK3)
      | ~ m1_subset_1(X6,sK2) ) ),
    inference(definition_unfolding,[],[f48,f54])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
     => m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f41,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f59,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(definition_unfolding,[],[f41,f55])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
     => m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f40,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f58,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(definition_unfolding,[],[f40,f55])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))
     => m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f38,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f56,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2)
      | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) ) ),
    inference(definition_unfolding,[],[f38,f55])).

fof(f53,plain,(
    k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_305,plain,
    ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(k11_mcart_1(X1,X2,X3,X4,X0),X4) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_310,plain,
    ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) != iProver_top
    | m1_subset_1(k11_mcart_1(X1,X2,X3,X4,X0),X4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_4572,plain,
    ( m1_subset_1(k11_mcart_1(sK2,sK3,sK4,sK5,sK7),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_305,c_310])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X1,X2,X3,X4,X0),k9_mcart_1(X1,X2,X3,X4,X0)),k10_mcart_1(X1,X2,X3,X4,X0)),k11_mcart_1(X1,X2,X3,X4,X0)) = X0
    | k1_xboole_0 = X4
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_307,plain,
    ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4)),k10_mcart_1(X0,X1,X2,X3,X4)),k11_mcart_1(X0,X1,X2,X3,X4)) = X4
    | k1_xboole_0 = X1
    | k1_xboole_0 = X3
    | k1_xboole_0 = X2
    | k1_xboole_0 = X0
    | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_706,plain,
    ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),k9_mcart_1(sK2,sK3,sK4,sK5,sK7)),k10_mcart_1(sK2,sK3,sK4,sK5,sK7)),k11_mcart_1(sK2,sK3,sK4,sK5,sK7)) = sK7
    | sK5 = k1_xboole_0
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_305,c_307])).

cnf(c_16,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_14,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_166,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_185,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_166])).

cnf(c_167,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_406,plain,
    ( sK5 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK5 ),
    inference(instantiation,[status(thm)],[c_167])).

cnf(c_407,plain,
    ( sK5 != k1_xboole_0
    | k1_xboole_0 = sK5
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_406])).

cnf(c_408,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_167])).

cnf(c_409,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_408])).

cnf(c_410,plain,
    ( sK3 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_167])).

cnf(c_411,plain,
    ( sK3 != k1_xboole_0
    | k1_xboole_0 = sK3
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_410])).

cnf(c_412,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_167])).

cnf(c_413,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_412])).

cnf(c_1158,plain,
    ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),k9_mcart_1(sK2,sK3,sK4,sK5,sK7)),k10_mcart_1(sK2,sK3,sK4,sK5,sK7)),k11_mcart_1(sK2,sK3,sK4,sK5,sK7)) = sK7 ),
    inference(global_propositional_subsumption,[status(thm)],[c_706,c_16,c_15,c_14,c_13,c_185,c_407,c_409,c_411,c_413])).

cnf(c_10,plain,
    ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1164,plain,
    ( k11_mcart_1(sK2,sK3,sK4,sK5,sK7) = k2_mcart_1(sK7) ),
    inference(superposition,[status(thm)],[c_1158,c_10])).

cnf(c_4573,plain,
    ( m1_subset_1(k2_mcart_1(sK7),sK5) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4572,c_1164])).

cnf(c_17,negated_conjecture,
    ( ~ m1_subset_1(X0,sK5)
    | ~ m1_subset_1(X1,sK4)
    | ~ m1_subset_1(X2,sK3)
    | ~ m1_subset_1(X3,sK2)
    | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK7
    | sK6 = X2 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_306,plain,
    ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK7
    | sK6 = X1
    | m1_subset_1(X3,sK5) != iProver_top
    | m1_subset_1(X2,sK4) != iProver_top
    | m1_subset_1(X1,sK3) != iProver_top
    | m1_subset_1(X0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1167,plain,
    ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) = sK6
    | m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) != iProver_top
    | m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) != iProver_top
    | m1_subset_1(k11_mcart_1(sK2,sK3,sK4,sK5,sK7),sK5) != iProver_top
    | m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1158,c_306])).

cnf(c_1361,plain,
    ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) = sK6
    | m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) != iProver_top
    | m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) != iProver_top
    | m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) != iProver_top
    | m1_subset_1(k2_mcart_1(sK7),sK5) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1167,c_1164])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(k9_mcart_1(X1,X2,X3,X4,X0),X2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_434,plain,
    ( m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3)
    | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_435,plain,
    ( m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) = iProver_top
    | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_434])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(k8_mcart_1(X1,X2,X3,X4,X0),X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_431,plain,
    ( m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2)
    | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_432,plain,
    ( m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) = iProver_top
    | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_431])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
    | m1_subset_1(k10_mcart_1(X1,X2,X3,X4,X0),X3) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_425,plain,
    ( m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4)
    | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_426,plain,
    ( m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) = iProver_top
    | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_425])).

cnf(c_12,negated_conjecture,
    ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_19,plain,
    ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4573,c_1361,c_435,c_432,c_426,c_12,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:24:31 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.82/1.01  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.82/1.01  
% 1.82/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.82/1.01  
% 1.82/1.01  ------  iProver source info
% 1.82/1.01  
% 1.82/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.82/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.82/1.01  git: non_committed_changes: false
% 1.82/1.01  git: last_make_outside_of_git: false
% 1.82/1.01  
% 1.82/1.01  ------ 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options
% 1.82/1.01  
% 1.82/1.01  --out_options                           all
% 1.82/1.01  --tptp_safe_out                         true
% 1.82/1.01  --problem_path                          ""
% 1.82/1.01  --include_path                          ""
% 1.82/1.01  --clausifier                            res/vclausify_rel
% 1.82/1.01  --clausifier_options                    --mode clausify
% 1.82/1.01  --stdin                                 false
% 1.82/1.01  --stats_out                             all
% 1.82/1.01  
% 1.82/1.01  ------ General Options
% 1.82/1.01  
% 1.82/1.01  --fof                                   false
% 1.82/1.01  --time_out_real                         305.
% 1.82/1.01  --time_out_virtual                      -1.
% 1.82/1.01  --symbol_type_check                     false
% 1.82/1.01  --clausify_out                          false
% 1.82/1.01  --sig_cnt_out                           false
% 1.82/1.01  --trig_cnt_out                          false
% 1.82/1.01  --trig_cnt_out_tolerance                1.
% 1.82/1.01  --trig_cnt_out_sk_spl                   false
% 1.82/1.01  --abstr_cl_out                          false
% 1.82/1.01  
% 1.82/1.01  ------ Global Options
% 1.82/1.01  
% 1.82/1.01  --schedule                              default
% 1.82/1.01  --add_important_lit                     false
% 1.82/1.01  --prop_solver_per_cl                    1000
% 1.82/1.01  --min_unsat_core                        false
% 1.82/1.01  --soft_assumptions                      false
% 1.82/1.01  --soft_lemma_size                       3
% 1.82/1.01  --prop_impl_unit_size                   0
% 1.82/1.01  --prop_impl_unit                        []
% 1.82/1.01  --share_sel_clauses                     true
% 1.82/1.01  --reset_solvers                         false
% 1.82/1.01  --bc_imp_inh                            [conj_cone]
% 1.82/1.01  --conj_cone_tolerance                   3.
% 1.82/1.01  --extra_neg_conj                        none
% 1.82/1.01  --large_theory_mode                     true
% 1.82/1.01  --prolific_symb_bound                   200
% 1.82/1.01  --lt_threshold                          2000
% 1.82/1.01  --clause_weak_htbl                      true
% 1.82/1.01  --gc_record_bc_elim                     false
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing Options
% 1.82/1.01  
% 1.82/1.01  --preprocessing_flag                    true
% 1.82/1.01  --time_out_prep_mult                    0.1
% 1.82/1.01  --splitting_mode                        input
% 1.82/1.01  --splitting_grd                         true
% 1.82/1.01  --splitting_cvd                         false
% 1.82/1.01  --splitting_cvd_svl                     false
% 1.82/1.01  --splitting_nvd                         32
% 1.82/1.01  --sub_typing                            true
% 1.82/1.01  --prep_gs_sim                           true
% 1.82/1.01  --prep_unflatten                        true
% 1.82/1.01  --prep_res_sim                          true
% 1.82/1.01  --prep_upred                            true
% 1.82/1.01  --prep_sem_filter                       exhaustive
% 1.82/1.01  --prep_sem_filter_out                   false
% 1.82/1.01  --pred_elim                             true
% 1.82/1.01  --res_sim_input                         true
% 1.82/1.01  --eq_ax_congr_red                       true
% 1.82/1.01  --pure_diseq_elim                       true
% 1.82/1.01  --brand_transform                       false
% 1.82/1.01  --non_eq_to_eq                          false
% 1.82/1.01  --prep_def_merge                        true
% 1.82/1.01  --prep_def_merge_prop_impl              false
% 1.82/1.01  --prep_def_merge_mbd                    true
% 1.82/1.01  --prep_def_merge_tr_red                 false
% 1.82/1.01  --prep_def_merge_tr_cl                  false
% 1.82/1.01  --smt_preprocessing                     true
% 1.82/1.01  --smt_ac_axioms                         fast
% 1.82/1.01  --preprocessed_out                      false
% 1.82/1.01  --preprocessed_stats                    false
% 1.82/1.01  
% 1.82/1.01  ------ Abstraction refinement Options
% 1.82/1.01  
% 1.82/1.01  --abstr_ref                             []
% 1.82/1.01  --abstr_ref_prep                        false
% 1.82/1.01  --abstr_ref_until_sat                   false
% 1.82/1.01  --abstr_ref_sig_restrict                funpre
% 1.82/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.82/1.01  --abstr_ref_under                       []
% 1.82/1.01  
% 1.82/1.01  ------ SAT Options
% 1.82/1.01  
% 1.82/1.01  --sat_mode                              false
% 1.82/1.01  --sat_fm_restart_options                ""
% 1.82/1.01  --sat_gr_def                            false
% 1.82/1.01  --sat_epr_types                         true
% 1.82/1.01  --sat_non_cyclic_types                  false
% 1.82/1.01  --sat_finite_models                     false
% 1.82/1.01  --sat_fm_lemmas                         false
% 1.82/1.01  --sat_fm_prep                           false
% 1.82/1.01  --sat_fm_uc_incr                        true
% 1.82/1.01  --sat_out_model                         small
% 1.82/1.01  --sat_out_clauses                       false
% 1.82/1.01  
% 1.82/1.01  ------ QBF Options
% 1.82/1.01  
% 1.82/1.01  --qbf_mode                              false
% 1.82/1.01  --qbf_elim_univ                         false
% 1.82/1.01  --qbf_dom_inst                          none
% 1.82/1.01  --qbf_dom_pre_inst                      false
% 1.82/1.01  --qbf_sk_in                             false
% 1.82/1.01  --qbf_pred_elim                         true
% 1.82/1.01  --qbf_split                             512
% 1.82/1.01  
% 1.82/1.01  ------ BMC1 Options
% 1.82/1.01  
% 1.82/1.01  --bmc1_incremental                      false
% 1.82/1.01  --bmc1_axioms                           reachable_all
% 1.82/1.01  --bmc1_min_bound                        0
% 1.82/1.01  --bmc1_max_bound                        -1
% 1.82/1.01  --bmc1_max_bound_default                -1
% 1.82/1.01  --bmc1_symbol_reachability              true
% 1.82/1.01  --bmc1_property_lemmas                  false
% 1.82/1.01  --bmc1_k_induction                      false
% 1.82/1.01  --bmc1_non_equiv_states                 false
% 1.82/1.01  --bmc1_deadlock                         false
% 1.82/1.01  --bmc1_ucm                              false
% 1.82/1.01  --bmc1_add_unsat_core                   none
% 1.82/1.01  --bmc1_unsat_core_children              false
% 1.82/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.82/1.01  --bmc1_out_stat                         full
% 1.82/1.01  --bmc1_ground_init                      false
% 1.82/1.01  --bmc1_pre_inst_next_state              false
% 1.82/1.01  --bmc1_pre_inst_state                   false
% 1.82/1.01  --bmc1_pre_inst_reach_state             false
% 1.82/1.01  --bmc1_out_unsat_core                   false
% 1.82/1.01  --bmc1_aig_witness_out                  false
% 1.82/1.01  --bmc1_verbose                          false
% 1.82/1.01  --bmc1_dump_clauses_tptp                false
% 1.82/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.82/1.01  --bmc1_dump_file                        -
% 1.82/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.82/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.82/1.01  --bmc1_ucm_extend_mode                  1
% 1.82/1.01  --bmc1_ucm_init_mode                    2
% 1.82/1.01  --bmc1_ucm_cone_mode                    none
% 1.82/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.82/1.01  --bmc1_ucm_relax_model                  4
% 1.82/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.82/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.82/1.01  --bmc1_ucm_layered_model                none
% 1.82/1.01  --bmc1_ucm_max_lemma_size               10
% 1.82/1.01  
% 1.82/1.01  ------ AIG Options
% 1.82/1.01  
% 1.82/1.01  --aig_mode                              false
% 1.82/1.01  
% 1.82/1.01  ------ Instantiation Options
% 1.82/1.01  
% 1.82/1.01  --instantiation_flag                    true
% 1.82/1.01  --inst_sos_flag                         false
% 1.82/1.01  --inst_sos_phase                        true
% 1.82/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel_side                     num_symb
% 1.82/1.01  --inst_solver_per_active                1400
% 1.82/1.01  --inst_solver_calls_frac                1.
% 1.82/1.01  --inst_passive_queue_type               priority_queues
% 1.82/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.82/1.01  --inst_passive_queues_freq              [25;2]
% 1.82/1.01  --inst_dismatching                      true
% 1.82/1.01  --inst_eager_unprocessed_to_passive     true
% 1.82/1.01  --inst_prop_sim_given                   true
% 1.82/1.01  --inst_prop_sim_new                     false
% 1.82/1.01  --inst_subs_new                         false
% 1.82/1.01  --inst_eq_res_simp                      false
% 1.82/1.01  --inst_subs_given                       false
% 1.82/1.01  --inst_orphan_elimination               true
% 1.82/1.01  --inst_learning_loop_flag               true
% 1.82/1.01  --inst_learning_start                   3000
% 1.82/1.01  --inst_learning_factor                  2
% 1.82/1.01  --inst_start_prop_sim_after_learn       3
% 1.82/1.01  --inst_sel_renew                        solver
% 1.82/1.01  --inst_lit_activity_flag                true
% 1.82/1.01  --inst_restr_to_given                   false
% 1.82/1.01  --inst_activity_threshold               500
% 1.82/1.01  --inst_out_proof                        true
% 1.82/1.01  
% 1.82/1.01  ------ Resolution Options
% 1.82/1.01  
% 1.82/1.01  --resolution_flag                       true
% 1.82/1.01  --res_lit_sel                           adaptive
% 1.82/1.01  --res_lit_sel_side                      none
% 1.82/1.01  --res_ordering                          kbo
% 1.82/1.01  --res_to_prop_solver                    active
% 1.82/1.01  --res_prop_simpl_new                    false
% 1.82/1.01  --res_prop_simpl_given                  true
% 1.82/1.01  --res_passive_queue_type                priority_queues
% 1.82/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.82/1.01  --res_passive_queues_freq               [15;5]
% 1.82/1.01  --res_forward_subs                      full
% 1.82/1.01  --res_backward_subs                     full
% 1.82/1.01  --res_forward_subs_resolution           true
% 1.82/1.01  --res_backward_subs_resolution          true
% 1.82/1.01  --res_orphan_elimination                true
% 1.82/1.01  --res_time_limit                        2.
% 1.82/1.01  --res_out_proof                         true
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Options
% 1.82/1.01  
% 1.82/1.01  --superposition_flag                    true
% 1.82/1.01  --sup_passive_queue_type                priority_queues
% 1.82/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.82/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.82/1.01  --demod_completeness_check              fast
% 1.82/1.01  --demod_use_ground                      true
% 1.82/1.01  --sup_to_prop_solver                    passive
% 1.82/1.01  --sup_prop_simpl_new                    true
% 1.82/1.01  --sup_prop_simpl_given                  true
% 1.82/1.01  --sup_fun_splitting                     false
% 1.82/1.01  --sup_smt_interval                      50000
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Simplification Setup
% 1.82/1.01  
% 1.82/1.01  --sup_indices_passive                   []
% 1.82/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.82/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_full_bw                           [BwDemod]
% 1.82/1.01  --sup_immed_triv                        [TrivRules]
% 1.82/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.82/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_immed_bw_main                     []
% 1.82/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.82/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  
% 1.82/1.01  ------ Combination Options
% 1.82/1.01  
% 1.82/1.01  --comb_res_mult                         3
% 1.82/1.01  --comb_sup_mult                         2
% 1.82/1.01  --comb_inst_mult                        10
% 1.82/1.01  
% 1.82/1.01  ------ Debug Options
% 1.82/1.01  
% 1.82/1.01  --dbg_backtrace                         false
% 1.82/1.01  --dbg_dump_prop_clauses                 false
% 1.82/1.01  --dbg_dump_prop_clauses_file            -
% 1.82/1.01  --dbg_out_stat                          false
% 1.82/1.01  ------ Parsing...
% 1.82/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.82/1.01  ------ Proving...
% 1.82/1.01  ------ Problem Properties 
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  clauses                                 18
% 1.82/1.01  conjectures                             7
% 1.82/1.01  EPR                                     4
% 1.82/1.01  Horn                                    16
% 1.82/1.01  unary                                   10
% 1.82/1.01  binary                                  6
% 1.82/1.01  lits                                    34
% 1.82/1.01  lits eq                                 20
% 1.82/1.01  fd_pure                                 0
% 1.82/1.01  fd_pseudo                               0
% 1.82/1.01  fd_cond                                 1
% 1.82/1.01  fd_pseudo_cond                          2
% 1.82/1.01  AC symbols                              0
% 1.82/1.01  
% 1.82/1.01  ------ Schedule dynamic 5 is on 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  ------ 
% 1.82/1.01  Current options:
% 1.82/1.01  ------ 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options
% 1.82/1.01  
% 1.82/1.01  --out_options                           all
% 1.82/1.01  --tptp_safe_out                         true
% 1.82/1.01  --problem_path                          ""
% 1.82/1.01  --include_path                          ""
% 1.82/1.01  --clausifier                            res/vclausify_rel
% 1.82/1.01  --clausifier_options                    --mode clausify
% 1.82/1.01  --stdin                                 false
% 1.82/1.01  --stats_out                             all
% 1.82/1.01  
% 1.82/1.01  ------ General Options
% 1.82/1.01  
% 1.82/1.01  --fof                                   false
% 1.82/1.01  --time_out_real                         305.
% 1.82/1.01  --time_out_virtual                      -1.
% 1.82/1.01  --symbol_type_check                     false
% 1.82/1.01  --clausify_out                          false
% 1.82/1.01  --sig_cnt_out                           false
% 1.82/1.01  --trig_cnt_out                          false
% 1.82/1.01  --trig_cnt_out_tolerance                1.
% 1.82/1.01  --trig_cnt_out_sk_spl                   false
% 1.82/1.01  --abstr_cl_out                          false
% 1.82/1.01  
% 1.82/1.01  ------ Global Options
% 1.82/1.01  
% 1.82/1.01  --schedule                              default
% 1.82/1.01  --add_important_lit                     false
% 1.82/1.01  --prop_solver_per_cl                    1000
% 1.82/1.01  --min_unsat_core                        false
% 1.82/1.01  --soft_assumptions                      false
% 1.82/1.01  --soft_lemma_size                       3
% 1.82/1.01  --prop_impl_unit_size                   0
% 1.82/1.01  --prop_impl_unit                        []
% 1.82/1.01  --share_sel_clauses                     true
% 1.82/1.01  --reset_solvers                         false
% 1.82/1.01  --bc_imp_inh                            [conj_cone]
% 1.82/1.01  --conj_cone_tolerance                   3.
% 1.82/1.01  --extra_neg_conj                        none
% 1.82/1.01  --large_theory_mode                     true
% 1.82/1.01  --prolific_symb_bound                   200
% 1.82/1.01  --lt_threshold                          2000
% 1.82/1.01  --clause_weak_htbl                      true
% 1.82/1.01  --gc_record_bc_elim                     false
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing Options
% 1.82/1.01  
% 1.82/1.01  --preprocessing_flag                    true
% 1.82/1.01  --time_out_prep_mult                    0.1
% 1.82/1.01  --splitting_mode                        input
% 1.82/1.01  --splitting_grd                         true
% 1.82/1.01  --splitting_cvd                         false
% 1.82/1.01  --splitting_cvd_svl                     false
% 1.82/1.01  --splitting_nvd                         32
% 1.82/1.01  --sub_typing                            true
% 1.82/1.01  --prep_gs_sim                           true
% 1.82/1.01  --prep_unflatten                        true
% 1.82/1.01  --prep_res_sim                          true
% 1.82/1.01  --prep_upred                            true
% 1.82/1.01  --prep_sem_filter                       exhaustive
% 1.82/1.01  --prep_sem_filter_out                   false
% 1.82/1.01  --pred_elim                             true
% 1.82/1.01  --res_sim_input                         true
% 1.82/1.01  --eq_ax_congr_red                       true
% 1.82/1.01  --pure_diseq_elim                       true
% 1.82/1.01  --brand_transform                       false
% 1.82/1.01  --non_eq_to_eq                          false
% 1.82/1.01  --prep_def_merge                        true
% 1.82/1.01  --prep_def_merge_prop_impl              false
% 1.82/1.01  --prep_def_merge_mbd                    true
% 1.82/1.01  --prep_def_merge_tr_red                 false
% 1.82/1.01  --prep_def_merge_tr_cl                  false
% 1.82/1.01  --smt_preprocessing                     true
% 1.82/1.01  --smt_ac_axioms                         fast
% 1.82/1.01  --preprocessed_out                      false
% 1.82/1.01  --preprocessed_stats                    false
% 1.82/1.01  
% 1.82/1.01  ------ Abstraction refinement Options
% 1.82/1.01  
% 1.82/1.01  --abstr_ref                             []
% 1.82/1.01  --abstr_ref_prep                        false
% 1.82/1.01  --abstr_ref_until_sat                   false
% 1.82/1.01  --abstr_ref_sig_restrict                funpre
% 1.82/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.82/1.01  --abstr_ref_under                       []
% 1.82/1.01  
% 1.82/1.01  ------ SAT Options
% 1.82/1.01  
% 1.82/1.01  --sat_mode                              false
% 1.82/1.01  --sat_fm_restart_options                ""
% 1.82/1.01  --sat_gr_def                            false
% 1.82/1.01  --sat_epr_types                         true
% 1.82/1.01  --sat_non_cyclic_types                  false
% 1.82/1.01  --sat_finite_models                     false
% 1.82/1.01  --sat_fm_lemmas                         false
% 1.82/1.01  --sat_fm_prep                           false
% 1.82/1.01  --sat_fm_uc_incr                        true
% 1.82/1.01  --sat_out_model                         small
% 1.82/1.01  --sat_out_clauses                       false
% 1.82/1.01  
% 1.82/1.01  ------ QBF Options
% 1.82/1.01  
% 1.82/1.01  --qbf_mode                              false
% 1.82/1.01  --qbf_elim_univ                         false
% 1.82/1.01  --qbf_dom_inst                          none
% 1.82/1.01  --qbf_dom_pre_inst                      false
% 1.82/1.01  --qbf_sk_in                             false
% 1.82/1.01  --qbf_pred_elim                         true
% 1.82/1.01  --qbf_split                             512
% 1.82/1.01  
% 1.82/1.01  ------ BMC1 Options
% 1.82/1.01  
% 1.82/1.01  --bmc1_incremental                      false
% 1.82/1.01  --bmc1_axioms                           reachable_all
% 1.82/1.01  --bmc1_min_bound                        0
% 1.82/1.01  --bmc1_max_bound                        -1
% 1.82/1.01  --bmc1_max_bound_default                -1
% 1.82/1.01  --bmc1_symbol_reachability              true
% 1.82/1.01  --bmc1_property_lemmas                  false
% 1.82/1.01  --bmc1_k_induction                      false
% 1.82/1.01  --bmc1_non_equiv_states                 false
% 1.82/1.01  --bmc1_deadlock                         false
% 1.82/1.01  --bmc1_ucm                              false
% 1.82/1.01  --bmc1_add_unsat_core                   none
% 1.82/1.01  --bmc1_unsat_core_children              false
% 1.82/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.82/1.01  --bmc1_out_stat                         full
% 1.82/1.01  --bmc1_ground_init                      false
% 1.82/1.01  --bmc1_pre_inst_next_state              false
% 1.82/1.01  --bmc1_pre_inst_state                   false
% 1.82/1.01  --bmc1_pre_inst_reach_state             false
% 1.82/1.01  --bmc1_out_unsat_core                   false
% 1.82/1.01  --bmc1_aig_witness_out                  false
% 1.82/1.01  --bmc1_verbose                          false
% 1.82/1.01  --bmc1_dump_clauses_tptp                false
% 1.82/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.82/1.01  --bmc1_dump_file                        -
% 1.82/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.82/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.82/1.01  --bmc1_ucm_extend_mode                  1
% 1.82/1.01  --bmc1_ucm_init_mode                    2
% 1.82/1.01  --bmc1_ucm_cone_mode                    none
% 1.82/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.82/1.01  --bmc1_ucm_relax_model                  4
% 1.82/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.82/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.82/1.01  --bmc1_ucm_layered_model                none
% 1.82/1.01  --bmc1_ucm_max_lemma_size               10
% 1.82/1.01  
% 1.82/1.01  ------ AIG Options
% 1.82/1.01  
% 1.82/1.01  --aig_mode                              false
% 1.82/1.01  
% 1.82/1.01  ------ Instantiation Options
% 1.82/1.01  
% 1.82/1.01  --instantiation_flag                    true
% 1.82/1.01  --inst_sos_flag                         false
% 1.82/1.01  --inst_sos_phase                        true
% 1.82/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel_side                     none
% 1.82/1.01  --inst_solver_per_active                1400
% 1.82/1.01  --inst_solver_calls_frac                1.
% 1.82/1.01  --inst_passive_queue_type               priority_queues
% 1.82/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.82/1.01  --inst_passive_queues_freq              [25;2]
% 1.82/1.01  --inst_dismatching                      true
% 1.82/1.01  --inst_eager_unprocessed_to_passive     true
% 1.82/1.01  --inst_prop_sim_given                   true
% 1.82/1.01  --inst_prop_sim_new                     false
% 1.82/1.01  --inst_subs_new                         false
% 1.82/1.01  --inst_eq_res_simp                      false
% 1.82/1.01  --inst_subs_given                       false
% 1.82/1.01  --inst_orphan_elimination               true
% 1.82/1.01  --inst_learning_loop_flag               true
% 1.82/1.01  --inst_learning_start                   3000
% 1.82/1.01  --inst_learning_factor                  2
% 1.82/1.01  --inst_start_prop_sim_after_learn       3
% 1.82/1.01  --inst_sel_renew                        solver
% 1.82/1.01  --inst_lit_activity_flag                true
% 1.82/1.01  --inst_restr_to_given                   false
% 1.82/1.01  --inst_activity_threshold               500
% 1.82/1.01  --inst_out_proof                        true
% 1.82/1.01  
% 1.82/1.01  ------ Resolution Options
% 1.82/1.01  
% 1.82/1.01  --resolution_flag                       false
% 1.82/1.01  --res_lit_sel                           adaptive
% 1.82/1.01  --res_lit_sel_side                      none
% 1.82/1.01  --res_ordering                          kbo
% 1.82/1.01  --res_to_prop_solver                    active
% 1.82/1.01  --res_prop_simpl_new                    false
% 1.82/1.01  --res_prop_simpl_given                  true
% 1.82/1.01  --res_passive_queue_type                priority_queues
% 1.82/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.82/1.01  --res_passive_queues_freq               [15;5]
% 1.82/1.01  --res_forward_subs                      full
% 1.82/1.01  --res_backward_subs                     full
% 1.82/1.01  --res_forward_subs_resolution           true
% 1.82/1.01  --res_backward_subs_resolution          true
% 1.82/1.01  --res_orphan_elimination                true
% 1.82/1.01  --res_time_limit                        2.
% 1.82/1.01  --res_out_proof                         true
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Options
% 1.82/1.01  
% 1.82/1.01  --superposition_flag                    true
% 1.82/1.01  --sup_passive_queue_type                priority_queues
% 1.82/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.82/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.82/1.01  --demod_completeness_check              fast
% 1.82/1.01  --demod_use_ground                      true
% 1.82/1.01  --sup_to_prop_solver                    passive
% 1.82/1.01  --sup_prop_simpl_new                    true
% 1.82/1.01  --sup_prop_simpl_given                  true
% 1.82/1.01  --sup_fun_splitting                     false
% 1.82/1.01  --sup_smt_interval                      50000
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Simplification Setup
% 1.82/1.01  
% 1.82/1.01  --sup_indices_passive                   []
% 1.82/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.82/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_full_bw                           [BwDemod]
% 1.82/1.01  --sup_immed_triv                        [TrivRules]
% 1.82/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.82/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_immed_bw_main                     []
% 1.82/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.82/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  
% 1.82/1.01  ------ Combination Options
% 1.82/1.01  
% 1.82/1.01  --comb_res_mult                         3
% 1.82/1.01  --comb_sup_mult                         2
% 1.82/1.01  --comb_inst_mult                        10
% 1.82/1.01  
% 1.82/1.01  ------ Debug Options
% 1.82/1.01  
% 1.82/1.01  --dbg_backtrace                         false
% 1.82/1.01  --dbg_dump_prop_clauses                 false
% 1.82/1.01  --dbg_dump_prop_clauses_file            -
% 1.82/1.01  --dbg_out_stat                          false
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  ------ Proving...
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  % SZS status Theorem for theBenchmark.p
% 1.82/1.01  
% 1.82/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.82/1.01  
% 1.82/1.01  fof(f13,conjecture,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X7))))) => (k9_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f14,negated_conjecture,(
% 1.82/1.01    ~! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)) => (! [X6] : (m1_subset_1(X6,X0) => ! [X7] : (m1_subset_1(X7,X1) => ! [X8] : (m1_subset_1(X8,X2) => ! [X9] : (m1_subset_1(X9,X3) => (k4_mcart_1(X6,X7,X8,X9) = X5 => X4 = X7))))) => (k9_mcart_1(X0,X1,X2,X3,X5) = X4 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 1.82/1.01    inference(negated_conjecture,[],[f13])).
% 1.82/1.01  
% 1.82/1.01  fof(f23,plain,(
% 1.82/1.01    ? [X0,X1,X2,X3,X4,X5] : (((k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & ! [X6] : (! [X7] : (! [X8] : (! [X9] : ((X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5) | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0))) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(ennf_transformation,[],[f14])).
% 1.82/1.01  
% 1.82/1.01  fof(f24,plain,(
% 1.82/1.01    ? [X0,X1,X2,X3,X4,X5] : (k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(flattening,[],[f23])).
% 1.82/1.01  
% 1.82/1.01  fof(f29,plain,(
% 1.82/1.01    ? [X0,X1,X2,X3,X4,X5] : (k9_mcart_1(X0,X1,X2,X3,X5) != X4 & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (X4 = X7 | k4_mcart_1(X6,X7,X8,X9) != X5 | ~m1_subset_1(X9,X3)) | ~m1_subset_1(X8,X2)) | ~m1_subset_1(X7,X1)) | ~m1_subset_1(X6,X0)) & m1_subset_1(X5,k4_zfmisc_1(X0,X1,X2,X3))) => (k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK6 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK7 | ~m1_subset_1(X9,sK5)) | ~m1_subset_1(X8,sK4)) | ~m1_subset_1(X7,sK3)) | ~m1_subset_1(X6,sK2)) & m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5)))),
% 1.82/1.01    introduced(choice_axiom,[])).
% 1.82/1.01  
% 1.82/1.01  fof(f30,plain,(
% 1.82/1.01    k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6 & k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X6] : (! [X7] : (! [X8] : (! [X9] : (sK6 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK7 | ~m1_subset_1(X9,sK5)) | ~m1_subset_1(X8,sK4)) | ~m1_subset_1(X7,sK3)) | ~m1_subset_1(X6,sK2)) & m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5))),
% 1.82/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7])],[f24,f29])).
% 1.82/1.01  
% 1.82/1.01  fof(f47,plain,(
% 1.82/1.01    m1_subset_1(sK7,k4_zfmisc_1(sK2,sK3,sK4,sK5))),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f5,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f37,plain,(
% 1.82/1.01    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 1.82/1.01    inference(cnf_transformation,[],[f5])).
% 1.82/1.01  
% 1.82/1.01  fof(f3,axiom,(
% 1.82/1.01    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f35,plain,(
% 1.82/1.01    ( ! [X2,X0,X1] : (k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) )),
% 1.82/1.01    inference(cnf_transformation,[],[f3])).
% 1.82/1.01  
% 1.82/1.01  fof(f55,plain,(
% 1.82/1.01    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 1.82/1.01    inference(definition_unfolding,[],[f37,f35])).
% 1.82/1.01  
% 1.82/1.01  fof(f62,plain,(
% 1.82/1.01    m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5))),
% 1.82/1.01    inference(definition_unfolding,[],[f47,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f7,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3))),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f18,plain,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(ennf_transformation,[],[f7])).
% 1.82/1.01  
% 1.82/1.01  fof(f39,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.82/1.01    inference(cnf_transformation,[],[f18])).
% 1.82/1.01  
% 1.82/1.01  fof(f57,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k11_mcart_1(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.82/1.01    inference(definition_unfolding,[],[f39,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f11,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3] : ~(~! [X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f22,plain,(
% 1.82/1.01    ! [X0,X1,X2,X3] : (! [X4] : (k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.82/1.01    inference(ennf_transformation,[],[f11])).
% 1.82/1.01  
% 1.82/1.01  fof(f44,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (k4_mcart_1(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4),k10_mcart_1(X0,X1,X2,X3,X4),k11_mcart_1(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.82/1.01    inference(cnf_transformation,[],[f22])).
% 1.82/1.01  
% 1.82/1.01  fof(f4,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3] : k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f36,plain,(
% 1.82/1.01    ( ! [X2,X0,X3,X1] : (k4_tarski(k3_mcart_1(X0,X1,X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.82/1.01    inference(cnf_transformation,[],[f4])).
% 1.82/1.01  
% 1.82/1.01  fof(f2,axiom,(
% 1.82/1.01    ! [X0,X1,X2] : k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f34,plain,(
% 1.82/1.01    ( ! [X2,X0,X1] : (k4_tarski(k4_tarski(X0,X1),X2) = k3_mcart_1(X0,X1,X2)) )),
% 1.82/1.01    inference(cnf_transformation,[],[f2])).
% 1.82/1.01  
% 1.82/1.01  fof(f54,plain,(
% 1.82/1.01    ( ! [X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) = k4_mcart_1(X0,X1,X2,X3)) )),
% 1.82/1.01    inference(definition_unfolding,[],[f36,f34])).
% 1.82/1.01  
% 1.82/1.01  fof(f60,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4)),k10_mcart_1(X0,X1,X2,X3,X4)),k11_mcart_1(X0,X1,X2,X3,X4)) = X4 | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.82/1.01    inference(definition_unfolding,[],[f44,f54,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f49,plain,(
% 1.82/1.01    k1_xboole_0 != sK2),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f50,plain,(
% 1.82/1.01    k1_xboole_0 != sK3),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f51,plain,(
% 1.82/1.01    k1_xboole_0 != sK4),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f52,plain,(
% 1.82/1.01    k1_xboole_0 != sK5),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f12,axiom,(
% 1.82/1.01    ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1 & k1_mcart_1(k4_tarski(X0,X1)) = X0)),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f46,plain,(
% 1.82/1.01    ( ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1) )),
% 1.82/1.01    inference(cnf_transformation,[],[f12])).
% 1.82/1.01  
% 1.82/1.01  fof(f48,plain,(
% 1.82/1.01    ( ! [X6,X8,X7,X9] : (sK6 = X7 | k4_mcart_1(X6,X7,X8,X9) != sK7 | ~m1_subset_1(X9,sK5) | ~m1_subset_1(X8,sK4) | ~m1_subset_1(X7,sK3) | ~m1_subset_1(X6,sK2)) )),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  fof(f61,plain,(
% 1.82/1.01    ( ! [X6,X8,X7,X9] : (sK6 = X7 | k4_tarski(k4_tarski(k4_tarski(X6,X7),X8),X9) != sK7 | ~m1_subset_1(X9,sK5) | ~m1_subset_1(X8,sK4) | ~m1_subset_1(X7,sK3) | ~m1_subset_1(X6,sK2)) )),
% 1.82/1.01    inference(definition_unfolding,[],[f48,f54])).
% 1.82/1.01  
% 1.82/1.01  fof(f9,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1))),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f20,plain,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(ennf_transformation,[],[f9])).
% 1.82/1.01  
% 1.82/1.01  fof(f41,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.82/1.01    inference(cnf_transformation,[],[f20])).
% 1.82/1.01  
% 1.82/1.01  fof(f59,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k9_mcart_1(X0,X1,X2,X3,X4),X1) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.82/1.01    inference(definition_unfolding,[],[f41,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f8,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0))),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f19,plain,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(ennf_transformation,[],[f8])).
% 1.82/1.01  
% 1.82/1.01  fof(f40,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.82/1.01    inference(cnf_transformation,[],[f19])).
% 1.82/1.01  
% 1.82/1.01  fof(f58,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k8_mcart_1(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.82/1.01    inference(definition_unfolding,[],[f40,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f6,axiom,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)) => m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2))),
% 1.82/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.01  
% 1.82/1.01  fof(f17,plain,(
% 1.82/1.01    ! [X0,X1,X2,X3,X4] : (m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3)))),
% 1.82/1.01    inference(ennf_transformation,[],[f6])).
% 1.82/1.01  
% 1.82/1.01  fof(f38,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k4_zfmisc_1(X0,X1,X2,X3))) )),
% 1.82/1.01    inference(cnf_transformation,[],[f17])).
% 1.82/1.01  
% 1.82/1.01  fof(f56,plain,(
% 1.82/1.01    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k10_mcart_1(X0,X1,X2,X3,X4),X2) | ~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3))) )),
% 1.82/1.01    inference(definition_unfolding,[],[f38,f55])).
% 1.82/1.01  
% 1.82/1.01  fof(f53,plain,(
% 1.82/1.01    k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6),
% 1.82/1.01    inference(cnf_transformation,[],[f30])).
% 1.82/1.01  
% 1.82/1.01  cnf(c_18,negated_conjecture,
% 1.82/1.01      ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
% 1.82/1.01      inference(cnf_transformation,[],[f62]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_305,plain,
% 1.82/1.01      ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) = iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_4,plain,
% 1.82/1.01      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.82/1.01      | m1_subset_1(k11_mcart_1(X1,X2,X3,X4,X0),X4) ),
% 1.82/1.01      inference(cnf_transformation,[],[f57]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_310,plain,
% 1.82/1.01      ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) != iProver_top
% 1.82/1.01      | m1_subset_1(k11_mcart_1(X1,X2,X3,X4,X0),X4) = iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_4572,plain,
% 1.82/1.01      ( m1_subset_1(k11_mcart_1(sK2,sK3,sK4,sK5,sK7),sK5) = iProver_top ),
% 1.82/1.01      inference(superposition,[status(thm)],[c_305,c_310]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_9,plain,
% 1.82/1.01      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.82/1.01      | k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X1,X2,X3,X4,X0),k9_mcart_1(X1,X2,X3,X4,X0)),k10_mcart_1(X1,X2,X3,X4,X0)),k11_mcart_1(X1,X2,X3,X4,X0)) = X0
% 1.82/1.01      | k1_xboole_0 = X4
% 1.82/1.01      | k1_xboole_0 = X3
% 1.82/1.01      | k1_xboole_0 = X2
% 1.82/1.01      | k1_xboole_0 = X1 ),
% 1.82/1.01      inference(cnf_transformation,[],[f60]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_307,plain,
% 1.82/1.01      ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(X0,X1,X2,X3,X4),k9_mcart_1(X0,X1,X2,X3,X4)),k10_mcart_1(X0,X1,X2,X3,X4)),k11_mcart_1(X0,X1,X2,X3,X4)) = X4
% 1.82/1.01      | k1_xboole_0 = X1
% 1.82/1.01      | k1_xboole_0 = X3
% 1.82/1.01      | k1_xboole_0 = X2
% 1.82/1.01      | k1_xboole_0 = X0
% 1.82/1.01      | m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3)) != iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_706,plain,
% 1.82/1.01      ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),k9_mcart_1(sK2,sK3,sK4,sK5,sK7)),k10_mcart_1(sK2,sK3,sK4,sK5,sK7)),k11_mcart_1(sK2,sK3,sK4,sK5,sK7)) = sK7
% 1.82/1.01      | sK5 = k1_xboole_0
% 1.82/1.01      | sK4 = k1_xboole_0
% 1.82/1.01      | sK3 = k1_xboole_0
% 1.82/1.01      | sK2 = k1_xboole_0 ),
% 1.82/1.01      inference(superposition,[status(thm)],[c_305,c_307]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_16,negated_conjecture,
% 1.82/1.01      ( k1_xboole_0 != sK2 ),
% 1.82/1.01      inference(cnf_transformation,[],[f49]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_15,negated_conjecture,
% 1.82/1.01      ( k1_xboole_0 != sK3 ),
% 1.82/1.01      inference(cnf_transformation,[],[f50]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_14,negated_conjecture,
% 1.82/1.01      ( k1_xboole_0 != sK4 ),
% 1.82/1.01      inference(cnf_transformation,[],[f51]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_13,negated_conjecture,
% 1.82/1.01      ( k1_xboole_0 != sK5 ),
% 1.82/1.01      inference(cnf_transformation,[],[f52]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_166,plain,( X0 = X0 ),theory(equality) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_185,plain,
% 1.82/1.01      ( k1_xboole_0 = k1_xboole_0 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_166]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_167,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_406,plain,
% 1.82/1.01      ( sK5 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK5 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_167]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_407,plain,
% 1.82/1.01      ( sK5 != k1_xboole_0
% 1.82/1.01      | k1_xboole_0 = sK5
% 1.82/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_406]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_408,plain,
% 1.82/1.01      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_167]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_409,plain,
% 1.82/1.01      ( sK4 != k1_xboole_0
% 1.82/1.01      | k1_xboole_0 = sK4
% 1.82/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_408]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_410,plain,
% 1.82/1.01      ( sK3 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK3 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_167]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_411,plain,
% 1.82/1.01      ( sK3 != k1_xboole_0
% 1.82/1.01      | k1_xboole_0 = sK3
% 1.82/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_410]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_412,plain,
% 1.82/1.01      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_167]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_413,plain,
% 1.82/1.01      ( sK2 != k1_xboole_0
% 1.82/1.01      | k1_xboole_0 = sK2
% 1.82/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_412]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_1158,plain,
% 1.82/1.01      ( k4_tarski(k4_tarski(k4_tarski(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),k9_mcart_1(sK2,sK3,sK4,sK5,sK7)),k10_mcart_1(sK2,sK3,sK4,sK5,sK7)),k11_mcart_1(sK2,sK3,sK4,sK5,sK7)) = sK7 ),
% 1.82/1.01      inference(global_propositional_subsumption,
% 1.82/1.01                [status(thm)],
% 1.82/1.01                [c_706,c_16,c_15,c_14,c_13,c_185,c_407,c_409,c_411,c_413]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_10,plain,
% 1.82/1.01      ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
% 1.82/1.01      inference(cnf_transformation,[],[f46]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_1164,plain,
% 1.82/1.01      ( k11_mcart_1(sK2,sK3,sK4,sK5,sK7) = k2_mcart_1(sK7) ),
% 1.82/1.01      inference(superposition,[status(thm)],[c_1158,c_10]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_4573,plain,
% 1.82/1.01      ( m1_subset_1(k2_mcart_1(sK7),sK5) = iProver_top ),
% 1.82/1.01      inference(light_normalisation,[status(thm)],[c_4572,c_1164]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_17,negated_conjecture,
% 1.82/1.01      ( ~ m1_subset_1(X0,sK5)
% 1.82/1.01      | ~ m1_subset_1(X1,sK4)
% 1.82/1.01      | ~ m1_subset_1(X2,sK3)
% 1.82/1.01      | ~ m1_subset_1(X3,sK2)
% 1.82/1.01      | k4_tarski(k4_tarski(k4_tarski(X3,X2),X1),X0) != sK7
% 1.82/1.01      | sK6 = X2 ),
% 1.82/1.01      inference(cnf_transformation,[],[f61]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_306,plain,
% 1.82/1.01      ( k4_tarski(k4_tarski(k4_tarski(X0,X1),X2),X3) != sK7
% 1.82/1.01      | sK6 = X1
% 1.82/1.01      | m1_subset_1(X3,sK5) != iProver_top
% 1.82/1.01      | m1_subset_1(X2,sK4) != iProver_top
% 1.82/1.01      | m1_subset_1(X1,sK3) != iProver_top
% 1.82/1.01      | m1_subset_1(X0,sK2) != iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_1167,plain,
% 1.82/1.01      ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) = sK6
% 1.82/1.01      | m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) != iProver_top
% 1.82/1.01      | m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) != iProver_top
% 1.82/1.01      | m1_subset_1(k11_mcart_1(sK2,sK3,sK4,sK5,sK7),sK5) != iProver_top
% 1.82/1.01      | m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) != iProver_top ),
% 1.82/1.01      inference(superposition,[status(thm)],[c_1158,c_306]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_1361,plain,
% 1.82/1.01      ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) = sK6
% 1.82/1.01      | m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) != iProver_top
% 1.82/1.01      | m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) != iProver_top
% 1.82/1.01      | m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) != iProver_top
% 1.82/1.01      | m1_subset_1(k2_mcart_1(sK7),sK5) != iProver_top ),
% 1.82/1.01      inference(light_normalisation,[status(thm)],[c_1167,c_1164]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_6,plain,
% 1.82/1.01      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.82/1.01      | m1_subset_1(k9_mcart_1(X1,X2,X3,X4,X0),X2) ),
% 1.82/1.01      inference(cnf_transformation,[],[f59]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_434,plain,
% 1.82/1.01      ( m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3)
% 1.82/1.01      | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_6]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_435,plain,
% 1.82/1.01      ( m1_subset_1(k9_mcart_1(sK2,sK3,sK4,sK5,sK7),sK3) = iProver_top
% 1.82/1.01      | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_434]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_5,plain,
% 1.82/1.01      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.82/1.01      | m1_subset_1(k8_mcart_1(X1,X2,X3,X4,X0),X1) ),
% 1.82/1.01      inference(cnf_transformation,[],[f58]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_431,plain,
% 1.82/1.01      ( m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2)
% 1.82/1.01      | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_5]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_432,plain,
% 1.82/1.01      ( m1_subset_1(k8_mcart_1(sK2,sK3,sK4,sK5,sK7),sK2) = iProver_top
% 1.82/1.01      | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_431]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_3,plain,
% 1.82/1.01      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))
% 1.82/1.01      | m1_subset_1(k10_mcart_1(X1,X2,X3,X4,X0),X3) ),
% 1.82/1.01      inference(cnf_transformation,[],[f56]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_425,plain,
% 1.82/1.01      ( m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4)
% 1.82/1.01      | ~ m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) ),
% 1.82/1.01      inference(instantiation,[status(thm)],[c_3]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_426,plain,
% 1.82/1.01      ( m1_subset_1(k10_mcart_1(sK2,sK3,sK4,sK5,sK7),sK4) = iProver_top
% 1.82/1.01      | m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) != iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_425]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_12,negated_conjecture,
% 1.82/1.01      ( k9_mcart_1(sK2,sK3,sK4,sK5,sK7) != sK6 ),
% 1.82/1.01      inference(cnf_transformation,[],[f53]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(c_19,plain,
% 1.82/1.01      ( m1_subset_1(sK7,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4),sK5)) = iProver_top ),
% 1.82/1.01      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.82/1.01  
% 1.82/1.01  cnf(contradiction,plain,
% 1.82/1.01      ( $false ),
% 1.82/1.01      inference(minisat,
% 1.82/1.01                [status(thm)],
% 1.82/1.01                [c_4573,c_1361,c_435,c_432,c_426,c_12,c_19]) ).
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.82/1.01  
% 1.82/1.01  ------                               Statistics
% 1.82/1.01  
% 1.82/1.01  ------ General
% 1.82/1.01  
% 1.82/1.01  abstr_ref_over_cycles:                  0
% 1.82/1.01  abstr_ref_under_cycles:                 0
% 1.82/1.01  gc_basic_clause_elim:                   0
% 1.82/1.01  forced_gc_time:                         0
% 1.82/1.01  parsing_time:                           0.009
% 1.82/1.01  unif_index_cands_time:                  0.
% 1.82/1.01  unif_index_add_time:                    0.
% 1.82/1.01  orderings_time:                         0.
% 1.82/1.01  out_proof_time:                         0.009
% 1.82/1.01  total_time:                             0.204
% 1.82/1.01  num_of_symbols:                         49
% 1.82/1.01  num_of_terms:                           15939
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing
% 1.82/1.01  
% 1.82/1.01  num_of_splits:                          0
% 1.82/1.01  num_of_split_atoms:                     0
% 1.82/1.01  num_of_reused_defs:                     0
% 1.82/1.01  num_eq_ax_congr_red:                    51
% 1.82/1.01  num_of_sem_filtered_clauses:            1
% 1.82/1.01  num_of_subtypes:                        0
% 1.82/1.01  monotx_restored_types:                  0
% 1.82/1.01  sat_num_of_epr_types:                   0
% 1.82/1.01  sat_num_of_non_cyclic_types:            0
% 1.82/1.01  sat_guarded_non_collapsed_types:        0
% 1.82/1.01  num_pure_diseq_elim:                    0
% 1.82/1.01  simp_replaced_by:                       0
% 1.82/1.01  res_preprocessed:                       93
% 1.82/1.01  prep_upred:                             0
% 1.82/1.01  prep_unflattend:                        0
% 1.82/1.01  smt_new_axioms:                         0
% 1.82/1.01  pred_elim_cands:                        1
% 1.82/1.01  pred_elim:                              0
% 1.82/1.01  pred_elim_cl:                           0
% 1.82/1.01  pred_elim_cycles:                       2
% 1.82/1.01  merged_defs:                            0
% 1.82/1.01  merged_defs_ncl:                        0
% 1.82/1.01  bin_hyper_res:                          0
% 1.82/1.01  prep_cycles:                            4
% 1.82/1.01  pred_elim_time:                         0.
% 1.82/1.01  splitting_time:                         0.
% 1.82/1.01  sem_filter_time:                        0.
% 1.82/1.01  monotx_time:                            0.
% 1.82/1.01  subtype_inf_time:                       0.
% 1.82/1.01  
% 1.82/1.01  ------ Problem properties
% 1.82/1.01  
% 1.82/1.01  clauses:                                18
% 1.82/1.01  conjectures:                            7
% 1.82/1.01  epr:                                    4
% 1.82/1.01  horn:                                   16
% 1.82/1.01  ground:                                 6
% 1.82/1.01  unary:                                  10
% 1.82/1.01  binary:                                 6
% 1.82/1.01  lits:                                   34
% 1.82/1.01  lits_eq:                                20
% 1.82/1.01  fd_pure:                                0
% 1.82/1.01  fd_pseudo:                              0
% 1.82/1.01  fd_cond:                                1
% 1.82/1.01  fd_pseudo_cond:                         2
% 1.82/1.01  ac_symbols:                             0
% 1.82/1.01  
% 1.82/1.01  ------ Propositional Solver
% 1.82/1.01  
% 1.82/1.01  prop_solver_calls:                      27
% 1.82/1.01  prop_fast_solver_calls:                 532
% 1.82/1.01  smt_solver_calls:                       0
% 1.82/1.01  smt_fast_solver_calls:                  0
% 1.82/1.01  prop_num_of_clauses:                    1795
% 1.82/1.01  prop_preprocess_simplified:             6022
% 1.82/1.01  prop_fo_subsumed:                       14
% 1.82/1.01  prop_solver_time:                       0.
% 1.82/1.01  smt_solver_time:                        0.
% 1.82/1.01  smt_fast_solver_time:                   0.
% 1.82/1.01  prop_fast_solver_time:                  0.
% 1.82/1.01  prop_unsat_core_time:                   0.
% 1.82/1.01  
% 1.82/1.01  ------ QBF
% 1.82/1.01  
% 1.82/1.01  qbf_q_res:                              0
% 1.82/1.01  qbf_num_tautologies:                    0
% 1.82/1.01  qbf_prep_cycles:                        0
% 1.82/1.01  
% 1.82/1.01  ------ BMC1
% 1.82/1.01  
% 1.82/1.01  bmc1_current_bound:                     -1
% 1.82/1.01  bmc1_last_solved_bound:                 -1
% 1.82/1.01  bmc1_unsat_core_size:                   -1
% 1.82/1.01  bmc1_unsat_core_parents_size:           -1
% 1.82/1.01  bmc1_merge_next_fun:                    0
% 1.82/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.82/1.01  
% 1.82/1.01  ------ Instantiation
% 1.82/1.01  
% 1.82/1.01  inst_num_of_clauses:                    559
% 1.82/1.01  inst_num_in_passive:                    309
% 1.82/1.01  inst_num_in_active:                     239
% 1.82/1.01  inst_num_in_unprocessed:                11
% 1.82/1.01  inst_num_of_loops:                      240
% 1.82/1.01  inst_num_of_learning_restarts:          0
% 1.82/1.01  inst_num_moves_active_passive:          0
% 1.82/1.01  inst_lit_activity:                      0
% 1.82/1.01  inst_lit_activity_moves:                0
% 1.82/1.01  inst_num_tautologies:                   0
% 1.82/1.01  inst_num_prop_implied:                  0
% 1.82/1.01  inst_num_existing_simplified:           0
% 1.82/1.01  inst_num_eq_res_simplified:             0
% 1.82/1.01  inst_num_child_elim:                    0
% 1.82/1.01  inst_num_of_dismatching_blockings:      12
% 1.82/1.01  inst_num_of_non_proper_insts:           477
% 1.82/1.01  inst_num_of_duplicates:                 0
% 1.82/1.01  inst_inst_num_from_inst_to_res:         0
% 1.82/1.01  inst_dismatching_checking_time:         0.
% 1.82/1.01  
% 1.82/1.01  ------ Resolution
% 1.82/1.01  
% 1.82/1.01  res_num_of_clauses:                     0
% 1.82/1.01  res_num_in_passive:                     0
% 1.82/1.01  res_num_in_active:                      0
% 1.82/1.01  res_num_of_loops:                       97
% 1.82/1.01  res_forward_subset_subsumed:            21
% 1.82/1.01  res_backward_subset_subsumed:           0
% 1.82/1.01  res_forward_subsumed:                   0
% 1.82/1.01  res_backward_subsumed:                  0
% 1.82/1.01  res_forward_subsumption_resolution:     0
% 1.82/1.01  res_backward_subsumption_resolution:    0
% 1.82/1.01  res_clause_to_clause_subsumption:       410
% 1.82/1.01  res_orphan_elimination:                 0
% 1.82/1.01  res_tautology_del:                      3
% 1.82/1.01  res_num_eq_res_simplified:              0
% 1.82/1.01  res_num_sel_changes:                    0
% 1.82/1.01  res_moves_from_active_to_pass:          0
% 1.82/1.01  
% 1.82/1.01  ------ Superposition
% 1.82/1.01  
% 1.82/1.01  sup_time_total:                         0.
% 1.82/1.01  sup_time_generating:                    0.
% 1.82/1.01  sup_time_sim_full:                      0.
% 1.82/1.01  sup_time_sim_immed:                     0.
% 1.82/1.01  
% 1.82/1.01  sup_num_of_clauses:                     65
% 1.82/1.01  sup_num_in_active:                      38
% 1.82/1.01  sup_num_in_passive:                     27
% 1.82/1.01  sup_num_of_loops:                       46
% 1.82/1.01  sup_fw_superposition:                   14
% 1.82/1.01  sup_bw_superposition:                   63
% 1.82/1.01  sup_immediate_simplified:               26
% 1.82/1.01  sup_given_eliminated:                   6
% 1.82/1.01  comparisons_done:                       0
% 1.82/1.01  comparisons_avoided:                    6
% 1.82/1.01  
% 1.82/1.01  ------ Simplifications
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  sim_fw_subset_subsumed:                 3
% 1.82/1.01  sim_bw_subset_subsumed:                 0
% 1.82/1.01  sim_fw_subsumed:                        10
% 1.82/1.01  sim_bw_subsumed:                        0
% 1.82/1.01  sim_fw_subsumption_res:                 1
% 1.82/1.01  sim_bw_subsumption_res:                 0
% 1.82/1.01  sim_tautology_del:                      1
% 1.82/1.01  sim_eq_tautology_del:                   0
% 1.82/1.01  sim_eq_res_simp:                        0
% 1.82/1.01  sim_fw_demodulated:                     9
% 1.82/1.01  sim_bw_demodulated:                     21
% 1.82/1.01  sim_light_normalised:                   25
% 1.82/1.01  sim_joinable_taut:                      0
% 1.82/1.01  sim_joinable_simp:                      0
% 1.82/1.01  sim_ac_normalised:                      0
% 1.82/1.01  sim_smt_subsumption:                    0
% 1.82/1.01  
%------------------------------------------------------------------------------
