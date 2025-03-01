%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:58:56 EST 2020

% Result     : Theorem 3.41s
% Output     : CNFRefutation 3.41s
% Verified   : 
% Statistics : Number of formulae       :  155 (2477 expanded)
%              Number of clauses        :   94 ( 704 expanded)
%              Number of leaves         :   15 ( 555 expanded)
%              Depth                    :   24
%              Number of atoms          :  501 (14382 expanded)
%              Number of equality atoms :  341 (8816 expanded)
%              Maximal formula depth    :   20 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
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

fof(f12,negated_conjecture,(
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
    inference(negated_conjecture,[],[f11])).

fof(f19,plain,(
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
    inference(ennf_transformation,[],[f12])).

fof(f20,plain,(
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
    inference(flattening,[],[f19])).

fof(f30,plain,
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

fof(f31,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f20,f30])).

fof(f51,plain,(
    m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)) ),
    inference(cnf_transformation,[],[f31])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f63,plain,(
    m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
    inference(definition_unfolding,[],[f51,f43])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f38,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k2_zfmisc_1(X1,X2))
     => ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) )
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k1_mcart_1(X0),X1)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k2_mcart_1(X0),X2)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f25])).

fof(f34,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f22,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f21])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).

fof(f32,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f40,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ~ ( ~ ! [X3] :
              ( m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
             => k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3 )
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3
          | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) )
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f9])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X2,X0,X1] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f58,plain,(
    ! [X2,X0,X3,X1] :
      ( k4_tarski(k4_tarski(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3)),k7_mcart_1(X0,X1,X2,X3)) = X3
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f47,f42,f43])).

fof(f10,axiom,(
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

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
            & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
            & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3) )
          | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) )
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f10])).

fof(f48,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f61,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f48,f43])).

fof(f53,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f31])).

fof(f54,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f31])).

fof(f55,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f31])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f27])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f65,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f36])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f49,f43])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f50,f43])).

fof(f52,plain,(
    ! [X6,X7,X5] :
      ( sK5 = X6
      | k3_mcart_1(X5,X6,X7) != sK6
      | ~ m1_subset_1(X7,sK4)
      | ~ m1_subset_1(X6,sK3)
      | ~ m1_subset_1(X5,sK2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f62,plain,(
    ! [X6,X7,X5] :
      ( sK5 = X6
      | k4_tarski(k4_tarski(X5,X6),X7) != sK6
      | ~ m1_subset_1(X7,sK4)
      | ~ m1_subset_1(X6,sK3)
      | ~ m1_subset_1(X5,sK2) ) ),
    inference(definition_unfolding,[],[f52,f42])).

fof(f56,plain,(
    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
    inference(cnf_transformation,[],[f31])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))
     => m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f44,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f57,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2)
      | ~ m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) ) ),
    inference(definition_unfolding,[],[f44,f43])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_488,plain,
    ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_497,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2039,plain,
    ( r2_hidden(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_488,c_497])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k1_mcart_1(X0),X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_494,plain,
    ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r2_hidden(k1_mcart_1(X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2440,plain,
    ( r2_hidden(k1_mcart_1(sK6),k2_zfmisc_1(sK2,sK3)) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2039,c_494])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k2_mcart_1(X0),X2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_495,plain,
    ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r2_hidden(k2_mcart_1(X0),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2714,plain,
    ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2440,c_495])).

cnf(c_2,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_500,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_501,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1062,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_500,c_501])).

cnf(c_4895,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2714,c_1062])).

cnf(c_2715,plain,
    ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2440,c_494])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_498,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2080,plain,
    ( v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) != iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_488,c_498])).

cnf(c_5625,plain,
    ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_2715,c_2080])).

cnf(c_8,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_112,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8,c_1])).

cnf(c_113,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_112])).

cnf(c_487,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_113])).

cnf(c_5701,plain,
    ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_5625,c_487])).

cnf(c_4896,plain,
    ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_2714,c_2080])).

cnf(c_5471,plain,
    ( m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_4896,c_487])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k4_tarski(k4_tarski(k5_mcart_1(X1,X2,X3,X0),k6_mcart_1(X1,X2,X3,X0)),k7_mcart_1(X1,X2,X3,X0)) = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_493,plain,
    ( k4_tarski(k4_tarski(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3)),k7_mcart_1(X0,X1,X2,X3)) = X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3799,plain,
    ( k4_tarski(k4_tarski(k5_mcart_1(sK2,sK3,sK4,sK6),k6_mcart_1(sK2,sK3,sK4,sK6)),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_488,c_493])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k5_mcart_1(X1,X2,X3,X0) = k1_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_490,plain,
    ( k5_mcart_1(X0,X1,X2,X3) = k1_mcart_1(k1_mcart_1(X3))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1706,plain,
    ( k5_mcart_1(sK2,sK3,sK4,sK6) = k1_mcart_1(k1_mcart_1(sK6))
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_488,c_490])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_18,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_5,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_58,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_4,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_59,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_206,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_679,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_206])).

cnf(c_680,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_679])).

cnf(c_681,plain,
    ( sK3 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_206])).

cnf(c_682,plain,
    ( sK3 != k1_xboole_0
    | k1_xboole_0 = sK3
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_681])).

cnf(c_683,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_206])).

cnf(c_684,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_683])).

cnf(c_2451,plain,
    ( k5_mcart_1(sK2,sK3,sK4,sK6) = k1_mcart_1(k1_mcart_1(sK6)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1706,c_20,c_19,c_18,c_58,c_59,c_680,c_682,c_684])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k6_mcart_1(X1,X2,X3,X0) = k2_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_491,plain,
    ( k6_mcart_1(X0,X1,X2,X3) = k2_mcart_1(k1_mcart_1(X3))
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2821,plain,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_488,c_491])).

cnf(c_725,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
    | k6_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_876,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),sK4))
    | k6_mcart_1(sK2,X1,sK4,X0) = k2_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = X1
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_725])).

cnf(c_1398,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k6_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(k1_mcart_1(X0))
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_876])).

cnf(c_2792,plain,
    ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1398])).

cnf(c_3187,plain,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2821,c_22,c_20,c_19,c_18,c_2792])).

cnf(c_3840,plain,
    ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3799,c_2451,c_3187])).

cnf(c_4740,plain,
    ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3840,c_20,c_19,c_18,c_58,c_59,c_680,c_682,c_684])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | k7_mcart_1(X1,X2,X3,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_492,plain,
    ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2
    | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3493,plain,
    ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
    | sK4 = k1_xboole_0
    | sK3 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_488,c_492])).

cnf(c_716,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
    | k7_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_841,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),sK4))
    | k7_mcart_1(sK2,X1,sK4,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = X1
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_716])).

cnf(c_1183,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k7_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(X0)
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_841])).

cnf(c_2466,plain,
    ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
    | k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
    | k1_xboole_0 = sK4
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1183])).

cnf(c_4044,plain,
    ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3493,c_22,c_20,c_19,c_18,c_2466])).

cnf(c_4742,plain,
    ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k2_mcart_1(sK6)) = sK6 ),
    inference(light_normalisation,[status(thm)],[c_4740,c_4044])).

cnf(c_21,negated_conjecture,
    ( ~ m1_subset_1(X0,sK4)
    | ~ m1_subset_1(X1,sK3)
    | ~ m1_subset_1(X2,sK2)
    | k4_tarski(k4_tarski(X2,X1),X0) != sK6
    | sK5 = X1 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_489,plain,
    ( k4_tarski(k4_tarski(X0,X1),X2) != sK6
    | sK5 = X1
    | m1_subset_1(X2,sK4) != iProver_top
    | m1_subset_1(X1,sK3) != iProver_top
    | m1_subset_1(X0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4745,plain,
    ( k2_mcart_1(k1_mcart_1(sK6)) = sK5
    | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
    | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top
    | m1_subset_1(k2_mcart_1(sK6),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_4742,c_489])).

cnf(c_17,negated_conjecture,
    ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_3190,plain,
    ( k2_mcart_1(k1_mcart_1(sK6)) != sK5 ),
    inference(demodulation,[status(thm)],[c_3187,c_17])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
    | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_496,plain,
    ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) != iProver_top
    | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2943,plain,
    ( m1_subset_1(k7_mcart_1(sK2,sK3,sK4,sK6),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_488,c_496])).

cnf(c_4048,plain,
    ( m1_subset_1(k2_mcart_1(sK6),sK4) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4044,c_2943])).

cnf(c_4769,plain,
    ( m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top
    | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4745,c_3190,c_4048])).

cnf(c_4770,plain,
    ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
    | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_4769])).

cnf(c_5589,plain,
    ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
    | v1_xboole_0(sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_5471,c_4770])).

cnf(c_5708,plain,
    ( v1_xboole_0(sK6) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5701,c_5589])).

cnf(c_5714,plain,
    ( sK6 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5708,c_1062])).

cnf(c_9586,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4895,c_5714])).

cnf(c_9591,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_9586,c_487])).

cnf(c_6190,plain,
    ( m1_subset_1(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) != iProver_top
    | m1_subset_1(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5714,c_4770])).

cnf(c_5624,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_2715,c_1062])).

cnf(c_10042,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | r2_hidden(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5624,c_5714])).

cnf(c_10047,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
    | m1_subset_1(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_10042,c_487])).

cnf(c_10178,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_9591,c_6190,c_10047])).

cnf(c_10202,plain,
    ( k2_zfmisc_1(sK2,sK3) = k1_xboole_0
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_10178,c_5])).

cnf(c_666,plain,
    ( k2_zfmisc_1(sK2,X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_790,plain,
    ( k2_zfmisc_1(sK2,sK3) != k1_xboole_0
    | k1_xboole_0 = sK3
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_666])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10202,c_790,c_680,c_59,c_58,c_18,c_19,c_20])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:42:20 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.41/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.41/0.99  
% 3.41/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.41/0.99  
% 3.41/0.99  ------  iProver source info
% 3.41/0.99  
% 3.41/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.41/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.41/0.99  git: non_committed_changes: false
% 3.41/0.99  git: last_make_outside_of_git: false
% 3.41/0.99  
% 3.41/0.99  ------ 
% 3.41/0.99  
% 3.41/0.99  ------ Input Options
% 3.41/0.99  
% 3.41/0.99  --out_options                           all
% 3.41/0.99  --tptp_safe_out                         true
% 3.41/0.99  --problem_path                          ""
% 3.41/0.99  --include_path                          ""
% 3.41/0.99  --clausifier                            res/vclausify_rel
% 3.41/0.99  --clausifier_options                    --mode clausify
% 3.41/0.99  --stdin                                 false
% 3.41/0.99  --stats_out                             all
% 3.41/0.99  
% 3.41/0.99  ------ General Options
% 3.41/0.99  
% 3.41/0.99  --fof                                   false
% 3.41/0.99  --time_out_real                         305.
% 3.41/0.99  --time_out_virtual                      -1.
% 3.41/0.99  --symbol_type_check                     false
% 3.41/0.99  --clausify_out                          false
% 3.41/0.99  --sig_cnt_out                           false
% 3.41/0.99  --trig_cnt_out                          false
% 3.41/0.99  --trig_cnt_out_tolerance                1.
% 3.41/0.99  --trig_cnt_out_sk_spl                   false
% 3.41/0.99  --abstr_cl_out                          false
% 3.41/0.99  
% 3.41/0.99  ------ Global Options
% 3.41/0.99  
% 3.41/0.99  --schedule                              default
% 3.41/0.99  --add_important_lit                     false
% 3.41/0.99  --prop_solver_per_cl                    1000
% 3.41/0.99  --min_unsat_core                        false
% 3.41/0.99  --soft_assumptions                      false
% 3.41/0.99  --soft_lemma_size                       3
% 3.41/0.99  --prop_impl_unit_size                   0
% 3.41/0.99  --prop_impl_unit                        []
% 3.41/0.99  --share_sel_clauses                     true
% 3.41/0.99  --reset_solvers                         false
% 3.41/0.99  --bc_imp_inh                            [conj_cone]
% 3.41/0.99  --conj_cone_tolerance                   3.
% 3.41/0.99  --extra_neg_conj                        none
% 3.41/0.99  --large_theory_mode                     true
% 3.41/0.99  --prolific_symb_bound                   200
% 3.41/0.99  --lt_threshold                          2000
% 3.41/0.99  --clause_weak_htbl                      true
% 3.41/0.99  --gc_record_bc_elim                     false
% 3.41/0.99  
% 3.41/0.99  ------ Preprocessing Options
% 3.41/0.99  
% 3.41/0.99  --preprocessing_flag                    true
% 3.41/0.99  --time_out_prep_mult                    0.1
% 3.41/0.99  --splitting_mode                        input
% 3.41/0.99  --splitting_grd                         true
% 3.41/0.99  --splitting_cvd                         false
% 3.41/0.99  --splitting_cvd_svl                     false
% 3.41/0.99  --splitting_nvd                         32
% 3.41/0.99  --sub_typing                            true
% 3.41/0.99  --prep_gs_sim                           true
% 3.41/0.99  --prep_unflatten                        true
% 3.41/0.99  --prep_res_sim                          true
% 3.41/0.99  --prep_upred                            true
% 3.41/0.99  --prep_sem_filter                       exhaustive
% 3.41/0.99  --prep_sem_filter_out                   false
% 3.41/0.99  --pred_elim                             true
% 3.41/0.99  --res_sim_input                         true
% 3.41/0.99  --eq_ax_congr_red                       true
% 3.41/0.99  --pure_diseq_elim                       true
% 3.41/0.99  --brand_transform                       false
% 3.41/0.99  --non_eq_to_eq                          false
% 3.41/0.99  --prep_def_merge                        true
% 3.41/0.99  --prep_def_merge_prop_impl              false
% 3.41/0.99  --prep_def_merge_mbd                    true
% 3.41/0.99  --prep_def_merge_tr_red                 false
% 3.41/0.99  --prep_def_merge_tr_cl                  false
% 3.41/0.99  --smt_preprocessing                     true
% 3.41/0.99  --smt_ac_axioms                         fast
% 3.41/0.99  --preprocessed_out                      false
% 3.41/0.99  --preprocessed_stats                    false
% 3.41/0.99  
% 3.41/0.99  ------ Abstraction refinement Options
% 3.41/0.99  
% 3.41/0.99  --abstr_ref                             []
% 3.41/0.99  --abstr_ref_prep                        false
% 3.41/0.99  --abstr_ref_until_sat                   false
% 3.41/0.99  --abstr_ref_sig_restrict                funpre
% 3.41/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.41/0.99  --abstr_ref_under                       []
% 3.41/0.99  
% 3.41/0.99  ------ SAT Options
% 3.41/0.99  
% 3.41/0.99  --sat_mode                              false
% 3.41/0.99  --sat_fm_restart_options                ""
% 3.41/0.99  --sat_gr_def                            false
% 3.41/0.99  --sat_epr_types                         true
% 3.41/0.99  --sat_non_cyclic_types                  false
% 3.41/0.99  --sat_finite_models                     false
% 3.41/0.99  --sat_fm_lemmas                         false
% 3.41/0.99  --sat_fm_prep                           false
% 3.41/0.99  --sat_fm_uc_incr                        true
% 3.41/0.99  --sat_out_model                         small
% 3.41/0.99  --sat_out_clauses                       false
% 3.41/0.99  
% 3.41/0.99  ------ QBF Options
% 3.41/0.99  
% 3.41/0.99  --qbf_mode                              false
% 3.41/0.99  --qbf_elim_univ                         false
% 3.41/0.99  --qbf_dom_inst                          none
% 3.41/0.99  --qbf_dom_pre_inst                      false
% 3.41/0.99  --qbf_sk_in                             false
% 3.41/0.99  --qbf_pred_elim                         true
% 3.41/0.99  --qbf_split                             512
% 3.41/0.99  
% 3.41/0.99  ------ BMC1 Options
% 3.41/0.99  
% 3.41/0.99  --bmc1_incremental                      false
% 3.41/0.99  --bmc1_axioms                           reachable_all
% 3.41/0.99  --bmc1_min_bound                        0
% 3.41/0.99  --bmc1_max_bound                        -1
% 3.41/0.99  --bmc1_max_bound_default                -1
% 3.41/0.99  --bmc1_symbol_reachability              true
% 3.41/0.99  --bmc1_property_lemmas                  false
% 3.41/0.99  --bmc1_k_induction                      false
% 3.41/0.99  --bmc1_non_equiv_states                 false
% 3.41/0.99  --bmc1_deadlock                         false
% 3.41/0.99  --bmc1_ucm                              false
% 3.41/0.99  --bmc1_add_unsat_core                   none
% 3.41/0.99  --bmc1_unsat_core_children              false
% 3.41/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.41/0.99  --bmc1_out_stat                         full
% 3.41/0.99  --bmc1_ground_init                      false
% 3.41/0.99  --bmc1_pre_inst_next_state              false
% 3.41/0.99  --bmc1_pre_inst_state                   false
% 3.41/0.99  --bmc1_pre_inst_reach_state             false
% 3.41/0.99  --bmc1_out_unsat_core                   false
% 3.41/0.99  --bmc1_aig_witness_out                  false
% 3.41/0.99  --bmc1_verbose                          false
% 3.41/0.99  --bmc1_dump_clauses_tptp                false
% 3.41/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.41/0.99  --bmc1_dump_file                        -
% 3.41/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.41/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.41/0.99  --bmc1_ucm_extend_mode                  1
% 3.41/0.99  --bmc1_ucm_init_mode                    2
% 3.41/0.99  --bmc1_ucm_cone_mode                    none
% 3.41/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.41/0.99  --bmc1_ucm_relax_model                  4
% 3.41/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.41/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.41/0.99  --bmc1_ucm_layered_model                none
% 3.41/0.99  --bmc1_ucm_max_lemma_size               10
% 3.41/0.99  
% 3.41/0.99  ------ AIG Options
% 3.41/0.99  
% 3.41/0.99  --aig_mode                              false
% 3.41/0.99  
% 3.41/0.99  ------ Instantiation Options
% 3.41/0.99  
% 3.41/0.99  --instantiation_flag                    true
% 3.41/0.99  --inst_sos_flag                         false
% 3.41/0.99  --inst_sos_phase                        true
% 3.41/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.41/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.41/0.99  --inst_lit_sel_side                     num_symb
% 3.41/0.99  --inst_solver_per_active                1400
% 3.41/0.99  --inst_solver_calls_frac                1.
% 3.41/0.99  --inst_passive_queue_type               priority_queues
% 3.41/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.41/0.99  --inst_passive_queues_freq              [25;2]
% 3.41/0.99  --inst_dismatching                      true
% 3.41/0.99  --inst_eager_unprocessed_to_passive     true
% 3.41/0.99  --inst_prop_sim_given                   true
% 3.41/0.99  --inst_prop_sim_new                     false
% 3.41/0.99  --inst_subs_new                         false
% 3.41/0.99  --inst_eq_res_simp                      false
% 3.41/0.99  --inst_subs_given                       false
% 3.41/0.99  --inst_orphan_elimination               true
% 3.41/0.99  --inst_learning_loop_flag               true
% 3.41/0.99  --inst_learning_start                   3000
% 3.41/0.99  --inst_learning_factor                  2
% 3.41/0.99  --inst_start_prop_sim_after_learn       3
% 3.41/0.99  --inst_sel_renew                        solver
% 3.41/0.99  --inst_lit_activity_flag                true
% 3.41/0.99  --inst_restr_to_given                   false
% 3.41/0.99  --inst_activity_threshold               500
% 3.41/0.99  --inst_out_proof                        true
% 3.41/0.99  
% 3.41/0.99  ------ Resolution Options
% 3.41/0.99  
% 3.41/0.99  --resolution_flag                       true
% 3.41/0.99  --res_lit_sel                           adaptive
% 3.41/0.99  --res_lit_sel_side                      none
% 3.41/0.99  --res_ordering                          kbo
% 3.41/0.99  --res_to_prop_solver                    active
% 3.41/0.99  --res_prop_simpl_new                    false
% 3.41/0.99  --res_prop_simpl_given                  true
% 3.41/0.99  --res_passive_queue_type                priority_queues
% 3.41/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.41/0.99  --res_passive_queues_freq               [15;5]
% 3.41/0.99  --res_forward_subs                      full
% 3.41/0.99  --res_backward_subs                     full
% 3.41/0.99  --res_forward_subs_resolution           true
% 3.41/0.99  --res_backward_subs_resolution          true
% 3.41/0.99  --res_orphan_elimination                true
% 3.41/0.99  --res_time_limit                        2.
% 3.41/0.99  --res_out_proof                         true
% 3.41/0.99  
% 3.41/0.99  ------ Superposition Options
% 3.41/0.99  
% 3.41/0.99  --superposition_flag                    true
% 3.41/0.99  --sup_passive_queue_type                priority_queues
% 3.41/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.41/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.41/0.99  --demod_completeness_check              fast
% 3.41/0.99  --demod_use_ground                      true
% 3.41/0.99  --sup_to_prop_solver                    passive
% 3.41/0.99  --sup_prop_simpl_new                    true
% 3.41/0.99  --sup_prop_simpl_given                  true
% 3.41/0.99  --sup_fun_splitting                     false
% 3.41/0.99  --sup_smt_interval                      50000
% 3.41/0.99  
% 3.41/0.99  ------ Superposition Simplification Setup
% 3.41/0.99  
% 3.41/0.99  --sup_indices_passive                   []
% 3.41/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.41/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/0.99  --sup_full_bw                           [BwDemod]
% 3.41/0.99  --sup_immed_triv                        [TrivRules]
% 3.41/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.41/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/0.99  --sup_immed_bw_main                     []
% 3.41/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.41/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/0.99  
% 3.41/0.99  ------ Combination Options
% 3.41/0.99  
% 3.41/0.99  --comb_res_mult                         3
% 3.41/0.99  --comb_sup_mult                         2
% 3.41/0.99  --comb_inst_mult                        10
% 3.41/0.99  
% 3.41/0.99  ------ Debug Options
% 3.41/0.99  
% 3.41/0.99  --dbg_backtrace                         false
% 3.41/0.99  --dbg_dump_prop_clauses                 false
% 3.41/0.99  --dbg_dump_prop_clauses_file            -
% 3.41/0.99  --dbg_out_stat                          false
% 3.41/0.99  ------ Parsing...
% 3.41/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.41/0.99  
% 3.41/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.41/0.99  
% 3.41/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.41/0.99  
% 3.41/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.41/0.99  ------ Proving...
% 3.41/0.99  ------ Problem Properties 
% 3.41/0.99  
% 3.41/0.99  
% 3.41/0.99  clauses                                 23
% 3.41/0.99  conjectures                             6
% 3.41/0.99  EPR                                     8
% 3.41/0.99  Horn                                    15
% 3.41/0.99  unary                                   7
% 3.41/0.99  binary                                  7
% 3.41/0.99  lits                                    58
% 3.41/0.99  lits eq                                 28
% 3.41/0.99  fd_pure                                 0
% 3.41/0.99  fd_pseudo                               0
% 3.41/0.99  fd_cond                                 6
% 3.41/0.99  fd_pseudo_cond                          0
% 3.41/0.99  AC symbols                              0
% 3.41/0.99  
% 3.41/0.99  ------ Schedule dynamic 5 is on 
% 3.41/0.99  
% 3.41/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.41/0.99  
% 3.41/0.99  
% 3.41/0.99  ------ 
% 3.41/0.99  Current options:
% 3.41/0.99  ------ 
% 3.41/0.99  
% 3.41/0.99  ------ Input Options
% 3.41/0.99  
% 3.41/0.99  --out_options                           all
% 3.41/0.99  --tptp_safe_out                         true
% 3.41/0.99  --problem_path                          ""
% 3.41/0.99  --include_path                          ""
% 3.41/0.99  --clausifier                            res/vclausify_rel
% 3.41/0.99  --clausifier_options                    --mode clausify
% 3.41/0.99  --stdin                                 false
% 3.41/0.99  --stats_out                             all
% 3.41/0.99  
% 3.41/0.99  ------ General Options
% 3.41/0.99  
% 3.41/0.99  --fof                                   false
% 3.41/0.99  --time_out_real                         305.
% 3.41/0.99  --time_out_virtual                      -1.
% 3.41/0.99  --symbol_type_check                     false
% 3.41/0.99  --clausify_out                          false
% 3.41/0.99  --sig_cnt_out                           false
% 3.41/0.99  --trig_cnt_out                          false
% 3.41/0.99  --trig_cnt_out_tolerance                1.
% 3.41/0.99  --trig_cnt_out_sk_spl                   false
% 3.41/0.99  --abstr_cl_out                          false
% 3.41/0.99  
% 3.41/0.99  ------ Global Options
% 3.41/0.99  
% 3.41/0.99  --schedule                              default
% 3.41/0.99  --add_important_lit                     false
% 3.41/0.99  --prop_solver_per_cl                    1000
% 3.41/0.99  --min_unsat_core                        false
% 3.41/0.99  --soft_assumptions                      false
% 3.41/0.99  --soft_lemma_size                       3
% 3.41/0.99  --prop_impl_unit_size                   0
% 3.41/0.99  --prop_impl_unit                        []
% 3.41/0.99  --share_sel_clauses                     true
% 3.41/0.99  --reset_solvers                         false
% 3.41/0.99  --bc_imp_inh                            [conj_cone]
% 3.41/0.99  --conj_cone_tolerance                   3.
% 3.41/0.99  --extra_neg_conj                        none
% 3.41/0.99  --large_theory_mode                     true
% 3.41/0.99  --prolific_symb_bound                   200
% 3.41/0.99  --lt_threshold                          2000
% 3.41/0.99  --clause_weak_htbl                      true
% 3.41/0.99  --gc_record_bc_elim                     false
% 3.41/0.99  
% 3.41/0.99  ------ Preprocessing Options
% 3.41/0.99  
% 3.41/0.99  --preprocessing_flag                    true
% 3.41/0.99  --time_out_prep_mult                    0.1
% 3.41/0.99  --splitting_mode                        input
% 3.41/0.99  --splitting_grd                         true
% 3.41/0.99  --splitting_cvd                         false
% 3.41/0.99  --splitting_cvd_svl                     false
% 3.41/0.99  --splitting_nvd                         32
% 3.41/0.99  --sub_typing                            true
% 3.41/0.99  --prep_gs_sim                           true
% 3.41/0.99  --prep_unflatten                        true
% 3.41/0.99  --prep_res_sim                          true
% 3.41/0.99  --prep_upred                            true
% 3.41/0.99  --prep_sem_filter                       exhaustive
% 3.41/0.99  --prep_sem_filter_out                   false
% 3.41/0.99  --pred_elim                             true
% 3.41/0.99  --res_sim_input                         true
% 3.41/0.99  --eq_ax_congr_red                       true
% 3.41/1.00  --pure_diseq_elim                       true
% 3.41/1.00  --brand_transform                       false
% 3.41/1.00  --non_eq_to_eq                          false
% 3.41/1.00  --prep_def_merge                        true
% 3.41/1.00  --prep_def_merge_prop_impl              false
% 3.41/1.00  --prep_def_merge_mbd                    true
% 3.41/1.00  --prep_def_merge_tr_red                 false
% 3.41/1.00  --prep_def_merge_tr_cl                  false
% 3.41/1.00  --smt_preprocessing                     true
% 3.41/1.00  --smt_ac_axioms                         fast
% 3.41/1.00  --preprocessed_out                      false
% 3.41/1.00  --preprocessed_stats                    false
% 3.41/1.00  
% 3.41/1.00  ------ Abstraction refinement Options
% 3.41/1.00  
% 3.41/1.00  --abstr_ref                             []
% 3.41/1.00  --abstr_ref_prep                        false
% 3.41/1.00  --abstr_ref_until_sat                   false
% 3.41/1.00  --abstr_ref_sig_restrict                funpre
% 3.41/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.41/1.00  --abstr_ref_under                       []
% 3.41/1.00  
% 3.41/1.00  ------ SAT Options
% 3.41/1.00  
% 3.41/1.00  --sat_mode                              false
% 3.41/1.00  --sat_fm_restart_options                ""
% 3.41/1.00  --sat_gr_def                            false
% 3.41/1.00  --sat_epr_types                         true
% 3.41/1.00  --sat_non_cyclic_types                  false
% 3.41/1.00  --sat_finite_models                     false
% 3.41/1.00  --sat_fm_lemmas                         false
% 3.41/1.00  --sat_fm_prep                           false
% 3.41/1.00  --sat_fm_uc_incr                        true
% 3.41/1.00  --sat_out_model                         small
% 3.41/1.00  --sat_out_clauses                       false
% 3.41/1.00  
% 3.41/1.00  ------ QBF Options
% 3.41/1.00  
% 3.41/1.00  --qbf_mode                              false
% 3.41/1.00  --qbf_elim_univ                         false
% 3.41/1.00  --qbf_dom_inst                          none
% 3.41/1.00  --qbf_dom_pre_inst                      false
% 3.41/1.00  --qbf_sk_in                             false
% 3.41/1.00  --qbf_pred_elim                         true
% 3.41/1.00  --qbf_split                             512
% 3.41/1.00  
% 3.41/1.00  ------ BMC1 Options
% 3.41/1.00  
% 3.41/1.00  --bmc1_incremental                      false
% 3.41/1.00  --bmc1_axioms                           reachable_all
% 3.41/1.00  --bmc1_min_bound                        0
% 3.41/1.00  --bmc1_max_bound                        -1
% 3.41/1.00  --bmc1_max_bound_default                -1
% 3.41/1.00  --bmc1_symbol_reachability              true
% 3.41/1.00  --bmc1_property_lemmas                  false
% 3.41/1.00  --bmc1_k_induction                      false
% 3.41/1.00  --bmc1_non_equiv_states                 false
% 3.41/1.00  --bmc1_deadlock                         false
% 3.41/1.00  --bmc1_ucm                              false
% 3.41/1.00  --bmc1_add_unsat_core                   none
% 3.41/1.00  --bmc1_unsat_core_children              false
% 3.41/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.41/1.00  --bmc1_out_stat                         full
% 3.41/1.00  --bmc1_ground_init                      false
% 3.41/1.00  --bmc1_pre_inst_next_state              false
% 3.41/1.00  --bmc1_pre_inst_state                   false
% 3.41/1.00  --bmc1_pre_inst_reach_state             false
% 3.41/1.00  --bmc1_out_unsat_core                   false
% 3.41/1.00  --bmc1_aig_witness_out                  false
% 3.41/1.00  --bmc1_verbose                          false
% 3.41/1.00  --bmc1_dump_clauses_tptp                false
% 3.41/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.41/1.00  --bmc1_dump_file                        -
% 3.41/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.41/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.41/1.00  --bmc1_ucm_extend_mode                  1
% 3.41/1.00  --bmc1_ucm_init_mode                    2
% 3.41/1.00  --bmc1_ucm_cone_mode                    none
% 3.41/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.41/1.00  --bmc1_ucm_relax_model                  4
% 3.41/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.41/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.41/1.00  --bmc1_ucm_layered_model                none
% 3.41/1.00  --bmc1_ucm_max_lemma_size               10
% 3.41/1.00  
% 3.41/1.00  ------ AIG Options
% 3.41/1.00  
% 3.41/1.00  --aig_mode                              false
% 3.41/1.00  
% 3.41/1.00  ------ Instantiation Options
% 3.41/1.00  
% 3.41/1.00  --instantiation_flag                    true
% 3.41/1.00  --inst_sos_flag                         false
% 3.41/1.00  --inst_sos_phase                        true
% 3.41/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel_side                     none
% 3.41/1.00  --inst_solver_per_active                1400
% 3.41/1.00  --inst_solver_calls_frac                1.
% 3.41/1.00  --inst_passive_queue_type               priority_queues
% 3.41/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.41/1.00  --inst_passive_queues_freq              [25;2]
% 3.41/1.00  --inst_dismatching                      true
% 3.41/1.00  --inst_eager_unprocessed_to_passive     true
% 3.41/1.00  --inst_prop_sim_given                   true
% 3.41/1.00  --inst_prop_sim_new                     false
% 3.41/1.00  --inst_subs_new                         false
% 3.41/1.00  --inst_eq_res_simp                      false
% 3.41/1.00  --inst_subs_given                       false
% 3.41/1.00  --inst_orphan_elimination               true
% 3.41/1.00  --inst_learning_loop_flag               true
% 3.41/1.00  --inst_learning_start                   3000
% 3.41/1.00  --inst_learning_factor                  2
% 3.41/1.00  --inst_start_prop_sim_after_learn       3
% 3.41/1.00  --inst_sel_renew                        solver
% 3.41/1.00  --inst_lit_activity_flag                true
% 3.41/1.00  --inst_restr_to_given                   false
% 3.41/1.00  --inst_activity_threshold               500
% 3.41/1.00  --inst_out_proof                        true
% 3.41/1.00  
% 3.41/1.00  ------ Resolution Options
% 3.41/1.00  
% 3.41/1.00  --resolution_flag                       false
% 3.41/1.00  --res_lit_sel                           adaptive
% 3.41/1.00  --res_lit_sel_side                      none
% 3.41/1.00  --res_ordering                          kbo
% 3.41/1.00  --res_to_prop_solver                    active
% 3.41/1.00  --res_prop_simpl_new                    false
% 3.41/1.00  --res_prop_simpl_given                  true
% 3.41/1.00  --res_passive_queue_type                priority_queues
% 3.41/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.41/1.00  --res_passive_queues_freq               [15;5]
% 3.41/1.00  --res_forward_subs                      full
% 3.41/1.00  --res_backward_subs                     full
% 3.41/1.00  --res_forward_subs_resolution           true
% 3.41/1.00  --res_backward_subs_resolution          true
% 3.41/1.00  --res_orphan_elimination                true
% 3.41/1.00  --res_time_limit                        2.
% 3.41/1.00  --res_out_proof                         true
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Options
% 3.41/1.00  
% 3.41/1.00  --superposition_flag                    true
% 3.41/1.00  --sup_passive_queue_type                priority_queues
% 3.41/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.41/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.41/1.00  --demod_completeness_check              fast
% 3.41/1.00  --demod_use_ground                      true
% 3.41/1.00  --sup_to_prop_solver                    passive
% 3.41/1.00  --sup_prop_simpl_new                    true
% 3.41/1.00  --sup_prop_simpl_given                  true
% 3.41/1.00  --sup_fun_splitting                     false
% 3.41/1.00  --sup_smt_interval                      50000
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Simplification Setup
% 3.41/1.00  
% 3.41/1.00  --sup_indices_passive                   []
% 3.41/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.41/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_full_bw                           [BwDemod]
% 3.41/1.00  --sup_immed_triv                        [TrivRules]
% 3.41/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.41/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_immed_bw_main                     []
% 3.41/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.41/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  
% 3.41/1.00  ------ Combination Options
% 3.41/1.00  
% 3.41/1.00  --comb_res_mult                         3
% 3.41/1.00  --comb_sup_mult                         2
% 3.41/1.00  --comb_inst_mult                        10
% 3.41/1.00  
% 3.41/1.00  ------ Debug Options
% 3.41/1.00  
% 3.41/1.00  --dbg_backtrace                         false
% 3.41/1.00  --dbg_dump_prop_clauses                 false
% 3.41/1.00  --dbg_dump_prop_clauses_file            -
% 3.41/1.00  --dbg_out_stat                          false
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  ------ Proving...
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  % SZS status Theorem for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  fof(f11,conjecture,(
% 3.41/1.00    ! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) => (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => (k3_mcart_1(X5,X6,X7) = X4 => X3 = X6)))) => (k6_mcart_1(X0,X1,X2,X4) = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f12,negated_conjecture,(
% 3.41/1.00    ~! [X0,X1,X2,X3,X4] : (m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)) => (! [X5] : (m1_subset_1(X5,X0) => ! [X6] : (m1_subset_1(X6,X1) => ! [X7] : (m1_subset_1(X7,X2) => (k3_mcart_1(X5,X6,X7) = X4 => X3 = X6)))) => (k6_mcart_1(X0,X1,X2,X4) = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 3.41/1.00    inference(negated_conjecture,[],[f11])).
% 3.41/1.00  
% 3.41/1.00  fof(f19,plain,(
% 3.41/1.00    ? [X0,X1,X2,X3,X4] : (((k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & ! [X5] : (! [X6] : (! [X7] : ((X3 = X6 | k3_mcart_1(X5,X6,X7) != X4) | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0))) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)))),
% 3.41/1.00    inference(ennf_transformation,[],[f12])).
% 3.41/1.00  
% 3.41/1.00  fof(f20,plain,(
% 3.41/1.00    ? [X0,X1,X2,X3,X4] : (k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X5] : (! [X6] : (! [X7] : (X3 = X6 | k3_mcart_1(X5,X6,X7) != X4 | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0)) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2)))),
% 3.41/1.00    inference(flattening,[],[f19])).
% 3.41/1.00  
% 3.41/1.00  fof(f30,plain,(
% 3.41/1.00    ? [X0,X1,X2,X3,X4] : (k6_mcart_1(X0,X1,X2,X4) != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & ! [X5] : (! [X6] : (! [X7] : (X3 = X6 | k3_mcart_1(X5,X6,X7) != X4 | ~m1_subset_1(X7,X2)) | ~m1_subset_1(X6,X1)) | ~m1_subset_1(X5,X0)) & m1_subset_1(X4,k3_zfmisc_1(X0,X1,X2))) => (k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X5] : (! [X6] : (! [X7] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4)) | ~m1_subset_1(X6,sK3)) | ~m1_subset_1(X5,sK2)) & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4)))),
% 3.41/1.00    introduced(choice_axiom,[])).
% 3.41/1.00  
% 3.41/1.00  fof(f31,plain,(
% 3.41/1.00    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 & k1_xboole_0 != sK4 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & ! [X5] : (! [X6] : (! [X7] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4)) | ~m1_subset_1(X6,sK3)) | ~m1_subset_1(X5,sK2)) & m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4))),
% 3.41/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6])],[f20,f30])).
% 3.41/1.00  
% 3.41/1.00  fof(f51,plain,(
% 3.41/1.00    m1_subset_1(sK6,k3_zfmisc_1(sK2,sK3,sK4))),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f6,axiom,(
% 3.41/1.00    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f43,plain,(
% 3.41/1.00    ( ! [X2,X0,X1] : (k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f6])).
% 3.41/1.00  
% 3.41/1.00  fof(f63,plain,(
% 3.41/1.00    m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))),
% 3.41/1.00    inference(definition_unfolding,[],[f51,f43])).
% 3.41/1.00  
% 3.41/1.00  fof(f4,axiom,(
% 3.41/1.00    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f14,plain,(
% 3.41/1.00    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.41/1.00    inference(ennf_transformation,[],[f4])).
% 3.41/1.00  
% 3.41/1.00  fof(f29,plain,(
% 3.41/1.00    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.41/1.00    inference(nnf_transformation,[],[f14])).
% 3.41/1.00  
% 3.41/1.00  fof(f38,plain,(
% 3.41/1.00    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f29])).
% 3.41/1.00  
% 3.41/1.00  fof(f8,axiom,(
% 3.41/1.00    ! [X0,X1,X2] : (r2_hidden(X0,k2_zfmisc_1(X1,X2)) => (r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f16,plain,(
% 3.41/1.00    ! [X0,X1,X2] : ((r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2)))),
% 3.41/1.00    inference(ennf_transformation,[],[f8])).
% 3.41/1.00  
% 3.41/1.00  fof(f45,plain,(
% 3.41/1.00    ( ! [X2,X0,X1] : (r2_hidden(k1_mcart_1(X0),X1) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f16])).
% 3.41/1.00  
% 3.41/1.00  fof(f46,plain,(
% 3.41/1.00    ( ! [X2,X0,X1] : (r2_hidden(k2_mcart_1(X0),X2) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f16])).
% 3.41/1.00  
% 3.41/1.00  fof(f2,axiom,(
% 3.41/1.00    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f13,plain,(
% 3.41/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 3.41/1.00    inference(ennf_transformation,[],[f2])).
% 3.41/1.00  
% 3.41/1.00  fof(f25,plain,(
% 3.41/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 3.41/1.00    introduced(choice_axiom,[])).
% 3.41/1.00  
% 3.41/1.00  fof(f26,plain,(
% 3.41/1.00    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 3.41/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f25])).
% 3.41/1.00  
% 3.41/1.00  fof(f34,plain,(
% 3.41/1.00    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f26])).
% 3.41/1.00  
% 3.41/1.00  fof(f1,axiom,(
% 3.41/1.00    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f21,plain,(
% 3.41/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 3.41/1.00    inference(nnf_transformation,[],[f1])).
% 3.41/1.00  
% 3.41/1.00  fof(f22,plain,(
% 3.41/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.41/1.00    inference(rectify,[],[f21])).
% 3.41/1.00  
% 3.41/1.00  fof(f23,plain,(
% 3.41/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 3.41/1.00    introduced(choice_axiom,[])).
% 3.41/1.00  
% 3.41/1.00  fof(f24,plain,(
% 3.41/1.00    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.41/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).
% 3.41/1.00  
% 3.41/1.00  fof(f32,plain,(
% 3.41/1.00    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f24])).
% 3.41/1.00  
% 3.41/1.00  fof(f40,plain,(
% 3.41/1.00    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,X0) | ~v1_xboole_0(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f29])).
% 3.41/1.00  
% 3.41/1.00  fof(f39,plain,(
% 3.41/1.00    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f29])).
% 3.41/1.00  
% 3.41/1.00  fof(f9,axiom,(
% 3.41/1.00    ! [X0,X1,X2] : ~(~! [X3] : (m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) => k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3) & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f17,plain,(
% 3.41/1.00    ! [X0,X1,X2] : (! [X3] : (k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3 | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 3.41/1.00    inference(ennf_transformation,[],[f9])).
% 3.41/1.00  
% 3.41/1.00  fof(f47,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k3_mcart_1(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3),k7_mcart_1(X0,X1,X2,X3)) = X3 | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f17])).
% 3.41/1.00  
% 3.41/1.00  fof(f5,axiom,(
% 3.41/1.00    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f42,plain,(
% 3.41/1.00    ( ! [X2,X0,X1] : (k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f5])).
% 3.41/1.00  
% 3.41/1.00  fof(f58,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k4_tarski(k4_tarski(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3)),k7_mcart_1(X0,X1,X2,X3)) = X3 | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(definition_unfolding,[],[f47,f42,f43])).
% 3.41/1.00  
% 3.41/1.00  fof(f10,axiom,(
% 3.41/1.00    ! [X0,X1,X2] : ~(~! [X3] : (m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) => (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3))) & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f18,plain,(
% 3.41/1.00    ! [X0,X1,X2] : (! [X3] : ((k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) & k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) & k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3)) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 3.41/1.00    inference(ennf_transformation,[],[f10])).
% 3.41/1.00  
% 3.41/1.00  fof(f48,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f18])).
% 3.41/1.00  
% 3.41/1.00  fof(f61,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k1_mcart_1(k1_mcart_1(X3)) = k5_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(definition_unfolding,[],[f48,f43])).
% 3.41/1.00  
% 3.41/1.00  fof(f53,plain,(
% 3.41/1.00    k1_xboole_0 != sK2),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f54,plain,(
% 3.41/1.00    k1_xboole_0 != sK3),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f55,plain,(
% 3.41/1.00    k1_xboole_0 != sK4),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f3,axiom,(
% 3.41/1.00    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f27,plain,(
% 3.41/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.41/1.00    inference(nnf_transformation,[],[f3])).
% 3.41/1.00  
% 3.41/1.00  fof(f28,plain,(
% 3.41/1.00    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.41/1.00    inference(flattening,[],[f27])).
% 3.41/1.00  
% 3.41/1.00  fof(f35,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f28])).
% 3.41/1.00  
% 3.41/1.00  fof(f36,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f28])).
% 3.41/1.00  
% 3.41/1.00  fof(f65,plain,(
% 3.41/1.00    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 3.41/1.00    inference(equality_resolution,[],[f36])).
% 3.41/1.00  
% 3.41/1.00  fof(f49,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f18])).
% 3.41/1.00  
% 3.41/1.00  fof(f60,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k2_mcart_1(k1_mcart_1(X3)) = k6_mcart_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(definition_unfolding,[],[f49,f43])).
% 3.41/1.00  
% 3.41/1.00  fof(f50,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f18])).
% 3.41/1.00  
% 3.41/1.00  fof(f59,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.41/1.00    inference(definition_unfolding,[],[f50,f43])).
% 3.41/1.00  
% 3.41/1.00  fof(f52,plain,(
% 3.41/1.00    ( ! [X6,X7,X5] : (sK5 = X6 | k3_mcart_1(X5,X6,X7) != sK6 | ~m1_subset_1(X7,sK4) | ~m1_subset_1(X6,sK3) | ~m1_subset_1(X5,sK2)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f62,plain,(
% 3.41/1.00    ( ! [X6,X7,X5] : (sK5 = X6 | k4_tarski(k4_tarski(X5,X6),X7) != sK6 | ~m1_subset_1(X7,sK4) | ~m1_subset_1(X6,sK3) | ~m1_subset_1(X5,sK2)) )),
% 3.41/1.00    inference(definition_unfolding,[],[f52,f42])).
% 3.41/1.00  
% 3.41/1.00  fof(f56,plain,(
% 3.41/1.00    k6_mcart_1(sK2,sK3,sK4,sK6) != sK5),
% 3.41/1.00    inference(cnf_transformation,[],[f31])).
% 3.41/1.00  
% 3.41/1.00  fof(f7,axiom,(
% 3.41/1.00    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)) => m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f15,plain,(
% 3.41/1.00    ! [X0,X1,X2,X3] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2)))),
% 3.41/1.00    inference(ennf_transformation,[],[f7])).
% 3.41/1.00  
% 3.41/1.00  fof(f44,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k3_zfmisc_1(X0,X1,X2))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f15])).
% 3.41/1.00  
% 3.41/1.00  fof(f57,plain,(
% 3.41/1.00    ( ! [X2,X0,X3,X1] : (m1_subset_1(k7_mcart_1(X0,X1,X2,X3),X2) | ~m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2))) )),
% 3.41/1.00    inference(definition_unfolding,[],[f44,f43])).
% 3.41/1.00  
% 3.41/1.00  cnf(c_22,negated_conjecture,
% 3.41/1.00      ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f63]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_488,plain,
% 3.41/1.00      ( m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_9,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.41/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_497,plain,
% 3.41/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 3.41/1.00      | r2_hidden(X0,X1) = iProver_top
% 3.41/1.00      | v1_xboole_0(X1) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2039,plain,
% 3.41/1.00      ( r2_hidden(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top
% 3.41/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_497]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_12,plain,
% 3.41/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 3.41/1.00      | r2_hidden(k1_mcart_1(X0),X1) ),
% 3.41/1.00      inference(cnf_transformation,[],[f45]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_494,plain,
% 3.41/1.00      ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 3.41/1.00      | r2_hidden(k1_mcart_1(X0),X1) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2440,plain,
% 3.41/1.00      ( r2_hidden(k1_mcart_1(sK6),k2_zfmisc_1(sK2,sK3)) = iProver_top
% 3.41/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2039,c_494]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_11,plain,
% 3.41/1.00      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 3.41/1.00      | r2_hidden(k2_mcart_1(X0),X2) ),
% 3.41/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_495,plain,
% 3.41/1.00      ( r2_hidden(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 3.41/1.00      | r2_hidden(k2_mcart_1(X0),X2) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2714,plain,
% 3.41/1.00      ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
% 3.41/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2440,c_495]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2,plain,
% 3.41/1.00      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f34]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_500,plain,
% 3.41/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1,plain,
% 3.41/1.00      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 3.41/1.00      inference(cnf_transformation,[],[f32]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_501,plain,
% 3.41/1.00      ( r2_hidden(X0,X1) != iProver_top
% 3.41/1.00      | v1_xboole_0(X1) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1062,plain,
% 3.41/1.00      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_500,c_501]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4895,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2714,c_1062]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2715,plain,
% 3.41/1.00      ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
% 3.41/1.00      | v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2440,c_494]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_7,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,X1) | ~ v1_xboole_0(X1) | v1_xboole_0(X0) ),
% 3.41/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_498,plain,
% 3.41/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 3.41/1.00      | v1_xboole_0(X1) != iProver_top
% 3.41/1.00      | v1_xboole_0(X0) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2080,plain,
% 3.41/1.00      ( v1_xboole_0(k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4)) != iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_498]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5625,plain,
% 3.41/1.00      ( r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2715,c_2080]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_8,plain,
% 3.41/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.41/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_112,plain,
% 3.41/1.00      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 3.41/1.00      inference(global_propositional_subsumption,[status(thm)],[c_8,c_1]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_113,plain,
% 3.41/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.41/1.00      inference(renaming,[status(thm)],[c_112]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_487,plain,
% 3.41/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 3.41/1.00      | r2_hidden(X0,X1) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_113]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5701,plain,
% 3.41/1.00      ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5625,c_487]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4896,plain,
% 3.41/1.00      ( r2_hidden(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2714,c_2080]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5471,plain,
% 3.41/1.00      ( m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) = iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4896,c_487]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_13,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 3.41/1.00      | k4_tarski(k4_tarski(k5_mcart_1(X1,X2,X3,X0),k6_mcart_1(X1,X2,X3,X0)),k7_mcart_1(X1,X2,X3,X0)) = X0
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X3 ),
% 3.41/1.00      inference(cnf_transformation,[],[f58]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_493,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(k5_mcart_1(X0,X1,X2,X3),k6_mcart_1(X0,X1,X2,X3)),k7_mcart_1(X0,X1,X2,X3)) = X3
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3799,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(k5_mcart_1(sK2,sK3,sK4,sK6),k6_mcart_1(sK2,sK3,sK4,sK6)),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6
% 3.41/1.00      | sK4 = k1_xboole_0
% 3.41/1.00      | sK3 = k1_xboole_0
% 3.41/1.00      | sK2 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_493]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_16,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 3.41/1.00      | k5_mcart_1(X1,X2,X3,X0) = k1_mcart_1(k1_mcart_1(X0))
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X3 ),
% 3.41/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_490,plain,
% 3.41/1.00      ( k5_mcart_1(X0,X1,X2,X3) = k1_mcart_1(k1_mcart_1(X3))
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1706,plain,
% 3.41/1.00      ( k5_mcart_1(sK2,sK3,sK4,sK6) = k1_mcart_1(k1_mcart_1(sK6))
% 3.41/1.00      | sK4 = k1_xboole_0
% 3.41/1.00      | sK3 = k1_xboole_0
% 3.41/1.00      | sK2 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_490]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_20,negated_conjecture,
% 3.41/1.00      ( k1_xboole_0 != sK2 ),
% 3.41/1.00      inference(cnf_transformation,[],[f53]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_19,negated_conjecture,
% 3.41/1.00      ( k1_xboole_0 != sK3 ),
% 3.41/1.00      inference(cnf_transformation,[],[f54]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_18,negated_conjecture,
% 3.41/1.00      ( k1_xboole_0 != sK4 ),
% 3.41/1.00      inference(cnf_transformation,[],[f55]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5,plain,
% 3.41/1.00      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = X1 ),
% 3.41/1.00      inference(cnf_transformation,[],[f35]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_58,plain,
% 3.41/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = k1_xboole_0 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4,plain,
% 3.41/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_59,plain,
% 3.41/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_206,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_679,plain,
% 3.41/1.00      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_206]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_680,plain,
% 3.41/1.00      ( sK4 != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_679]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_681,plain,
% 3.41/1.00      ( sK3 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK3 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_206]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_682,plain,
% 3.41/1.00      ( sK3 != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_681]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_683,plain,
% 3.41/1.00      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_206]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_684,plain,
% 3.41/1.00      ( sK2 != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = sK2
% 3.41/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_683]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2451,plain,
% 3.41/1.00      ( k5_mcart_1(sK2,sK3,sK4,sK6) = k1_mcart_1(k1_mcart_1(sK6)) ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_1706,c_20,c_19,c_18,c_58,c_59,c_680,c_682,c_684]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_15,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 3.41/1.00      | k6_mcart_1(X1,X2,X3,X0) = k2_mcart_1(k1_mcart_1(X0))
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X3 ),
% 3.41/1.00      inference(cnf_transformation,[],[f60]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_491,plain,
% 3.41/1.00      ( k6_mcart_1(X0,X1,X2,X3) = k2_mcart_1(k1_mcart_1(X3))
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2821,plain,
% 3.41/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
% 3.41/1.00      | sK4 = k1_xboole_0
% 3.41/1.00      | sK3 = k1_xboole_0
% 3.41/1.00      | sK2 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_491]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_725,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
% 3.41/1.00      | k6_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(k1_mcart_1(X0))
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_15]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_876,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),sK4))
% 3.41/1.00      | k6_mcart_1(sK2,X1,sK4,X0) = k2_mcart_1(k1_mcart_1(X0))
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_725]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1398,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 3.41/1.00      | k6_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(k1_mcart_1(X0))
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_876]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2792,plain,
% 3.41/1.00      ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 3.41/1.00      | k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6))
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_1398]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3187,plain,
% 3.41/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(k1_mcart_1(sK6)) ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_2821,c_22,c_20,c_19,c_18,c_2792]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3840,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6
% 3.41/1.00      | sK4 = k1_xboole_0
% 3.41/1.00      | sK3 = k1_xboole_0
% 3.41/1.00      | sK2 = k1_xboole_0 ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_3799,c_2451,c_3187]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4740,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k7_mcart_1(sK2,sK3,sK4,sK6)) = sK6 ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_3840,c_20,c_19,c_18,c_58,c_59,c_680,c_682,c_684]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_14,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 3.41/1.00      | k7_mcart_1(X1,X2,X3,X0) = k2_mcart_1(X0)
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X3 ),
% 3.41/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_492,plain,
% 3.41/1.00      ( k7_mcart_1(X0,X1,X2,X3) = k2_mcart_1(X3)
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | m1_subset_1(X3,k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3493,plain,
% 3.41/1.00      ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
% 3.41/1.00      | sK4 = k1_xboole_0
% 3.41/1.00      | sK3 = k1_xboole_0
% 3.41/1.00      | sK2 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_492]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_716,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),X2))
% 3.41/1.00      | k7_mcart_1(sK2,X1,X2,X0) = k2_mcart_1(X0)
% 3.41/1.00      | k1_xboole_0 = X2
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_14]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_841,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,X1),sK4))
% 3.41/1.00      | k7_mcart_1(sK2,X1,sK4,X0) = k2_mcart_1(X0)
% 3.41/1.00      | k1_xboole_0 = X1
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_716]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1183,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 3.41/1.00      | k7_mcart_1(sK2,sK3,sK4,X0) = k2_mcart_1(X0)
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_841]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2466,plain,
% 3.41/1.00      ( ~ m1_subset_1(sK6,k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4))
% 3.41/1.00      | k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6)
% 3.41/1.00      | k1_xboole_0 = sK4
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_1183]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4044,plain,
% 3.41/1.00      ( k7_mcart_1(sK2,sK3,sK4,sK6) = k2_mcart_1(sK6) ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_3493,c_22,c_20,c_19,c_18,c_2466]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4742,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(k1_mcart_1(k1_mcart_1(sK6)),k2_mcart_1(k1_mcart_1(sK6))),k2_mcart_1(sK6)) = sK6 ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_4740,c_4044]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_21,negated_conjecture,
% 3.41/1.00      ( ~ m1_subset_1(X0,sK4)
% 3.41/1.00      | ~ m1_subset_1(X1,sK3)
% 3.41/1.00      | ~ m1_subset_1(X2,sK2)
% 3.41/1.00      | k4_tarski(k4_tarski(X2,X1),X0) != sK6
% 3.41/1.00      | sK5 = X1 ),
% 3.41/1.00      inference(cnf_transformation,[],[f62]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_489,plain,
% 3.41/1.00      ( k4_tarski(k4_tarski(X0,X1),X2) != sK6
% 3.41/1.00      | sK5 = X1
% 3.41/1.00      | m1_subset_1(X2,sK4) != iProver_top
% 3.41/1.00      | m1_subset_1(X1,sK3) != iProver_top
% 3.41/1.00      | m1_subset_1(X0,sK2) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4745,plain,
% 3.41/1.00      ( k2_mcart_1(k1_mcart_1(sK6)) = sK5
% 3.41/1.00      | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
% 3.41/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top
% 3.41/1.00      | m1_subset_1(k2_mcart_1(sK6),sK4) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4742,c_489]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_17,negated_conjecture,
% 3.41/1.00      ( k6_mcart_1(sK2,sK3,sK4,sK6) != sK5 ),
% 3.41/1.00      inference(cnf_transformation,[],[f56]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3190,plain,
% 3.41/1.00      ( k2_mcart_1(k1_mcart_1(sK6)) != sK5 ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_3187,c_17]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10,plain,
% 3.41/1.00      ( ~ m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))
% 3.41/1.00      | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) ),
% 3.41/1.00      inference(cnf_transformation,[],[f57]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_496,plain,
% 3.41/1.00      ( m1_subset_1(X0,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) != iProver_top
% 3.41/1.00      | m1_subset_1(k7_mcart_1(X1,X2,X3,X0),X3) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2943,plain,
% 3.41/1.00      ( m1_subset_1(k7_mcart_1(sK2,sK3,sK4,sK6),sK4) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_488,c_496]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4048,plain,
% 3.41/1.00      ( m1_subset_1(k2_mcart_1(sK6),sK4) = iProver_top ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_4044,c_2943]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4769,plain,
% 3.41/1.00      ( m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top
% 3.41/1.00      | m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_4745,c_3190,c_4048]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4770,plain,
% 3.41/1.00      ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
% 3.41/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(sK6)),sK3) != iProver_top ),
% 3.41/1.00      inference(renaming,[status(thm)],[c_4769]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5589,plain,
% 3.41/1.00      ( m1_subset_1(k1_mcart_1(k1_mcart_1(sK6)),sK2) != iProver_top
% 3.41/1.00      | v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5471,c_4770]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5708,plain,
% 3.41/1.00      ( v1_xboole_0(sK6) = iProver_top ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_5701,c_5589]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5714,plain,
% 3.41/1.00      ( sK6 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5708,c_1062]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_9586,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | r2_hidden(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) = iProver_top ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_4895,c_5714]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_9591,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_9586,c_487]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_6190,plain,
% 3.41/1.00      ( m1_subset_1(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) != iProver_top
% 3.41/1.00      | m1_subset_1(k2_mcart_1(k1_mcart_1(k1_xboole_0)),sK3) != iProver_top ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_5714,c_4770]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5624,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | r2_hidden(k1_mcart_1(k1_mcart_1(sK6)),sK2) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_2715,c_1062]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10042,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | r2_hidden(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) = iProver_top ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_5624,c_5714]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10047,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0
% 3.41/1.00      | m1_subset_1(k1_mcart_1(k1_mcart_1(k1_xboole_0)),sK2) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_10042,c_487]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10178,plain,
% 3.41/1.00      ( k2_zfmisc_1(k2_zfmisc_1(sK2,sK3),sK4) = k1_xboole_0 ),
% 3.41/1.00      inference(global_propositional_subsumption,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_9591,c_6190,c_10047]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10202,plain,
% 3.41/1.00      ( k2_zfmisc_1(sK2,sK3) = k1_xboole_0 | sK4 = k1_xboole_0 ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_10178,c_5]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_666,plain,
% 3.41/1.00      ( k2_zfmisc_1(sK2,X0) != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = X0
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_790,plain,
% 3.41/1.00      ( k2_zfmisc_1(sK2,sK3) != k1_xboole_0
% 3.41/1.00      | k1_xboole_0 = sK3
% 3.41/1.00      | k1_xboole_0 = sK2 ),
% 3.41/1.00      inference(instantiation,[status(thm)],[c_666]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(contradiction,plain,
% 3.41/1.00      ( $false ),
% 3.41/1.00      inference(minisat,
% 3.41/1.00                [status(thm)],
% 3.41/1.00                [c_10202,c_790,c_680,c_59,c_58,c_18,c_19,c_20]) ).
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  ------                               Statistics
% 3.41/1.00  
% 3.41/1.00  ------ General
% 3.41/1.00  
% 3.41/1.00  abstr_ref_over_cycles:                  0
% 3.41/1.00  abstr_ref_under_cycles:                 0
% 3.41/1.00  gc_basic_clause_elim:                   0
% 3.41/1.00  forced_gc_time:                         0
% 3.41/1.00  parsing_time:                           0.011
% 3.41/1.00  unif_index_cands_time:                  0.
% 3.41/1.00  unif_index_add_time:                    0.
% 3.41/1.00  orderings_time:                         0.
% 3.41/1.00  out_proof_time:                         0.01
% 3.41/1.00  total_time:                             0.295
% 3.41/1.00  num_of_symbols:                         49
% 3.41/1.00  num_of_terms:                           13174
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing
% 3.41/1.00  
% 3.41/1.00  num_of_splits:                          0
% 3.41/1.00  num_of_split_atoms:                     0
% 3.41/1.00  num_of_reused_defs:                     0
% 3.41/1.00  num_eq_ax_congr_red:                    22
% 3.41/1.00  num_of_sem_filtered_clauses:            1
% 3.41/1.00  num_of_subtypes:                        0
% 3.41/1.00  monotx_restored_types:                  0
% 3.41/1.00  sat_num_of_epr_types:                   0
% 3.41/1.00  sat_num_of_non_cyclic_types:            0
% 3.41/1.00  sat_guarded_non_collapsed_types:        0
% 3.41/1.00  num_pure_diseq_elim:                    0
% 3.41/1.00  simp_replaced_by:                       0
% 3.41/1.00  res_preprocessed:                       88
% 3.41/1.00  prep_upred:                             0
% 3.41/1.00  prep_unflattend:                        0
% 3.41/1.00  smt_new_axioms:                         0
% 3.41/1.00  pred_elim_cands:                        3
% 3.41/1.00  pred_elim:                              0
% 3.41/1.00  pred_elim_cl:                           0
% 3.41/1.00  pred_elim_cycles:                       1
% 3.41/1.00  merged_defs:                            0
% 3.41/1.00  merged_defs_ncl:                        0
% 3.41/1.00  bin_hyper_res:                          0
% 3.41/1.00  prep_cycles:                            3
% 3.41/1.00  pred_elim_time:                         0.
% 3.41/1.00  splitting_time:                         0.
% 3.41/1.00  sem_filter_time:                        0.
% 3.41/1.00  monotx_time:                            0.001
% 3.41/1.00  subtype_inf_time:                       0.
% 3.41/1.00  
% 3.41/1.00  ------ Problem properties
% 3.41/1.00  
% 3.41/1.00  clauses:                                23
% 3.41/1.00  conjectures:                            6
% 3.41/1.00  epr:                                    8
% 3.41/1.00  horn:                                   15
% 3.41/1.00  ground:                                 5
% 3.41/1.00  unary:                                  7
% 3.41/1.00  binary:                                 7
% 3.41/1.00  lits:                                   58
% 3.41/1.00  lits_eq:                                28
% 3.41/1.00  fd_pure:                                0
% 3.41/1.00  fd_pseudo:                              0
% 3.41/1.00  fd_cond:                                6
% 3.41/1.00  fd_pseudo_cond:                         0
% 3.41/1.00  ac_symbols:                             0
% 3.41/1.00  
% 3.41/1.00  ------ Propositional Solver
% 3.41/1.00  
% 3.41/1.00  prop_solver_calls:                      23
% 3.41/1.00  prop_fast_solver_calls:                 750
% 3.41/1.00  smt_solver_calls:                       0
% 3.41/1.00  smt_fast_solver_calls:                  0
% 3.41/1.00  prop_num_of_clauses:                    4440
% 3.41/1.00  prop_preprocess_simplified:             11328
% 3.41/1.00  prop_fo_subsumed:                       30
% 3.41/1.00  prop_solver_time:                       0.
% 3.41/1.00  smt_solver_time:                        0.
% 3.41/1.00  smt_fast_solver_time:                   0.
% 3.41/1.00  prop_fast_solver_time:                  0.
% 3.41/1.00  prop_unsat_core_time:                   0.
% 3.41/1.00  
% 3.41/1.00  ------ QBF
% 3.41/1.00  
% 3.41/1.00  qbf_q_res:                              0
% 3.41/1.00  qbf_num_tautologies:                    0
% 3.41/1.00  qbf_prep_cycles:                        0
% 3.41/1.00  
% 3.41/1.00  ------ BMC1
% 3.41/1.00  
% 3.41/1.00  bmc1_current_bound:                     -1
% 3.41/1.00  bmc1_last_solved_bound:                 -1
% 3.41/1.00  bmc1_unsat_core_size:                   -1
% 3.41/1.00  bmc1_unsat_core_parents_size:           -1
% 3.41/1.00  bmc1_merge_next_fun:                    0
% 3.41/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.41/1.00  
% 3.41/1.00  ------ Instantiation
% 3.41/1.00  
% 3.41/1.00  inst_num_of_clauses:                    1295
% 3.41/1.00  inst_num_in_passive:                    741
% 3.41/1.00  inst_num_in_active:                     418
% 3.41/1.00  inst_num_in_unprocessed:                136
% 3.41/1.00  inst_num_of_loops:                      580
% 3.41/1.00  inst_num_of_learning_restarts:          0
% 3.41/1.00  inst_num_moves_active_passive:          161
% 3.41/1.00  inst_lit_activity:                      0
% 3.41/1.00  inst_lit_activity_moves:                0
% 3.41/1.00  inst_num_tautologies:                   0
% 3.41/1.00  inst_num_prop_implied:                  0
% 3.41/1.00  inst_num_existing_simplified:           0
% 3.41/1.00  inst_num_eq_res_simplified:             0
% 3.41/1.00  inst_num_child_elim:                    0
% 3.41/1.00  inst_num_of_dismatching_blockings:      601
% 3.41/1.00  inst_num_of_non_proper_insts:           1279
% 3.41/1.00  inst_num_of_duplicates:                 0
% 3.41/1.00  inst_inst_num_from_inst_to_res:         0
% 3.41/1.00  inst_dismatching_checking_time:         0.
% 3.41/1.00  
% 3.41/1.00  ------ Resolution
% 3.41/1.00  
% 3.41/1.00  res_num_of_clauses:                     0
% 3.41/1.00  res_num_in_passive:                     0
% 3.41/1.00  res_num_in_active:                      0
% 3.41/1.00  res_num_of_loops:                       91
% 3.41/1.00  res_forward_subset_subsumed:            29
% 3.41/1.00  res_backward_subset_subsumed:           0
% 3.41/1.00  res_forward_subsumed:                   0
% 3.41/1.00  res_backward_subsumed:                  0
% 3.41/1.00  res_forward_subsumption_resolution:     0
% 3.41/1.00  res_backward_subsumption_resolution:    0
% 3.41/1.00  res_clause_to_clause_subsumption:       410
% 3.41/1.00  res_orphan_elimination:                 0
% 3.41/1.00  res_tautology_del:                      14
% 3.41/1.00  res_num_eq_res_simplified:              0
% 3.41/1.00  res_num_sel_changes:                    0
% 3.41/1.00  res_moves_from_active_to_pass:          0
% 3.41/1.00  
% 3.41/1.00  ------ Superposition
% 3.41/1.00  
% 3.41/1.00  sup_time_total:                         0.
% 3.41/1.00  sup_time_generating:                    0.
% 3.41/1.00  sup_time_sim_full:                      0.
% 3.41/1.00  sup_time_sim_immed:                     0.
% 3.41/1.00  
% 3.41/1.00  sup_num_of_clauses:                     176
% 3.41/1.00  sup_num_in_active:                      71
% 3.41/1.00  sup_num_in_passive:                     105
% 3.41/1.00  sup_num_of_loops:                       115
% 3.41/1.00  sup_fw_superposition:                   87
% 3.41/1.00  sup_bw_superposition:                   260
% 3.41/1.00  sup_immediate_simplified:               86
% 3.41/1.00  sup_given_eliminated:                   1
% 3.41/1.00  comparisons_done:                       0
% 3.41/1.00  comparisons_avoided:                    15
% 3.41/1.00  
% 3.41/1.00  ------ Simplifications
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  sim_fw_subset_subsumed:                 63
% 3.41/1.00  sim_bw_subset_subsumed:                 9
% 3.41/1.00  sim_fw_subsumed:                        11
% 3.41/1.00  sim_bw_subsumed:                        4
% 3.41/1.00  sim_fw_subsumption_res:                 1
% 3.41/1.00  sim_bw_subsumption_res:                 0
% 3.41/1.00  sim_tautology_del:                      8
% 3.41/1.00  sim_eq_tautology_del:                   18
% 3.41/1.00  sim_eq_res_simp:                        0
% 3.41/1.00  sim_fw_demodulated:                     9
% 3.41/1.00  sim_bw_demodulated:                     38
% 3.41/1.00  sim_light_normalised:                   12
% 3.41/1.00  sim_joinable_taut:                      0
% 3.41/1.00  sim_joinable_simp:                      0
% 3.41/1.00  sim_ac_normalised:                      0
% 3.41/1.00  sim_smt_subsumption:                    0
% 3.41/1.00  
%------------------------------------------------------------------------------
