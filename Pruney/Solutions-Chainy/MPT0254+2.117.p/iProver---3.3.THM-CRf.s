%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:34:06 EST 2020

% Result     : Theorem 7.59s
% Output     : CNFRefutation 7.59s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 497 expanded)
%              Number of clauses        :   38 ( 149 expanded)
%              Number of leaves         :   15 ( 142 expanded)
%              Depth                    :   21
%              Number of atoms          :  165 ( 586 expanded)
%              Number of equality atoms :  132 ( 553 expanded)
%              Maximal formula depth    :   11 (   3 average)
%              Maximal clause size      :   14 (   1 average)
%              Maximal term depth       :    8 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f9])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X2,X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f17,conjecture,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    inference(negated_conjecture,[],[f17])).

fof(f21,plain,(
    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) ),
    inference(ennf_transformation,[],[f18])).

fof(f28,plain,
    ( ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)
   => k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f21,f28])).

fof(f52,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f10,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f3,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f53,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f39,f32])).

fof(f12,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f14])).

fof(f54,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f47,f48])).

fof(f55,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f46,f54])).

fof(f68,plain,(
    k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f52,f53,f55])).

fof(f1,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f7,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f58,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) ),
    inference(definition_unfolding,[],[f35,f53,f53,f32])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <=> ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
        | r2_hidden(X0,X1) )
      & ( ~ r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f66,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0) ) ),
    inference(definition_unfolding,[],[f49,f32,f55,f55])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f22])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f23])).

fof(f25,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK0(X0,X1,X2) != X1
            & sK0(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( sK0(X0,X1,X2) = X1
          | sK0(X0,X1,X2) = X0
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK0(X0,X1,X2) != X1
              & sK0(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( sK0(X0,X1,X2) = X1
            | sK0(X0,X1,X2) = X0
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).

fof(f41,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f63,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_enumset1(X0,X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f41,f54])).

fof(f71,plain,(
    ! [X4,X2,X1] :
      ( r2_hidden(X4,X2)
      | k2_enumset1(X4,X4,X4,X1) != X2 ) ),
    inference(equality_resolution,[],[f63])).

fof(f72,plain,(
    ! [X4,X1] : r2_hidden(X4,k2_enumset1(X4,X4,X4,X1)) ),
    inference(equality_resolution,[],[f71])).

cnf(c_7,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_6,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_17,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_361,negated_conjecture,
    ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0 ),
    inference(theory_normalisation,[status(thm)],[c_17,c_6,c_0])).

cnf(c_1220,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),X0)) = k5_xboole_0(k1_xboole_0,X0) ),
    inference(superposition,[status(thm)],[c_361,c_6])).

cnf(c_5,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_927,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_5,c_0])).

cnf(c_1229,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_1220,c_927])).

cnf(c_1556,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),X0))) = X0 ),
    inference(superposition,[status(thm)],[c_6,c_1229])).

cnf(c_1629,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k1_xboole_0)) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(superposition,[status(thm)],[c_7,c_1556])).

cnf(c_1722,plain,
    ( k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) = k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(demodulation,[status(thm)],[c_1629,c_5])).

cnf(c_4,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_362,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(theory_normalisation,[status(thm)],[c_4,c_6,c_0])).

cnf(c_17958,plain,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1))))) = k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) ),
    inference(superposition,[status(thm)],[c_1722,c_362])).

cnf(c_17960,plain,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1))))) = k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) ),
    inference(demodulation,[status(thm)],[c_17958,c_1722])).

cnf(c_1219,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_7,c_6])).

cnf(c_1230,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_1219,c_927])).

cnf(c_1557,plain,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))) = k5_xboole_0(sK2,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_7,c_1229])).

cnf(c_1564,plain,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))) = sK2 ),
    inference(demodulation,[status(thm)],[c_1557,c_5])).

cnf(c_1569,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(sK2,X0)) = X0 ),
    inference(demodulation,[status(thm)],[c_1564,c_1229])).

cnf(c_1604,plain,
    ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,X0),X1)) = k5_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_1569,c_6])).

cnf(c_657,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X0,X2)) ),
    inference(superposition,[status(thm)],[c_6,c_0])).

cnf(c_3980,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_7,c_657])).

cnf(c_4063,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
    inference(demodulation,[status(thm)],[c_3980,c_5])).

cnf(c_5754,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(sK2,X0))) = k5_xboole_0(sK2,X1) ),
    inference(superposition,[status(thm)],[c_4063,c_1604])).

cnf(c_9070,plain,
    ( k5_xboole_0(X0,k5_xboole_0(sK2,k5_xboole_0(X1,X0))) = k5_xboole_0(sK2,X1) ),
    inference(superposition,[status(thm)],[c_657,c_5754])).

cnf(c_17961,plain,
    ( k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_17960,c_7,c_1230,c_1604,c_9070])).

cnf(c_17962,plain,
    ( k3_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_17961,c_1569])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,X1)
    | k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_637,plain,
    ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0)
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_18353,plain,
    ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k1_xboole_0) != k2_enumset1(sK1,sK1,sK1,sK1)
    | r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_17962,c_637])).

cnf(c_18354,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) != k2_enumset1(sK1,sK1,sK1,sK1)
    | r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_18353,c_5])).

cnf(c_18355,plain,
    ( r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_18354])).

cnf(c_12,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_28,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_30,plain,
    ( r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_28])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_18355,c_30])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n008.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.19/0.33  % CPULimit   : 60
% 0.19/0.33  % WCLimit    : 600
% 0.19/0.33  % DateTime   : Tue Dec  1 14:34:45 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  % Running in FOF mode
% 7.59/1.50  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.59/1.50  
% 7.59/1.50  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.59/1.50  
% 7.59/1.50  ------  iProver source info
% 7.59/1.50  
% 7.59/1.50  git: date: 2020-06-30 10:37:57 +0100
% 7.59/1.50  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.59/1.50  git: non_committed_changes: false
% 7.59/1.50  git: last_make_outside_of_git: false
% 7.59/1.50  
% 7.59/1.50  ------ 
% 7.59/1.50  
% 7.59/1.50  ------ Input Options
% 7.59/1.50  
% 7.59/1.50  --out_options                           all
% 7.59/1.50  --tptp_safe_out                         true
% 7.59/1.50  --problem_path                          ""
% 7.59/1.50  --include_path                          ""
% 7.59/1.50  --clausifier                            res/vclausify_rel
% 7.59/1.50  --clausifier_options                    ""
% 7.59/1.50  --stdin                                 false
% 7.59/1.50  --stats_out                             all
% 7.59/1.50  
% 7.59/1.50  ------ General Options
% 7.59/1.50  
% 7.59/1.50  --fof                                   false
% 7.59/1.50  --time_out_real                         305.
% 7.59/1.50  --time_out_virtual                      -1.
% 7.59/1.50  --symbol_type_check                     false
% 7.59/1.50  --clausify_out                          false
% 7.59/1.50  --sig_cnt_out                           false
% 7.59/1.50  --trig_cnt_out                          false
% 7.59/1.50  --trig_cnt_out_tolerance                1.
% 7.59/1.50  --trig_cnt_out_sk_spl                   false
% 7.59/1.50  --abstr_cl_out                          false
% 7.59/1.50  
% 7.59/1.50  ------ Global Options
% 7.59/1.50  
% 7.59/1.50  --schedule                              default
% 7.59/1.50  --add_important_lit                     false
% 7.59/1.50  --prop_solver_per_cl                    1000
% 7.59/1.50  --min_unsat_core                        false
% 7.59/1.50  --soft_assumptions                      false
% 7.59/1.50  --soft_lemma_size                       3
% 7.59/1.50  --prop_impl_unit_size                   0
% 7.59/1.50  --prop_impl_unit                        []
% 7.59/1.50  --share_sel_clauses                     true
% 7.59/1.50  --reset_solvers                         false
% 7.59/1.50  --bc_imp_inh                            [conj_cone]
% 7.59/1.50  --conj_cone_tolerance                   3.
% 7.59/1.50  --extra_neg_conj                        none
% 7.59/1.50  --large_theory_mode                     true
% 7.59/1.50  --prolific_symb_bound                   200
% 7.59/1.50  --lt_threshold                          2000
% 7.59/1.50  --clause_weak_htbl                      true
% 7.59/1.50  --gc_record_bc_elim                     false
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing Options
% 7.59/1.50  
% 7.59/1.50  --preprocessing_flag                    true
% 7.59/1.50  --time_out_prep_mult                    0.1
% 7.59/1.50  --splitting_mode                        input
% 7.59/1.50  --splitting_grd                         true
% 7.59/1.50  --splitting_cvd                         false
% 7.59/1.50  --splitting_cvd_svl                     false
% 7.59/1.50  --splitting_nvd                         32
% 7.59/1.50  --sub_typing                            true
% 7.59/1.50  --prep_gs_sim                           true
% 7.59/1.50  --prep_unflatten                        true
% 7.59/1.50  --prep_res_sim                          true
% 7.59/1.50  --prep_upred                            true
% 7.59/1.50  --prep_sem_filter                       exhaustive
% 7.59/1.50  --prep_sem_filter_out                   false
% 7.59/1.50  --pred_elim                             true
% 7.59/1.50  --res_sim_input                         true
% 7.59/1.50  --eq_ax_congr_red                       true
% 7.59/1.50  --pure_diseq_elim                       true
% 7.59/1.50  --brand_transform                       false
% 7.59/1.50  --non_eq_to_eq                          false
% 7.59/1.50  --prep_def_merge                        true
% 7.59/1.50  --prep_def_merge_prop_impl              false
% 7.59/1.50  --prep_def_merge_mbd                    true
% 7.59/1.50  --prep_def_merge_tr_red                 false
% 7.59/1.50  --prep_def_merge_tr_cl                  false
% 7.59/1.50  --smt_preprocessing                     true
% 7.59/1.50  --smt_ac_axioms                         fast
% 7.59/1.50  --preprocessed_out                      false
% 7.59/1.50  --preprocessed_stats                    false
% 7.59/1.50  
% 7.59/1.50  ------ Abstraction refinement Options
% 7.59/1.50  
% 7.59/1.50  --abstr_ref                             []
% 7.59/1.50  --abstr_ref_prep                        false
% 7.59/1.50  --abstr_ref_until_sat                   false
% 7.59/1.50  --abstr_ref_sig_restrict                funpre
% 7.59/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.59/1.50  --abstr_ref_under                       []
% 7.59/1.50  
% 7.59/1.50  ------ SAT Options
% 7.59/1.50  
% 7.59/1.50  --sat_mode                              false
% 7.59/1.50  --sat_fm_restart_options                ""
% 7.59/1.50  --sat_gr_def                            false
% 7.59/1.50  --sat_epr_types                         true
% 7.59/1.50  --sat_non_cyclic_types                  false
% 7.59/1.50  --sat_finite_models                     false
% 7.59/1.50  --sat_fm_lemmas                         false
% 7.59/1.50  --sat_fm_prep                           false
% 7.59/1.50  --sat_fm_uc_incr                        true
% 7.59/1.50  --sat_out_model                         small
% 7.59/1.50  --sat_out_clauses                       false
% 7.59/1.50  
% 7.59/1.50  ------ QBF Options
% 7.59/1.50  
% 7.59/1.50  --qbf_mode                              false
% 7.59/1.50  --qbf_elim_univ                         false
% 7.59/1.50  --qbf_dom_inst                          none
% 7.59/1.50  --qbf_dom_pre_inst                      false
% 7.59/1.50  --qbf_sk_in                             false
% 7.59/1.50  --qbf_pred_elim                         true
% 7.59/1.50  --qbf_split                             512
% 7.59/1.50  
% 7.59/1.50  ------ BMC1 Options
% 7.59/1.50  
% 7.59/1.50  --bmc1_incremental                      false
% 7.59/1.50  --bmc1_axioms                           reachable_all
% 7.59/1.50  --bmc1_min_bound                        0
% 7.59/1.50  --bmc1_max_bound                        -1
% 7.59/1.50  --bmc1_max_bound_default                -1
% 7.59/1.50  --bmc1_symbol_reachability              true
% 7.59/1.50  --bmc1_property_lemmas                  false
% 7.59/1.50  --bmc1_k_induction                      false
% 7.59/1.50  --bmc1_non_equiv_states                 false
% 7.59/1.50  --bmc1_deadlock                         false
% 7.59/1.50  --bmc1_ucm                              false
% 7.59/1.50  --bmc1_add_unsat_core                   none
% 7.59/1.50  --bmc1_unsat_core_children              false
% 7.59/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.59/1.50  --bmc1_out_stat                         full
% 7.59/1.50  --bmc1_ground_init                      false
% 7.59/1.50  --bmc1_pre_inst_next_state              false
% 7.59/1.50  --bmc1_pre_inst_state                   false
% 7.59/1.50  --bmc1_pre_inst_reach_state             false
% 7.59/1.50  --bmc1_out_unsat_core                   false
% 7.59/1.50  --bmc1_aig_witness_out                  false
% 7.59/1.50  --bmc1_verbose                          false
% 7.59/1.50  --bmc1_dump_clauses_tptp                false
% 7.59/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.59/1.50  --bmc1_dump_file                        -
% 7.59/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.59/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.59/1.50  --bmc1_ucm_extend_mode                  1
% 7.59/1.50  --bmc1_ucm_init_mode                    2
% 7.59/1.50  --bmc1_ucm_cone_mode                    none
% 7.59/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.59/1.50  --bmc1_ucm_relax_model                  4
% 7.59/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.59/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.59/1.50  --bmc1_ucm_layered_model                none
% 7.59/1.50  --bmc1_ucm_max_lemma_size               10
% 7.59/1.50  
% 7.59/1.50  ------ AIG Options
% 7.59/1.50  
% 7.59/1.50  --aig_mode                              false
% 7.59/1.50  
% 7.59/1.50  ------ Instantiation Options
% 7.59/1.50  
% 7.59/1.50  --instantiation_flag                    true
% 7.59/1.50  --inst_sos_flag                         true
% 7.59/1.50  --inst_sos_phase                        true
% 7.59/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.59/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.59/1.50  --inst_lit_sel_side                     num_symb
% 7.59/1.50  --inst_solver_per_active                1400
% 7.59/1.50  --inst_solver_calls_frac                1.
% 7.59/1.50  --inst_passive_queue_type               priority_queues
% 7.59/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.59/1.50  --inst_passive_queues_freq              [25;2]
% 7.59/1.50  --inst_dismatching                      true
% 7.59/1.50  --inst_eager_unprocessed_to_passive     true
% 7.59/1.50  --inst_prop_sim_given                   true
% 7.59/1.50  --inst_prop_sim_new                     false
% 7.59/1.50  --inst_subs_new                         false
% 7.59/1.50  --inst_eq_res_simp                      false
% 7.59/1.50  --inst_subs_given                       false
% 7.59/1.50  --inst_orphan_elimination               true
% 7.59/1.50  --inst_learning_loop_flag               true
% 7.59/1.50  --inst_learning_start                   3000
% 7.59/1.50  --inst_learning_factor                  2
% 7.59/1.50  --inst_start_prop_sim_after_learn       3
% 7.59/1.50  --inst_sel_renew                        solver
% 7.59/1.50  --inst_lit_activity_flag                true
% 7.59/1.50  --inst_restr_to_given                   false
% 7.59/1.50  --inst_activity_threshold               500
% 7.59/1.50  --inst_out_proof                        true
% 7.59/1.50  
% 7.59/1.50  ------ Resolution Options
% 7.59/1.50  
% 7.59/1.50  --resolution_flag                       true
% 7.59/1.50  --res_lit_sel                           adaptive
% 7.59/1.50  --res_lit_sel_side                      none
% 7.59/1.50  --res_ordering                          kbo
% 7.59/1.50  --res_to_prop_solver                    active
% 7.59/1.50  --res_prop_simpl_new                    false
% 7.59/1.50  --res_prop_simpl_given                  true
% 7.59/1.50  --res_passive_queue_type                priority_queues
% 7.59/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.59/1.50  --res_passive_queues_freq               [15;5]
% 7.59/1.50  --res_forward_subs                      full
% 7.59/1.50  --res_backward_subs                     full
% 7.59/1.50  --res_forward_subs_resolution           true
% 7.59/1.50  --res_backward_subs_resolution          true
% 7.59/1.50  --res_orphan_elimination                true
% 7.59/1.50  --res_time_limit                        2.
% 7.59/1.50  --res_out_proof                         true
% 7.59/1.50  
% 7.59/1.50  ------ Superposition Options
% 7.59/1.50  
% 7.59/1.50  --superposition_flag                    true
% 7.59/1.50  --sup_passive_queue_type                priority_queues
% 7.59/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.59/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.59/1.50  --demod_completeness_check              fast
% 7.59/1.50  --demod_use_ground                      true
% 7.59/1.50  --sup_to_prop_solver                    passive
% 7.59/1.50  --sup_prop_simpl_new                    true
% 7.59/1.50  --sup_prop_simpl_given                  true
% 7.59/1.50  --sup_fun_splitting                     true
% 7.59/1.50  --sup_smt_interval                      50000
% 7.59/1.50  
% 7.59/1.50  ------ Superposition Simplification Setup
% 7.59/1.50  
% 7.59/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.59/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.59/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.59/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.59/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.59/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.59/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.59/1.50  --sup_immed_triv                        [TrivRules]
% 7.59/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_immed_bw_main                     []
% 7.59/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.59/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.59/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_input_bw                          []
% 7.59/1.50  
% 7.59/1.50  ------ Combination Options
% 7.59/1.50  
% 7.59/1.50  --comb_res_mult                         3
% 7.59/1.50  --comb_sup_mult                         2
% 7.59/1.50  --comb_inst_mult                        10
% 7.59/1.50  
% 7.59/1.50  ------ Debug Options
% 7.59/1.50  
% 7.59/1.50  --dbg_backtrace                         false
% 7.59/1.50  --dbg_dump_prop_clauses                 false
% 7.59/1.50  --dbg_dump_prop_clauses_file            -
% 7.59/1.50  --dbg_out_stat                          false
% 7.59/1.50  ------ Parsing...
% 7.59/1.50  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.59/1.50  ------ Proving...
% 7.59/1.50  ------ Problem Properties 
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  clauses                                 18
% 7.59/1.50  conjectures                             1
% 7.59/1.50  EPR                                     0
% 7.59/1.50  Horn                                    15
% 7.59/1.50  unary                                   11
% 7.59/1.50  binary                                  3
% 7.59/1.50  lits                                    30
% 7.59/1.50  lits eq                                 20
% 7.59/1.50  fd_pure                                 0
% 7.59/1.50  fd_pseudo                               0
% 7.59/1.50  fd_cond                                 0
% 7.59/1.50  fd_pseudo_cond                          3
% 7.59/1.50  AC symbols                              1
% 7.59/1.50  
% 7.59/1.50  ------ Schedule dynamic 5 is on 
% 7.59/1.50  
% 7.59/1.50  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  ------ 
% 7.59/1.50  Current options:
% 7.59/1.50  ------ 
% 7.59/1.50  
% 7.59/1.50  ------ Input Options
% 7.59/1.50  
% 7.59/1.50  --out_options                           all
% 7.59/1.50  --tptp_safe_out                         true
% 7.59/1.50  --problem_path                          ""
% 7.59/1.50  --include_path                          ""
% 7.59/1.50  --clausifier                            res/vclausify_rel
% 7.59/1.50  --clausifier_options                    ""
% 7.59/1.50  --stdin                                 false
% 7.59/1.50  --stats_out                             all
% 7.59/1.50  
% 7.59/1.50  ------ General Options
% 7.59/1.50  
% 7.59/1.50  --fof                                   false
% 7.59/1.50  --time_out_real                         305.
% 7.59/1.50  --time_out_virtual                      -1.
% 7.59/1.50  --symbol_type_check                     false
% 7.59/1.50  --clausify_out                          false
% 7.59/1.50  --sig_cnt_out                           false
% 7.59/1.50  --trig_cnt_out                          false
% 7.59/1.50  --trig_cnt_out_tolerance                1.
% 7.59/1.50  --trig_cnt_out_sk_spl                   false
% 7.59/1.50  --abstr_cl_out                          false
% 7.59/1.50  
% 7.59/1.50  ------ Global Options
% 7.59/1.50  
% 7.59/1.50  --schedule                              default
% 7.59/1.50  --add_important_lit                     false
% 7.59/1.50  --prop_solver_per_cl                    1000
% 7.59/1.50  --min_unsat_core                        false
% 7.59/1.50  --soft_assumptions                      false
% 7.59/1.50  --soft_lemma_size                       3
% 7.59/1.50  --prop_impl_unit_size                   0
% 7.59/1.50  --prop_impl_unit                        []
% 7.59/1.50  --share_sel_clauses                     true
% 7.59/1.50  --reset_solvers                         false
% 7.59/1.50  --bc_imp_inh                            [conj_cone]
% 7.59/1.50  --conj_cone_tolerance                   3.
% 7.59/1.50  --extra_neg_conj                        none
% 7.59/1.50  --large_theory_mode                     true
% 7.59/1.50  --prolific_symb_bound                   200
% 7.59/1.50  --lt_threshold                          2000
% 7.59/1.50  --clause_weak_htbl                      true
% 7.59/1.50  --gc_record_bc_elim                     false
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing Options
% 7.59/1.50  
% 7.59/1.50  --preprocessing_flag                    true
% 7.59/1.50  --time_out_prep_mult                    0.1
% 7.59/1.50  --splitting_mode                        input
% 7.59/1.50  --splitting_grd                         true
% 7.59/1.50  --splitting_cvd                         false
% 7.59/1.50  --splitting_cvd_svl                     false
% 7.59/1.50  --splitting_nvd                         32
% 7.59/1.50  --sub_typing                            true
% 7.59/1.50  --prep_gs_sim                           true
% 7.59/1.50  --prep_unflatten                        true
% 7.59/1.50  --prep_res_sim                          true
% 7.59/1.50  --prep_upred                            true
% 7.59/1.50  --prep_sem_filter                       exhaustive
% 7.59/1.50  --prep_sem_filter_out                   false
% 7.59/1.50  --pred_elim                             true
% 7.59/1.50  --res_sim_input                         true
% 7.59/1.50  --eq_ax_congr_red                       true
% 7.59/1.50  --pure_diseq_elim                       true
% 7.59/1.50  --brand_transform                       false
% 7.59/1.50  --non_eq_to_eq                          false
% 7.59/1.50  --prep_def_merge                        true
% 7.59/1.50  --prep_def_merge_prop_impl              false
% 7.59/1.50  --prep_def_merge_mbd                    true
% 7.59/1.50  --prep_def_merge_tr_red                 false
% 7.59/1.50  --prep_def_merge_tr_cl                  false
% 7.59/1.50  --smt_preprocessing                     true
% 7.59/1.50  --smt_ac_axioms                         fast
% 7.59/1.50  --preprocessed_out                      false
% 7.59/1.50  --preprocessed_stats                    false
% 7.59/1.50  
% 7.59/1.50  ------ Abstraction refinement Options
% 7.59/1.50  
% 7.59/1.50  --abstr_ref                             []
% 7.59/1.50  --abstr_ref_prep                        false
% 7.59/1.50  --abstr_ref_until_sat                   false
% 7.59/1.50  --abstr_ref_sig_restrict                funpre
% 7.59/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.59/1.50  --abstr_ref_under                       []
% 7.59/1.50  
% 7.59/1.50  ------ SAT Options
% 7.59/1.50  
% 7.59/1.50  --sat_mode                              false
% 7.59/1.50  --sat_fm_restart_options                ""
% 7.59/1.50  --sat_gr_def                            false
% 7.59/1.50  --sat_epr_types                         true
% 7.59/1.50  --sat_non_cyclic_types                  false
% 7.59/1.50  --sat_finite_models                     false
% 7.59/1.50  --sat_fm_lemmas                         false
% 7.59/1.50  --sat_fm_prep                           false
% 7.59/1.50  --sat_fm_uc_incr                        true
% 7.59/1.50  --sat_out_model                         small
% 7.59/1.50  --sat_out_clauses                       false
% 7.59/1.50  
% 7.59/1.50  ------ QBF Options
% 7.59/1.50  
% 7.59/1.50  --qbf_mode                              false
% 7.59/1.50  --qbf_elim_univ                         false
% 7.59/1.50  --qbf_dom_inst                          none
% 7.59/1.50  --qbf_dom_pre_inst                      false
% 7.59/1.50  --qbf_sk_in                             false
% 7.59/1.50  --qbf_pred_elim                         true
% 7.59/1.50  --qbf_split                             512
% 7.59/1.50  
% 7.59/1.50  ------ BMC1 Options
% 7.59/1.50  
% 7.59/1.50  --bmc1_incremental                      false
% 7.59/1.50  --bmc1_axioms                           reachable_all
% 7.59/1.50  --bmc1_min_bound                        0
% 7.59/1.50  --bmc1_max_bound                        -1
% 7.59/1.50  --bmc1_max_bound_default                -1
% 7.59/1.50  --bmc1_symbol_reachability              true
% 7.59/1.50  --bmc1_property_lemmas                  false
% 7.59/1.50  --bmc1_k_induction                      false
% 7.59/1.50  --bmc1_non_equiv_states                 false
% 7.59/1.50  --bmc1_deadlock                         false
% 7.59/1.50  --bmc1_ucm                              false
% 7.59/1.50  --bmc1_add_unsat_core                   none
% 7.59/1.50  --bmc1_unsat_core_children              false
% 7.59/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.59/1.50  --bmc1_out_stat                         full
% 7.59/1.50  --bmc1_ground_init                      false
% 7.59/1.50  --bmc1_pre_inst_next_state              false
% 7.59/1.50  --bmc1_pre_inst_state                   false
% 7.59/1.50  --bmc1_pre_inst_reach_state             false
% 7.59/1.50  --bmc1_out_unsat_core                   false
% 7.59/1.50  --bmc1_aig_witness_out                  false
% 7.59/1.50  --bmc1_verbose                          false
% 7.59/1.50  --bmc1_dump_clauses_tptp                false
% 7.59/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.59/1.50  --bmc1_dump_file                        -
% 7.59/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.59/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.59/1.50  --bmc1_ucm_extend_mode                  1
% 7.59/1.50  --bmc1_ucm_init_mode                    2
% 7.59/1.50  --bmc1_ucm_cone_mode                    none
% 7.59/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.59/1.50  --bmc1_ucm_relax_model                  4
% 7.59/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.59/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.59/1.50  --bmc1_ucm_layered_model                none
% 7.59/1.50  --bmc1_ucm_max_lemma_size               10
% 7.59/1.50  
% 7.59/1.50  ------ AIG Options
% 7.59/1.50  
% 7.59/1.50  --aig_mode                              false
% 7.59/1.50  
% 7.59/1.50  ------ Instantiation Options
% 7.59/1.50  
% 7.59/1.50  --instantiation_flag                    true
% 7.59/1.50  --inst_sos_flag                         true
% 7.59/1.50  --inst_sos_phase                        true
% 7.59/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.59/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.59/1.50  --inst_lit_sel_side                     none
% 7.59/1.50  --inst_solver_per_active                1400
% 7.59/1.50  --inst_solver_calls_frac                1.
% 7.59/1.50  --inst_passive_queue_type               priority_queues
% 7.59/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.59/1.50  --inst_passive_queues_freq              [25;2]
% 7.59/1.50  --inst_dismatching                      true
% 7.59/1.50  --inst_eager_unprocessed_to_passive     true
% 7.59/1.50  --inst_prop_sim_given                   true
% 7.59/1.50  --inst_prop_sim_new                     false
% 7.59/1.50  --inst_subs_new                         false
% 7.59/1.50  --inst_eq_res_simp                      false
% 7.59/1.50  --inst_subs_given                       false
% 7.59/1.50  --inst_orphan_elimination               true
% 7.59/1.50  --inst_learning_loop_flag               true
% 7.59/1.50  --inst_learning_start                   3000
% 7.59/1.50  --inst_learning_factor                  2
% 7.59/1.50  --inst_start_prop_sim_after_learn       3
% 7.59/1.50  --inst_sel_renew                        solver
% 7.59/1.50  --inst_lit_activity_flag                true
% 7.59/1.50  --inst_restr_to_given                   false
% 7.59/1.50  --inst_activity_threshold               500
% 7.59/1.50  --inst_out_proof                        true
% 7.59/1.50  
% 7.59/1.50  ------ Resolution Options
% 7.59/1.50  
% 7.59/1.50  --resolution_flag                       false
% 7.59/1.50  --res_lit_sel                           adaptive
% 7.59/1.50  --res_lit_sel_side                      none
% 7.59/1.50  --res_ordering                          kbo
% 7.59/1.50  --res_to_prop_solver                    active
% 7.59/1.50  --res_prop_simpl_new                    false
% 7.59/1.50  --res_prop_simpl_given                  true
% 7.59/1.50  --res_passive_queue_type                priority_queues
% 7.59/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.59/1.50  --res_passive_queues_freq               [15;5]
% 7.59/1.50  --res_forward_subs                      full
% 7.59/1.50  --res_backward_subs                     full
% 7.59/1.50  --res_forward_subs_resolution           true
% 7.59/1.50  --res_backward_subs_resolution          true
% 7.59/1.50  --res_orphan_elimination                true
% 7.59/1.50  --res_time_limit                        2.
% 7.59/1.50  --res_out_proof                         true
% 7.59/1.50  
% 7.59/1.50  ------ Superposition Options
% 7.59/1.50  
% 7.59/1.50  --superposition_flag                    true
% 7.59/1.50  --sup_passive_queue_type                priority_queues
% 7.59/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.59/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.59/1.50  --demod_completeness_check              fast
% 7.59/1.50  --demod_use_ground                      true
% 7.59/1.50  --sup_to_prop_solver                    passive
% 7.59/1.50  --sup_prop_simpl_new                    true
% 7.59/1.50  --sup_prop_simpl_given                  true
% 7.59/1.50  --sup_fun_splitting                     true
% 7.59/1.50  --sup_smt_interval                      50000
% 7.59/1.50  
% 7.59/1.50  ------ Superposition Simplification Setup
% 7.59/1.50  
% 7.59/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.59/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.59/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.59/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.59/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.59/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.59/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.59/1.50  --sup_immed_triv                        [TrivRules]
% 7.59/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_immed_bw_main                     []
% 7.59/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.59/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.59/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.59/1.50  --sup_input_bw                          []
% 7.59/1.50  
% 7.59/1.50  ------ Combination Options
% 7.59/1.50  
% 7.59/1.50  --comb_res_mult                         3
% 7.59/1.50  --comb_sup_mult                         2
% 7.59/1.50  --comb_inst_mult                        10
% 7.59/1.50  
% 7.59/1.50  ------ Debug Options
% 7.59/1.50  
% 7.59/1.50  --dbg_backtrace                         false
% 7.59/1.50  --dbg_dump_prop_clauses                 false
% 7.59/1.50  --dbg_dump_prop_clauses_file            -
% 7.59/1.50  --dbg_out_stat                          false
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  ------ Proving...
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  % SZS status Theorem for theBenchmark.p
% 7.59/1.50  
% 7.59/1.50  % SZS output start CNFRefutation for theBenchmark.p
% 7.59/1.50  
% 7.59/1.50  fof(f9,axiom,(
% 7.59/1.50    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f38,plain,(
% 7.59/1.50    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 7.59/1.50    inference(cnf_transformation,[],[f9])).
% 7.59/1.50  
% 7.59/1.50  fof(f8,axiom,(
% 7.59/1.50    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f37,plain,(
% 7.59/1.50    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f8])).
% 7.59/1.50  
% 7.59/1.50  fof(f17,conjecture,(
% 7.59/1.50    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f18,negated_conjecture,(
% 7.59/1.50    ~! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 7.59/1.50    inference(negated_conjecture,[],[f17])).
% 7.59/1.50  
% 7.59/1.50  fof(f21,plain,(
% 7.59/1.50    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)),
% 7.59/1.50    inference(ennf_transformation,[],[f18])).
% 7.59/1.50  
% 7.59/1.50  fof(f28,plain,(
% 7.59/1.50    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) => k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2)),
% 7.59/1.50    introduced(choice_axiom,[])).
% 7.59/1.50  
% 7.59/1.50  fof(f29,plain,(
% 7.59/1.50    k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2)),
% 7.59/1.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f21,f28])).
% 7.59/1.50  
% 7.59/1.50  fof(f52,plain,(
% 7.59/1.50    k1_xboole_0 = k2_xboole_0(k1_tarski(sK1),sK2)),
% 7.59/1.50    inference(cnf_transformation,[],[f29])).
% 7.59/1.50  
% 7.59/1.50  fof(f10,axiom,(
% 7.59/1.50    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f39,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f10])).
% 7.59/1.50  
% 7.59/1.50  fof(f3,axiom,(
% 7.59/1.50    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f32,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f3])).
% 7.59/1.50  
% 7.59/1.50  fof(f53,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 7.59/1.50    inference(definition_unfolding,[],[f39,f32])).
% 7.59/1.50  
% 7.59/1.50  fof(f12,axiom,(
% 7.59/1.50    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f46,plain,(
% 7.59/1.50    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f12])).
% 7.59/1.50  
% 7.59/1.50  fof(f13,axiom,(
% 7.59/1.50    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f47,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f13])).
% 7.59/1.50  
% 7.59/1.50  fof(f14,axiom,(
% 7.59/1.50    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f48,plain,(
% 7.59/1.50    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f14])).
% 7.59/1.50  
% 7.59/1.50  fof(f54,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 7.59/1.50    inference(definition_unfolding,[],[f47,f48])).
% 7.59/1.50  
% 7.59/1.50  fof(f55,plain,(
% 7.59/1.50    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 7.59/1.50    inference(definition_unfolding,[],[f46,f54])).
% 7.59/1.50  
% 7.59/1.50  fof(f68,plain,(
% 7.59/1.50    k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0),
% 7.59/1.50    inference(definition_unfolding,[],[f52,f53,f55])).
% 7.59/1.50  
% 7.59/1.50  fof(f1,axiom,(
% 7.59/1.50    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f30,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f1])).
% 7.59/1.50  
% 7.59/1.50  fof(f7,axiom,(
% 7.59/1.50    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f36,plain,(
% 7.59/1.50    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 7.59/1.50    inference(cnf_transformation,[],[f7])).
% 7.59/1.50  
% 7.59/1.50  fof(f6,axiom,(
% 7.59/1.50    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f35,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 7.59/1.50    inference(cnf_transformation,[],[f6])).
% 7.59/1.50  
% 7.59/1.50  fof(f58,plain,(
% 7.59/1.50    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) )),
% 7.59/1.50    inference(definition_unfolding,[],[f35,f53,f53,f32])).
% 7.59/1.50  
% 7.59/1.50  fof(f15,axiom,(
% 7.59/1.50    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f27,plain,(
% 7.59/1.50    ! [X0,X1] : ((k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) | r2_hidden(X0,X1)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)))),
% 7.59/1.50    inference(nnf_transformation,[],[f15])).
% 7.59/1.50  
% 7.59/1.50  fof(f49,plain,(
% 7.59/1.50    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) )),
% 7.59/1.50    inference(cnf_transformation,[],[f27])).
% 7.59/1.50  
% 7.59/1.50  fof(f66,plain,(
% 7.59/1.50    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0)) )),
% 7.59/1.50    inference(definition_unfolding,[],[f49,f32,f55,f55])).
% 7.59/1.50  
% 7.59/1.50  fof(f11,axiom,(
% 7.59/1.50    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 7.59/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.59/1.50  
% 7.59/1.50  fof(f22,plain,(
% 7.59/1.50    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 7.59/1.50    inference(nnf_transformation,[],[f11])).
% 7.59/1.50  
% 7.59/1.50  fof(f23,plain,(
% 7.59/1.50    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 7.59/1.50    inference(flattening,[],[f22])).
% 7.59/1.50  
% 7.59/1.50  fof(f24,plain,(
% 7.59/1.50    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 7.59/1.50    inference(rectify,[],[f23])).
% 7.59/1.50  
% 7.59/1.50  fof(f25,plain,(
% 7.59/1.50    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK0(X0,X1,X2) != X1 & sK0(X0,X1,X2) != X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (sK0(X0,X1,X2) = X1 | sK0(X0,X1,X2) = X0 | r2_hidden(sK0(X0,X1,X2),X2))))),
% 7.59/1.50    introduced(choice_axiom,[])).
% 7.59/1.50  
% 7.59/1.50  fof(f26,plain,(
% 7.59/1.50    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK0(X0,X1,X2) != X1 & sK0(X0,X1,X2) != X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (sK0(X0,X1,X2) = X1 | sK0(X0,X1,X2) = X0 | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 7.59/1.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).
% 7.59/1.50  
% 7.59/1.50  fof(f41,plain,(
% 7.59/1.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_tarski(X0,X1) != X2) )),
% 7.59/1.50    inference(cnf_transformation,[],[f26])).
% 7.59/1.50  
% 7.59/1.50  fof(f63,plain,(
% 7.59/1.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_enumset1(X0,X0,X0,X1) != X2) )),
% 7.59/1.50    inference(definition_unfolding,[],[f41,f54])).
% 7.59/1.50  
% 7.59/1.50  fof(f71,plain,(
% 7.59/1.50    ( ! [X4,X2,X1] : (r2_hidden(X4,X2) | k2_enumset1(X4,X4,X4,X1) != X2) )),
% 7.59/1.50    inference(equality_resolution,[],[f63])).
% 7.59/1.50  
% 7.59/1.50  fof(f72,plain,(
% 7.59/1.50    ( ! [X4,X1] : (r2_hidden(X4,k2_enumset1(X4,X4,X4,X1))) )),
% 7.59/1.50    inference(equality_resolution,[],[f71])).
% 7.59/1.50  
% 7.59/1.50  cnf(c_7,plain,
% 7.59/1.50      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 7.59/1.50      inference(cnf_transformation,[],[f38]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_6,plain,
% 7.59/1.50      ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
% 7.59/1.50      inference(cnf_transformation,[],[f37]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_17,negated_conjecture,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0 ),
% 7.59/1.50      inference(cnf_transformation,[],[f68]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_0,plain,
% 7.59/1.50      ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
% 7.59/1.50      inference(cnf_transformation,[],[f30]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_361,negated_conjecture,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) = k1_xboole_0 ),
% 7.59/1.50      inference(theory_normalisation,[status(thm)],[c_17,c_6,c_0]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1220,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),X0)) = k5_xboole_0(k1_xboole_0,X0) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_361,c_6]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_5,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 7.59/1.50      inference(cnf_transformation,[],[f36]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_927,plain,
% 7.59/1.50      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_5,c_0]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1229,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),X0)) = X0 ),
% 7.59/1.50      inference(light_normalisation,[status(thm)],[c_1220,c_927]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1556,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),X0))) = X0 ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_6,c_1229]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1629,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k1_xboole_0)) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_7,c_1556]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1722,plain,
% 7.59/1.50      ( k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) = k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_1629,c_5]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_4,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
% 7.59/1.50      inference(cnf_transformation,[],[f58]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_362,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
% 7.59/1.50      inference(theory_normalisation,[status(thm)],[c_4,c_6,c_0]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_17958,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1))))) = k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_1722,c_362]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_17960,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)),k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1))))) = k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)))) ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_17958,c_1722]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1219,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_7,c_6]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1230,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_1219,c_927]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1557,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))) = k5_xboole_0(sK2,k1_xboole_0) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_7,c_1229]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1564,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))) = sK2 ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_1557,c_5]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1569,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(sK2,X0)) = X0 ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_1564,c_1229]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_1604,plain,
% 7.59/1.50      ( k5_xboole_0(sK2,k5_xboole_0(k5_xboole_0(sK2,X0),X1)) = k5_xboole_0(X0,X1) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_1569,c_6]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_657,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X0,X2)) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_6,c_0]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_3980,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_7,c_657]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_4063,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_3980,c_5]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_5754,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(sK2,X0))) = k5_xboole_0(sK2,X1) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_4063,c_1604]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_9070,plain,
% 7.59/1.50      ( k5_xboole_0(X0,k5_xboole_0(sK2,k5_xboole_0(X1,X0))) = k5_xboole_0(sK2,X1) ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_657,c_5754]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_17961,plain,
% 7.59/1.50      ( k3_xboole_0(k5_xboole_0(sK2,k5_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
% 7.59/1.50      inference(demodulation,
% 7.59/1.50                [status(thm)],
% 7.59/1.50                [c_17960,c_7,c_1230,c_1604,c_9070]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_17962,plain,
% 7.59/1.50      ( k3_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_17961,c_1569]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_15,plain,
% 7.59/1.50      ( ~ r2_hidden(X0,X1)
% 7.59/1.50      | k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0) ),
% 7.59/1.50      inference(cnf_transformation,[],[f66]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_637,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k3_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) != k2_enumset1(X0,X0,X0,X0)
% 7.59/1.50      | r2_hidden(X0,X1) != iProver_top ),
% 7.59/1.50      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_18353,plain,
% 7.59/1.50      ( k5_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k1_xboole_0) != k2_enumset1(sK1,sK1,sK1,sK1)
% 7.59/1.50      | r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 7.59/1.50      inference(superposition,[status(thm)],[c_17962,c_637]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_18354,plain,
% 7.59/1.50      ( k2_enumset1(sK1,sK1,sK1,sK1) != k2_enumset1(sK1,sK1,sK1,sK1)
% 7.59/1.50      | r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 7.59/1.50      inference(demodulation,[status(thm)],[c_18353,c_5]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_18355,plain,
% 7.59/1.50      ( r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 7.59/1.50      inference(equality_resolution_simp,[status(thm)],[c_18354]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_12,plain,
% 7.59/1.50      ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
% 7.59/1.50      inference(cnf_transformation,[],[f72]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_28,plain,
% 7.59/1.50      ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
% 7.59/1.50      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(c_30,plain,
% 7.59/1.50      ( r2_hidden(sK1,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
% 7.59/1.50      inference(instantiation,[status(thm)],[c_28]) ).
% 7.59/1.50  
% 7.59/1.50  cnf(contradiction,plain,
% 7.59/1.50      ( $false ),
% 7.59/1.50      inference(minisat,[status(thm)],[c_18355,c_30]) ).
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  % SZS output end CNFRefutation for theBenchmark.p
% 7.59/1.50  
% 7.59/1.50  ------                               Statistics
% 7.59/1.50  
% 7.59/1.50  ------ General
% 7.59/1.50  
% 7.59/1.50  abstr_ref_over_cycles:                  0
% 7.59/1.50  abstr_ref_under_cycles:                 0
% 7.59/1.50  gc_basic_clause_elim:                   0
% 7.59/1.50  forced_gc_time:                         0
% 7.59/1.50  parsing_time:                           0.028
% 7.59/1.50  unif_index_cands_time:                  0.
% 7.59/1.50  unif_index_add_time:                    0.
% 7.59/1.50  orderings_time:                         0.
% 7.59/1.50  out_proof_time:                         0.006
% 7.59/1.50  total_time:                             0.677
% 7.59/1.50  num_of_symbols:                         41
% 7.59/1.50  num_of_terms:                           27086
% 7.59/1.50  
% 7.59/1.50  ------ Preprocessing
% 7.59/1.50  
% 7.59/1.50  num_of_splits:                          0
% 7.59/1.50  num_of_split_atoms:                     0
% 7.59/1.50  num_of_reused_defs:                     0
% 7.59/1.50  num_eq_ax_congr_red:                    8
% 7.59/1.50  num_of_sem_filtered_clauses:            1
% 7.59/1.50  num_of_subtypes:                        0
% 7.59/1.50  monotx_restored_types:                  0
% 7.59/1.50  sat_num_of_epr_types:                   0
% 7.59/1.50  sat_num_of_non_cyclic_types:            0
% 7.59/1.50  sat_guarded_non_collapsed_types:        0
% 7.59/1.50  num_pure_diseq_elim:                    0
% 7.59/1.50  simp_replaced_by:                       0
% 7.59/1.50  res_preprocessed:                       71
% 7.59/1.50  prep_upred:                             0
% 7.59/1.50  prep_unflattend:                        22
% 7.59/1.50  smt_new_axioms:                         0
% 7.59/1.50  pred_elim_cands:                        2
% 7.59/1.50  pred_elim:                              0
% 7.59/1.50  pred_elim_cl:                           0
% 7.59/1.50  pred_elim_cycles:                       2
% 7.59/1.50  merged_defs:                            6
% 7.59/1.50  merged_defs_ncl:                        0
% 7.59/1.50  bin_hyper_res:                          6
% 7.59/1.50  prep_cycles:                            3
% 7.59/1.50  pred_elim_time:                         0.003
% 7.59/1.50  splitting_time:                         0.
% 7.59/1.50  sem_filter_time:                        0.
% 7.59/1.50  monotx_time:                            0.
% 7.59/1.50  subtype_inf_time:                       0.
% 7.59/1.50  
% 7.59/1.50  ------ Problem properties
% 7.59/1.50  
% 7.59/1.50  clauses:                                18
% 7.59/1.50  conjectures:                            1
% 7.59/1.50  epr:                                    0
% 7.59/1.50  horn:                                   15
% 7.59/1.50  ground:                                 1
% 7.59/1.50  unary:                                  11
% 7.59/1.50  binary:                                 3
% 7.59/1.50  lits:                                   30
% 7.59/1.50  lits_eq:                                20
% 7.59/1.50  fd_pure:                                0
% 7.59/1.50  fd_pseudo:                              0
% 7.59/1.50  fd_cond:                                0
% 7.59/1.50  fd_pseudo_cond:                         3
% 7.59/1.50  ac_symbols:                             1
% 7.59/1.50  
% 7.59/1.50  ------ Propositional Solver
% 7.59/1.50  
% 7.59/1.50  prop_solver_calls:                      26
% 7.59/1.50  prop_fast_solver_calls:                 454
% 7.59/1.50  smt_solver_calls:                       0
% 7.59/1.50  smt_fast_solver_calls:                  0
% 7.59/1.50  prop_num_of_clauses:                    4962
% 7.59/1.50  prop_preprocess_simplified:             11523
% 7.59/1.50  prop_fo_subsumed:                       0
% 7.59/1.50  prop_solver_time:                       0.
% 7.59/1.50  smt_solver_time:                        0.
% 7.59/1.50  smt_fast_solver_time:                   0.
% 7.59/1.50  prop_fast_solver_time:                  0.
% 7.59/1.50  prop_unsat_core_time:                   0.
% 7.59/1.50  
% 7.59/1.50  ------ QBF
% 7.59/1.50  
% 7.59/1.50  qbf_q_res:                              0
% 7.59/1.50  qbf_num_tautologies:                    0
% 7.59/1.50  qbf_prep_cycles:                        0
% 7.59/1.50  
% 7.59/1.50  ------ BMC1
% 7.59/1.50  
% 7.59/1.50  bmc1_current_bound:                     -1
% 7.59/1.50  bmc1_last_solved_bound:                 -1
% 7.59/1.50  bmc1_unsat_core_size:                   -1
% 7.59/1.50  bmc1_unsat_core_parents_size:           -1
% 7.59/1.50  bmc1_merge_next_fun:                    0
% 7.59/1.50  bmc1_unsat_core_clauses_time:           0.
% 7.59/1.50  
% 7.59/1.50  ------ Instantiation
% 7.59/1.50  
% 7.59/1.50  inst_num_of_clauses:                    1578
% 7.59/1.50  inst_num_in_passive:                    1011
% 7.59/1.50  inst_num_in_active:                     304
% 7.59/1.50  inst_num_in_unprocessed:                265
% 7.59/1.50  inst_num_of_loops:                      490
% 7.59/1.50  inst_num_of_learning_restarts:          0
% 7.59/1.50  inst_num_moves_active_passive:          183
% 7.59/1.50  inst_lit_activity:                      0
% 7.59/1.50  inst_lit_activity_moves:                0
% 7.59/1.50  inst_num_tautologies:                   0
% 7.59/1.50  inst_num_prop_implied:                  0
% 7.59/1.50  inst_num_existing_simplified:           0
% 7.59/1.50  inst_num_eq_res_simplified:             0
% 7.59/1.50  inst_num_child_elim:                    0
% 7.59/1.50  inst_num_of_dismatching_blockings:      2620
% 7.59/1.50  inst_num_of_non_proper_insts:           2397
% 7.59/1.50  inst_num_of_duplicates:                 0
% 7.59/1.50  inst_inst_num_from_inst_to_res:         0
% 7.59/1.50  inst_dismatching_checking_time:         0.
% 7.59/1.50  
% 7.59/1.50  ------ Resolution
% 7.59/1.50  
% 7.59/1.50  res_num_of_clauses:                     0
% 7.59/1.50  res_num_in_passive:                     0
% 7.59/1.50  res_num_in_active:                      0
% 7.59/1.50  res_num_of_loops:                       74
% 7.59/1.50  res_forward_subset_subsumed:            124
% 7.59/1.50  res_backward_subset_subsumed:           4
% 7.59/1.50  res_forward_subsumed:                   0
% 7.59/1.50  res_backward_subsumed:                  0
% 7.59/1.50  res_forward_subsumption_resolution:     0
% 7.59/1.50  res_backward_subsumption_resolution:    0
% 7.59/1.50  res_clause_to_clause_subsumption:       7041
% 7.59/1.50  res_orphan_elimination:                 0
% 7.59/1.50  res_tautology_del:                      94
% 7.59/1.50  res_num_eq_res_simplified:              0
% 7.59/1.50  res_num_sel_changes:                    0
% 7.59/1.50  res_moves_from_active_to_pass:          0
% 7.59/1.50  
% 7.59/1.50  ------ Superposition
% 7.59/1.50  
% 7.59/1.50  sup_time_total:                         0.
% 7.59/1.50  sup_time_generating:                    0.
% 7.59/1.50  sup_time_sim_full:                      0.
% 7.59/1.50  sup_time_sim_immed:                     0.
% 7.59/1.50  
% 7.59/1.50  sup_num_of_clauses:                     702
% 7.59/1.50  sup_num_in_active:                      79
% 7.59/1.50  sup_num_in_passive:                     623
% 7.59/1.50  sup_num_of_loops:                       96
% 7.59/1.50  sup_fw_superposition:                   1990
% 7.59/1.50  sup_bw_superposition:                   1773
% 7.59/1.50  sup_immediate_simplified:               1561
% 7.59/1.50  sup_given_eliminated:                   3
% 7.59/1.50  comparisons_done:                       0
% 7.59/1.50  comparisons_avoided:                    4
% 7.59/1.50  
% 7.59/1.50  ------ Simplifications
% 7.59/1.50  
% 7.59/1.50  
% 7.59/1.50  sim_fw_subset_subsumed:                 0
% 7.59/1.50  sim_bw_subset_subsumed:                 0
% 7.59/1.50  sim_fw_subsumed:                        248
% 7.59/1.50  sim_bw_subsumed:                        5
% 7.59/1.50  sim_fw_subsumption_res:                 0
% 7.59/1.50  sim_bw_subsumption_res:                 0
% 7.59/1.50  sim_tautology_del:                      0
% 7.59/1.50  sim_eq_tautology_del:                   477
% 7.59/1.50  sim_eq_res_simp:                        2
% 7.59/1.50  sim_fw_demodulated:                     1089
% 7.59/1.50  sim_bw_demodulated:                     40
% 7.59/1.50  sim_light_normalised:                   613
% 7.59/1.50  sim_joinable_taut:                      109
% 7.59/1.50  sim_joinable_simp:                      0
% 7.59/1.50  sim_ac_normalised:                      0
% 7.59/1.50  sim_smt_subsumption:                    0
% 7.59/1.50  
%------------------------------------------------------------------------------
