%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:41:01 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   94 ( 416 expanded)
%              Number of leaves         :   17 ( 124 expanded)
%              Depth                    :   19
%              Number of atoms          :  267 (1369 expanded)
%              Number of equality atoms :   75 ( 365 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f319,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f81,f83,f195,f318])).

fof(f318,plain,
    ( ~ spl4_1
    | ~ spl4_2 ),
    inference(avatar_contradiction_clause,[],[f317])).

fof(f317,plain,
    ( $false
    | ~ spl4_1
    | ~ spl4_2 ),
    inference(subsumption_resolution,[],[f316,f76])).

fof(f76,plain,
    ( r2_hidden(sK0,sK1)
    | ~ spl4_1 ),
    inference(avatar_component_clause,[],[f74])).

fof(f74,plain,
    ( spl4_1
  <=> r2_hidden(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).

fof(f316,plain,
    ( ~ r2_hidden(sK0,sK1)
    | ~ spl4_2 ),
    inference(subsumption_resolution,[],[f307,f219])).

fof(f219,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(backward_demodulation,[],[f62,f210])).

fof(f210,plain,(
    ! [X4] : k1_xboole_0 = k3_xboole_0(X4,k1_xboole_0) ),
    inference(resolution,[],[f207,f36])).

fof(f36,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f16,f21])).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f207,plain,(
    ! [X2,X3] : ~ r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0)) ),
    inference(subsumption_resolution,[],[f206,f70])).

fof(f70,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,k3_xboole_0(X0,X1))
      | r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f43])).

fof(f43,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ( ( ~ r2_hidden(sK3(X0,X1,X2),X1)
            | ~ r2_hidden(sK3(X0,X1,X2),X0)
            | ~ r2_hidden(sK3(X0,X1,X2),X2) )
          & ( ( r2_hidden(sK3(X0,X1,X2),X1)
              & r2_hidden(sK3(X0,X1,X2),X0) )
            | r2_hidden(sK3(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f26,f27])).

fof(f27,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(sK3(X0,X1,X2),X1)
          | ~ r2_hidden(sK3(X0,X1,X2),X0)
          | ~ r2_hidden(sK3(X0,X1,X2),X2) )
        & ( ( r2_hidden(sK3(X0,X1,X2),X1)
            & r2_hidden(sK3(X0,X1,X2),X0) )
          | r2_hidden(sK3(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_xboole_0)).

fof(f206,plain,(
    ! [X2,X3] :
      ( ~ r2_hidden(X3,X2)
      | ~ r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0)) ) ),
    inference(duplicate_literal_removal,[],[f202])).

fof(f202,plain,(
    ! [X2,X3] :
      ( ~ r2_hidden(X3,X2)
      | ~ r2_hidden(X3,X2)
      | ~ r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0)) ) ),
    inference(superposition,[],[f50,f62])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k5_xboole_0(X1,X2))
      | ~ r2_hidden(X0,X1)
      | ~ r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k5_xboole_0(X1,X2))
        | ( ( r2_hidden(X0,X1)
            | ~ r2_hidden(X0,X2) )
          & ( r2_hidden(X0,X2)
            | ~ r2_hidden(X0,X1) ) ) )
      & ( ( ( ~ r2_hidden(X0,X2)
            | ~ r2_hidden(X0,X1) )
          & ( r2_hidden(X0,X2)
            | r2_hidden(X0,X1) ) )
        | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k5_xboole_0(X1,X2))
    <=> ( r2_hidden(X0,X1)
      <~> r2_hidden(X0,X2) ) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k5_xboole_0(X1,X2))
    <=> ~ ( r2_hidden(X0,X1)
        <=> r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_0)).

fof(f62,plain,(
    ! [X0] : k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f34,f39])).

fof(f39,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f34,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(f307,plain,
    ( sK1 != k5_xboole_0(sK1,k1_xboole_0)
    | ~ r2_hidden(sK0,sK1)
    | ~ spl4_2 ),
    inference(superposition,[],[f64,f285])).

fof(f285,plain,
    ( k1_xboole_0 = k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
    | ~ spl4_2 ),
    inference(resolution,[],[f273,f36])).

fof(f273,plain,
    ( ! [X1] : ~ r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | ~ spl4_2 ),
    inference(subsumption_resolution,[],[f272,f69])).

% (22456)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
fof(f69,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,k3_xboole_0(X0,X1))
      | r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f44])).

fof(f44,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f272,plain,
    ( ! [X1] :
        ( ~ r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
        | ~ r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) )
    | ~ spl4_2 ),
    inference(duplicate_literal_removal,[],[f268])).

fof(f268,plain,
    ( ! [X1] :
        ( ~ r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
        | ~ r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
        | ~ r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) )
    | ~ spl4_2 ),
    inference(superposition,[],[f50,f79])).

fof(f79,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | ~ spl4_2 ),
    inference(avatar_component_clause,[],[f78])).

fof(f78,plain,
    ( spl4_2
  <=> k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).

fof(f64,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) != X0
      | ~ r2_hidden(X1,X0) ) ),
    inference(definition_unfolding,[],[f40,f39,f59])).

fof(f59,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f35,f58])).

fof(f58,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f38,f57])).

fof(f57,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f42,f56])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f42,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f38,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f35,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,k1_tarski(X1)) = X0
        | r2_hidden(X1,X0) )
      & ( ~ r2_hidden(X1,X0)
        | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_zfmisc_1)).

fof(f195,plain,
    ( spl4_1
    | spl4_2 ),
    inference(avatar_contradiction_clause,[],[f194])).

fof(f194,plain,
    ( $false
    | spl4_1
    | spl4_2 ),
    inference(trivial_inequality_removal,[],[f193])).

fof(f193,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k3_enumset1(sK0,sK0,sK0,sK0,sK0)
    | spl4_1
    | spl4_2 ),
    inference(superposition,[],[f106,f185])).

fof(f185,plain,
    ( ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0
    | spl4_1 ),
    inference(backward_demodulation,[],[f62,f172])).

fof(f172,plain,
    ( ! [X1] : k1_xboole_0 = k3_xboole_0(X1,k1_xboole_0)
    | spl4_1 ),
    inference(superposition,[],[f159,f37])).

fof(f37,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f159,plain,
    ( ! [X16] : k1_xboole_0 = k3_xboole_0(k1_xboole_0,X16)
    | spl4_1 ),
    inference(resolution,[],[f109,f104])).

fof(f104,plain,
    ( ! [X3] : ~ r2_hidden(X3,k1_xboole_0)
    | spl4_1 ),
    inference(backward_demodulation,[],[f96,f97])).

fof(f97,plain,
    ( k1_xboole_0 = k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
    | spl4_1 ),
    inference(resolution,[],[f96,f36])).

fof(f96,plain,
    ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | spl4_1 ),
    inference(subsumption_resolution,[],[f94,f70])).

fof(f94,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,sK1)
        | ~ r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) )
    | spl4_1 ),
    inference(duplicate_literal_removal,[],[f90])).

fof(f90,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,sK1)
        | ~ r2_hidden(X3,sK1)
        | ~ r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) )
    | spl4_1 ),
    inference(superposition,[],[f50,f84])).

fof(f84,plain,
    ( sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | spl4_1 ),
    inference(resolution,[],[f75,f63])).

fof(f63,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) = X0 ) ),
    inference(definition_unfolding,[],[f41,f39,f59])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
      | r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f75,plain,
    ( ~ r2_hidden(sK0,sK1)
    | spl4_1 ),
    inference(avatar_component_clause,[],[f74])).

fof(f109,plain,
    ( ! [X2,X3] :
        ( r2_hidden(sK3(X2,X3,k1_xboole_0),X2)
        | k1_xboole_0 = k3_xboole_0(X2,X3) )
    | spl4_1 ),
    inference(forward_demodulation,[],[f108,f97])).

fof(f108,plain,
    ( ! [X2,X3] :
        ( r2_hidden(sK3(X2,X3,k1_xboole_0),X2)
        | k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) = k3_xboole_0(X2,X3) )
    | spl4_1 ),
    inference(forward_demodulation,[],[f100,f97])).

fof(f100,plain,
    ( ! [X2,X3] :
        ( r2_hidden(sK3(X2,X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))),X2)
        | k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) = k3_xboole_0(X2,X3) )
    | spl4_1 ),
    inference(resolution,[],[f96,f46])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK3(X0,X1,X2),X2)
      | r2_hidden(sK3(X0,X1,X2),X0)
      | k3_xboole_0(X0,X1) = X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f106,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k1_xboole_0)
    | spl4_1
    | spl4_2 ),
    inference(backward_demodulation,[],[f80,f97])).

fof(f80,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | spl4_2 ),
    inference(avatar_component_clause,[],[f78])).

fof(f83,plain,
    ( ~ spl4_1
    | spl4_2 ),
    inference(avatar_split_clause,[],[f82,f78,f74])).

fof(f82,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | ~ r2_hidden(sK0,sK1) ),
    inference(forward_demodulation,[],[f61,f37])).

fof(f61,plain,
    ( ~ r2_hidden(sK0,sK1)
    | k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f32,f59,f39,f59])).

fof(f32,plain,
    ( ~ r2_hidden(sK0,sK1)
    | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,
    ( ( r2_hidden(sK0,sK1)
      | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) )
    & ( ~ r2_hidden(sK0,sK1)
      | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f18,f19])).

fof(f19,plain,
    ( ? [X0,X1] :
        ( ( r2_hidden(X0,X1)
          | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1) )
        & ( ~ r2_hidden(X0,X1)
          | k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) ) )
   => ( ( r2_hidden(sK0,sK1)
        | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) )
      & ( ~ r2_hidden(sK0,sK1)
        | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ? [X0,X1] :
      ( ( r2_hidden(X0,X1)
        | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1) )
      & ( ~ r2_hidden(X0,X1)
        | k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ? [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)
    <~> ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)
      <=> ~ r2_hidden(X0,X1) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)
    <=> ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t67_zfmisc_1)).

fof(f81,plain,
    ( spl4_1
    | ~ spl4_2 ),
    inference(avatar_split_clause,[],[f72,f78,f74])).

fof(f72,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))
    | r2_hidden(sK0,sK1) ),
    inference(forward_demodulation,[],[f60,f37])).

fof(f60,plain,
    ( r2_hidden(sK0,sK1)
    | k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f33,f59,f39,f59])).

fof(f33,plain,
    ( r2_hidden(sK0,sK1)
    | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f20])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n008.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 11:49:00 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.22/0.52  % (22429)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.52  % (22432)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.52  % (22433)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.53  % (22435)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.53  % (22452)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.22/0.53  % (22441)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.54  % (22449)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.54  % (22448)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.54  % (22430)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.54  % (22434)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.54  % (22431)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.54  % (22449)Refutation not found, incomplete strategy% (22449)------------------------------
% 0.22/0.54  % (22449)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (22448)Refutation not found, incomplete strategy% (22448)------------------------------
% 0.22/0.54  % (22448)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (22449)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (22449)Memory used [KB]: 10746
% 0.22/0.54  % (22449)Time elapsed: 0.068 s
% 0.22/0.54  % (22449)------------------------------
% 0.22/0.54  % (22449)------------------------------
% 0.22/0.54  % (22443)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.54  % (22427)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.55  % (22455)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.22/0.55  % (22454)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.55  % (22447)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.55  % (22448)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.55  % (22448)Memory used [KB]: 1663
% 0.22/0.55  % (22448)Time elapsed: 0.121 s
% 0.22/0.55  % (22448)------------------------------
% 0.22/0.55  % (22448)------------------------------
% 0.22/0.55  % (22451)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.55  % (22437)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.55  % (22428)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.55  % (22446)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.55  % (22435)Refutation found. Thanks to Tanya!
% 0.22/0.55  % SZS status Theorem for theBenchmark
% 0.22/0.55  % SZS output start Proof for theBenchmark
% 0.22/0.55  fof(f319,plain,(
% 0.22/0.55    $false),
% 0.22/0.55    inference(avatar_sat_refutation,[],[f81,f83,f195,f318])).
% 0.22/0.55  fof(f318,plain,(
% 0.22/0.55    ~spl4_1 | ~spl4_2),
% 0.22/0.55    inference(avatar_contradiction_clause,[],[f317])).
% 0.22/0.55  fof(f317,plain,(
% 0.22/0.55    $false | (~spl4_1 | ~spl4_2)),
% 0.22/0.55    inference(subsumption_resolution,[],[f316,f76])).
% 0.22/0.55  fof(f76,plain,(
% 0.22/0.55    r2_hidden(sK0,sK1) | ~spl4_1),
% 0.22/0.55    inference(avatar_component_clause,[],[f74])).
% 0.22/0.55  fof(f74,plain,(
% 0.22/0.55    spl4_1 <=> r2_hidden(sK0,sK1)),
% 0.22/0.55    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).
% 0.22/0.55  fof(f316,plain,(
% 0.22/0.55    ~r2_hidden(sK0,sK1) | ~spl4_2),
% 0.22/0.55    inference(subsumption_resolution,[],[f307,f219])).
% 0.22/0.55  fof(f219,plain,(
% 0.22/0.55    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.22/0.55    inference(backward_demodulation,[],[f62,f210])).
% 0.22/0.55  fof(f210,plain,(
% 0.22/0.55    ( ! [X4] : (k1_xboole_0 = k3_xboole_0(X4,k1_xboole_0)) )),
% 0.22/0.55    inference(resolution,[],[f207,f36])).
% 0.22/0.55  fof(f36,plain,(
% 0.22/0.55    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 0.22/0.55    inference(cnf_transformation,[],[f22])).
% 0.22/0.55  fof(f22,plain,(
% 0.22/0.55    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 0.22/0.55    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f16,f21])).
% 0.22/0.55  fof(f21,plain,(
% 0.22/0.55    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 0.22/0.55    introduced(choice_axiom,[])).
% 0.22/0.55  fof(f16,plain,(
% 0.22/0.55    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.22/0.55    inference(ennf_transformation,[],[f4])).
% 0.22/0.55  fof(f4,axiom,(
% 0.22/0.55    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.22/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).
% 0.22/0.55  fof(f207,plain,(
% 0.22/0.55    ( ! [X2,X3] : (~r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0))) )),
% 0.22/0.55    inference(subsumption_resolution,[],[f206,f70])).
% 0.22/0.55  fof(f70,plain,(
% 0.22/0.55    ( ! [X4,X0,X1] : (~r2_hidden(X4,k3_xboole_0(X0,X1)) | r2_hidden(X4,X0)) )),
% 0.22/0.55    inference(equality_resolution,[],[f43])).
% 0.22/0.55  fof(f43,plain,(
% 0.22/0.55    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 0.22/0.55    inference(cnf_transformation,[],[f28])).
% 0.22/0.55  fof(f28,plain,(
% 0.22/0.55    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK3(X0,X1,X2),X1) | ~r2_hidden(sK3(X0,X1,X2),X0) | ~r2_hidden(sK3(X0,X1,X2),X2)) & ((r2_hidden(sK3(X0,X1,X2),X1) & r2_hidden(sK3(X0,X1,X2),X0)) | r2_hidden(sK3(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.22/0.55    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f26,f27])).
% 0.22/0.55  fof(f27,plain,(
% 0.22/0.55    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK3(X0,X1,X2),X1) | ~r2_hidden(sK3(X0,X1,X2),X0) | ~r2_hidden(sK3(X0,X1,X2),X2)) & ((r2_hidden(sK3(X0,X1,X2),X1) & r2_hidden(sK3(X0,X1,X2),X0)) | r2_hidden(sK3(X0,X1,X2),X2))))),
% 0.22/0.55    introduced(choice_axiom,[])).
% 0.22/0.55  fof(f26,plain,(
% 0.22/0.55    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.22/0.55    inference(rectify,[],[f25])).
% 0.22/0.55  fof(f25,plain,(
% 0.22/0.55    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.22/0.55    inference(flattening,[],[f24])).
% 0.22/0.55  fof(f24,plain,(
% 0.22/0.55    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 0.22/0.55    inference(nnf_transformation,[],[f2])).
% 0.22/0.55  fof(f2,axiom,(
% 0.22/0.55    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 0.22/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_xboole_0)).
% 0.22/0.55  fof(f206,plain,(
% 0.22/0.55    ( ! [X2,X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0))) )),
% 0.22/0.55    inference(duplicate_literal_removal,[],[f202])).
% 0.22/0.55  fof(f202,plain,(
% 0.22/0.55    ( ! [X2,X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,X2) | ~r2_hidden(X3,k3_xboole_0(X2,k1_xboole_0))) )),
% 0.22/0.55    inference(superposition,[],[f50,f62])).
% 0.22/0.55  fof(f50,plain,(
% 0.22/0.55    ( ! [X2,X0,X1] : (~r2_hidden(X0,k5_xboole_0(X1,X2)) | ~r2_hidden(X0,X1) | ~r2_hidden(X0,X2)) )),
% 0.22/0.55    inference(cnf_transformation,[],[f29])).
% 0.22/0.55  fof(f29,plain,(
% 0.22/0.55    ! [X0,X1,X2] : ((r2_hidden(X0,k5_xboole_0(X1,X2)) | ((r2_hidden(X0,X1) | ~r2_hidden(X0,X2)) & (r2_hidden(X0,X2) | ~r2_hidden(X0,X1)))) & (((~r2_hidden(X0,X2) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X2) | r2_hidden(X0,X1))) | ~r2_hidden(X0,k5_xboole_0(X1,X2))))),
% 0.22/0.55    inference(nnf_transformation,[],[f17])).
% 0.22/0.55  fof(f17,plain,(
% 0.22/0.55    ! [X0,X1,X2] : (r2_hidden(X0,k5_xboole_0(X1,X2)) <=> (r2_hidden(X0,X1) <~> r2_hidden(X0,X2)))),
% 0.22/0.55    inference(ennf_transformation,[],[f3])).
% 0.22/0.55  fof(f3,axiom,(
% 0.22/0.55    ! [X0,X1,X2] : (r2_hidden(X0,k5_xboole_0(X1,X2)) <=> ~(r2_hidden(X0,X1) <=> r2_hidden(X0,X2)))),
% 0.22/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_0)).
% 0.22/0.55  fof(f62,plain,(
% 0.22/0.55    ( ! [X0] : (k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0) )),
% 0.22/0.55    inference(definition_unfolding,[],[f34,f39])).
% 0.22/0.55  fof(f39,plain,(
% 0.22/0.55    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.55    inference(cnf_transformation,[],[f5])).
% 0.22/0.55  fof(f5,axiom,(
% 0.22/0.55    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.22/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.22/0.55  fof(f34,plain,(
% 0.22/0.55    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.22/0.55    inference(cnf_transformation,[],[f6])).
% 0.22/0.55  fof(f6,axiom,(
% 0.22/0.55    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 0.22/0.55    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).
% 0.22/0.55  fof(f307,plain,(
% 0.22/0.55    sK1 != k5_xboole_0(sK1,k1_xboole_0) | ~r2_hidden(sK0,sK1) | ~spl4_2),
% 0.22/0.55    inference(superposition,[],[f64,f285])).
% 0.22/0.56  fof(f285,plain,(
% 0.22/0.56    k1_xboole_0 = k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | ~spl4_2),
% 0.22/0.56    inference(resolution,[],[f273,f36])).
% 0.22/0.56  fof(f273,plain,(
% 0.22/0.56    ( ! [X1] : (~r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | ~spl4_2),
% 0.22/0.56    inference(subsumption_resolution,[],[f272,f69])).
% 0.22/0.56  % (22456)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.22/0.56  fof(f69,plain,(
% 0.22/0.56    ( ! [X4,X0,X1] : (~r2_hidden(X4,k3_xboole_0(X0,X1)) | r2_hidden(X4,X1)) )),
% 0.22/0.56    inference(equality_resolution,[],[f44])).
% 0.22/0.56  fof(f44,plain,(
% 0.22/0.56    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 0.22/0.56    inference(cnf_transformation,[],[f28])).
% 0.22/0.56  fof(f272,plain,(
% 0.22/0.56    ( ! [X1] : (~r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | ~r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | ~spl4_2),
% 0.22/0.56    inference(duplicate_literal_removal,[],[f268])).
% 0.22/0.56  fof(f268,plain,(
% 0.22/0.56    ( ! [X1] : (~r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | ~r2_hidden(X1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | ~r2_hidden(X1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | ~spl4_2),
% 0.22/0.56    inference(superposition,[],[f50,f79])).
% 0.22/0.56  fof(f79,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) | ~spl4_2),
% 0.22/0.56    inference(avatar_component_clause,[],[f78])).
% 0.22/0.56  fof(f78,plain,(
% 0.22/0.56    spl4_2 <=> k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))),
% 0.22/0.56    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).
% 0.22/0.56  fof(f64,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) != X0 | ~r2_hidden(X1,X0)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f40,f39,f59])).
% 0.22/0.56  fof(f59,plain,(
% 0.22/0.56    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f35,f58])).
% 0.22/0.56  fof(f58,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f38,f57])).
% 0.22/0.56  fof(f57,plain,(
% 0.22/0.56    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f42,f56])).
% 0.22/0.56  fof(f56,plain,(
% 0.22/0.56    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f10])).
% 0.22/0.56  fof(f10,axiom,(
% 0.22/0.56    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 0.22/0.56  fof(f42,plain,(
% 0.22/0.56    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f9])).
% 0.22/0.56  fof(f9,axiom,(
% 0.22/0.56    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 0.22/0.56  fof(f38,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f8])).
% 0.22/0.56  fof(f8,axiom,(
% 0.22/0.56    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 0.22/0.56  fof(f35,plain,(
% 0.22/0.56    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f7])).
% 0.22/0.56  fof(f7,axiom,(
% 0.22/0.56    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 0.22/0.56  fof(f40,plain,(
% 0.22/0.56    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f23])).
% 0.22/0.56  fof(f23,plain,(
% 0.22/0.56    ! [X0,X1] : ((k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) & (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0))),
% 0.22/0.56    inference(nnf_transformation,[],[f12])).
% 0.22/0.56  fof(f12,axiom,(
% 0.22/0.56    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_zfmisc_1)).
% 0.22/0.56  fof(f195,plain,(
% 0.22/0.56    spl4_1 | spl4_2),
% 0.22/0.56    inference(avatar_contradiction_clause,[],[f194])).
% 0.22/0.56  fof(f194,plain,(
% 0.22/0.56    $false | (spl4_1 | spl4_2)),
% 0.22/0.56    inference(trivial_inequality_removal,[],[f193])).
% 0.22/0.56  fof(f193,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k3_enumset1(sK0,sK0,sK0,sK0,sK0) | (spl4_1 | spl4_2)),
% 0.22/0.56    inference(superposition,[],[f106,f185])).
% 0.22/0.56  fof(f185,plain,(
% 0.22/0.56    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) ) | spl4_1),
% 0.22/0.56    inference(backward_demodulation,[],[f62,f172])).
% 0.22/0.56  fof(f172,plain,(
% 0.22/0.56    ( ! [X1] : (k1_xboole_0 = k3_xboole_0(X1,k1_xboole_0)) ) | spl4_1),
% 0.22/0.56    inference(superposition,[],[f159,f37])).
% 0.22/0.56  fof(f37,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f1])).
% 0.22/0.56  fof(f1,axiom,(
% 0.22/0.56    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.22/0.56  fof(f159,plain,(
% 0.22/0.56    ( ! [X16] : (k1_xboole_0 = k3_xboole_0(k1_xboole_0,X16)) ) | spl4_1),
% 0.22/0.56    inference(resolution,[],[f109,f104])).
% 0.22/0.56  fof(f104,plain,(
% 0.22/0.56    ( ! [X3] : (~r2_hidden(X3,k1_xboole_0)) ) | spl4_1),
% 0.22/0.56    inference(backward_demodulation,[],[f96,f97])).
% 0.22/0.56  fof(f97,plain,(
% 0.22/0.56    k1_xboole_0 = k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | spl4_1),
% 0.22/0.56    inference(resolution,[],[f96,f36])).
% 0.22/0.56  fof(f96,plain,(
% 0.22/0.56    ( ! [X3] : (~r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | spl4_1),
% 0.22/0.56    inference(subsumption_resolution,[],[f94,f70])).
% 0.22/0.56  fof(f94,plain,(
% 0.22/0.56    ( ! [X3] : (~r2_hidden(X3,sK1) | ~r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | spl4_1),
% 0.22/0.56    inference(duplicate_literal_removal,[],[f90])).
% 0.22/0.56  fof(f90,plain,(
% 0.22/0.56    ( ! [X3] : (~r2_hidden(X3,sK1) | ~r2_hidden(X3,sK1) | ~r2_hidden(X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))) ) | spl4_1),
% 0.22/0.56    inference(superposition,[],[f50,f84])).
% 0.22/0.56  fof(f84,plain,(
% 0.22/0.56    sK1 = k5_xboole_0(sK1,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) | spl4_1),
% 0.22/0.56    inference(resolution,[],[f75,f63])).
% 0.22/0.56  fof(f63,plain,(
% 0.22/0.56    ( ! [X0,X1] : (r2_hidden(X1,X0) | k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) = X0) )),
% 0.22/0.56    inference(definition_unfolding,[],[f41,f39,f59])).
% 0.22/0.56  fof(f41,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f23])).
% 0.22/0.56  fof(f75,plain,(
% 0.22/0.56    ~r2_hidden(sK0,sK1) | spl4_1),
% 0.22/0.56    inference(avatar_component_clause,[],[f74])).
% 0.22/0.56  fof(f109,plain,(
% 0.22/0.56    ( ! [X2,X3] : (r2_hidden(sK3(X2,X3,k1_xboole_0),X2) | k1_xboole_0 = k3_xboole_0(X2,X3)) ) | spl4_1),
% 0.22/0.56    inference(forward_demodulation,[],[f108,f97])).
% 0.22/0.56  fof(f108,plain,(
% 0.22/0.56    ( ! [X2,X3] : (r2_hidden(sK3(X2,X3,k1_xboole_0),X2) | k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) = k3_xboole_0(X2,X3)) ) | spl4_1),
% 0.22/0.56    inference(forward_demodulation,[],[f100,f97])).
% 0.22/0.56  fof(f100,plain,(
% 0.22/0.56    ( ! [X2,X3] : (r2_hidden(sK3(X2,X3,k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))),X2) | k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) = k3_xboole_0(X2,X3)) ) | spl4_1),
% 0.22/0.56    inference(resolution,[],[f96,f46])).
% 0.22/0.56  fof(f46,plain,(
% 0.22/0.56    ( ! [X2,X0,X1] : (r2_hidden(sK3(X0,X1,X2),X2) | r2_hidden(sK3(X0,X1,X2),X0) | k3_xboole_0(X0,X1) = X2) )),
% 0.22/0.56    inference(cnf_transformation,[],[f28])).
% 0.22/0.56  fof(f106,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k1_xboole_0) | (spl4_1 | spl4_2)),
% 0.22/0.56    inference(backward_demodulation,[],[f80,f97])).
% 0.22/0.56  fof(f80,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) | spl4_2),
% 0.22/0.56    inference(avatar_component_clause,[],[f78])).
% 0.22/0.56  fof(f83,plain,(
% 0.22/0.56    ~spl4_1 | spl4_2),
% 0.22/0.56    inference(avatar_split_clause,[],[f82,f78,f74])).
% 0.22/0.56  fof(f82,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) | ~r2_hidden(sK0,sK1)),
% 0.22/0.56    inference(forward_demodulation,[],[f61,f37])).
% 0.22/0.56  fof(f61,plain,(
% 0.22/0.56    ~r2_hidden(sK0,sK1) | k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1))),
% 0.22/0.56    inference(definition_unfolding,[],[f32,f59,f39,f59])).
% 0.22/0.56  fof(f32,plain,(
% 0.22/0.56    ~r2_hidden(sK0,sK1) | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.56    inference(cnf_transformation,[],[f20])).
% 0.22/0.56  fof(f20,plain,(
% 0.22/0.56    (r2_hidden(sK0,sK1) | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)) & (~r2_hidden(sK0,sK1) | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1))),
% 0.22/0.56    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f18,f19])).
% 0.22/0.56  fof(f19,plain,(
% 0.22/0.56    ? [X0,X1] : ((r2_hidden(X0,X1) | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1)) & (~r2_hidden(X0,X1) | k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1))) => ((r2_hidden(sK0,sK1) | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)) & (~r2_hidden(sK0,sK1) | k1_tarski(sK0) = k4_xboole_0(k1_tarski(sK0),sK1)))),
% 0.22/0.56    introduced(choice_axiom,[])).
% 0.22/0.56  fof(f18,plain,(
% 0.22/0.56    ? [X0,X1] : ((r2_hidden(X0,X1) | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1)) & (~r2_hidden(X0,X1) | k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)))),
% 0.22/0.56    inference(nnf_transformation,[],[f15])).
% 0.22/0.56  fof(f15,plain,(
% 0.22/0.56    ? [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) <~> ~r2_hidden(X0,X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f14])).
% 0.22/0.56  fof(f14,negated_conjecture,(
% 0.22/0.56    ~! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) <=> ~r2_hidden(X0,X1))),
% 0.22/0.56    inference(negated_conjecture,[],[f13])).
% 0.22/0.56  fof(f13,conjecture,(
% 0.22/0.56    ! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) <=> ~r2_hidden(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t67_zfmisc_1)).
% 0.22/0.56  fof(f81,plain,(
% 0.22/0.56    spl4_1 | ~spl4_2),
% 0.22/0.56    inference(avatar_split_clause,[],[f72,f78,f74])).
% 0.22/0.56  fof(f72,plain,(
% 0.22/0.56    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) | r2_hidden(sK0,sK1)),
% 0.22/0.56    inference(forward_demodulation,[],[f60,f37])).
% 0.22/0.56  fof(f60,plain,(
% 0.22/0.56    r2_hidden(sK0,sK1) | k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1))),
% 0.22/0.56    inference(definition_unfolding,[],[f33,f59,f39,f59])).
% 0.22/0.56  fof(f33,plain,(
% 0.22/0.56    r2_hidden(sK0,sK1) | k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.56    inference(cnf_transformation,[],[f20])).
% 0.22/0.56  % SZS output end Proof for theBenchmark
% 0.22/0.56  % (22435)------------------------------
% 0.22/0.56  % (22435)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (22435)Termination reason: Refutation
% 0.22/0.56  
% 0.22/0.56  % (22435)Memory used [KB]: 10746
% 0.22/0.56  % (22435)Time elapsed: 0.138 s
% 0.22/0.56  % (22435)------------------------------
% 0.22/0.56  % (22435)------------------------------
% 0.22/0.56  % (22445)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.22/0.56  % (22422)Success in time 0.189 s
%------------------------------------------------------------------------------
