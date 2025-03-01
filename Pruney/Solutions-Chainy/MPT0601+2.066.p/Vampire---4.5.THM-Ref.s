%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:51:16 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 200 expanded)
%              Number of leaves         :   17 (  66 expanded)
%              Depth                    :   15
%              Number of atoms          :  197 ( 702 expanded)
%              Number of equality atoms :   48 ( 171 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f107,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f60,f61,f85,f106])).

fof(f106,plain,
    ( ~ spl5_1
    | ~ spl5_2 ),
    inference(avatar_contradiction_clause,[],[f105])).

fof(f105,plain,
    ( $false
    | ~ spl5_1
    | ~ spl5_2 ),
    inference(subsumption_resolution,[],[f102,f30])).

fof(f30,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).

fof(f102,plain,
    ( ! [X0] : ~ r1_xboole_0(k6_enumset1(sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),X0),k1_xboole_0)
    | ~ spl5_1
    | ~ spl5_2 ),
    inference(unit_resulting_resolution,[],[f97,f49])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,X2)
      | ~ r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1),X2) ) ),
    inference(definition_unfolding,[],[f39,f48])).

fof(f48,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f31,f47])).

fof(f47,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f36,f46])).

fof(f46,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f40,f45])).

fof(f45,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f41,f44])).

fof(f44,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f42,f43])).

fof(f43,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(f42,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(f41,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(f40,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f36,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f31,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,X2)
      | ~ r1_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ~ r2_hidden(X0,X2)
      | ~ r1_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ~ ( r2_hidden(X0,X2)
        & r1_xboole_0(k2_tarski(X0,X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_zfmisc_1)).

fof(f97,plain,
    ( r2_hidden(sK4(sK1,sK0),k1_xboole_0)
    | ~ spl5_1
    | ~ spl5_2 ),
    inference(forward_demodulation,[],[f94,f59])).

fof(f59,plain,
    ( k1_xboole_0 = k11_relat_1(sK1,sK0)
    | ~ spl5_2 ),
    inference(avatar_component_clause,[],[f57])).

fof(f57,plain,
    ( spl5_2
  <=> k1_xboole_0 = k11_relat_1(sK1,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_2])])).

fof(f94,plain,
    ( r2_hidden(sK4(sK1,sK0),k11_relat_1(sK1,sK0))
    | ~ spl5_1 ),
    inference(unit_resulting_resolution,[],[f27,f86,f37])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,k11_relat_1(X2,X0))
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(k4_tarski(X0,X1),X2)
          | ~ r2_hidden(X1,k11_relat_1(X2,X0)) )
        & ( r2_hidden(X1,k11_relat_1(X2,X0))
          | ~ r2_hidden(k4_tarski(X0,X1),X2) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> r2_hidden(X1,k11_relat_1(X2,X0)) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(k4_tarski(X0,X1),X2)
      <=> r2_hidden(X1,k11_relat_1(X2,X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t204_relat_1)).

fof(f86,plain,
    ( r2_hidden(k4_tarski(sK0,sK4(sK1,sK0)),sK1)
    | ~ spl5_1 ),
    inference(unit_resulting_resolution,[],[f54,f51])).

fof(f51,plain,(
    ! [X0,X5] :
      ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
      | ~ r2_hidden(X5,k1_relat_1(X0)) ) ),
    inference(equality_resolution,[],[f32])).

fof(f32,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
      | ~ r2_hidden(X5,X1)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f24,f23,f22])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK2(X0,X1),X3),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0)
     => r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
     => r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_relat_1)).

fof(f54,plain,
    ( r2_hidden(sK0,k1_relat_1(sK1))
    | ~ spl5_1 ),
    inference(avatar_component_clause,[],[f53])).

fof(f53,plain,
    ( spl5_1
  <=> r2_hidden(sK0,k1_relat_1(sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_1])])).

fof(f27,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,
    ( ( k1_xboole_0 = k11_relat_1(sK1,sK0)
      | ~ r2_hidden(sK0,k1_relat_1(sK1)) )
    & ( k1_xboole_0 != k11_relat_1(sK1,sK0)
      | r2_hidden(sK0,k1_relat_1(sK1)) )
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f18])).

fof(f18,plain,
    ( ? [X0,X1] :
        ( ( k1_xboole_0 = k11_relat_1(X1,X0)
          | ~ r2_hidden(X0,k1_relat_1(X1)) )
        & ( k1_xboole_0 != k11_relat_1(X1,X0)
          | r2_hidden(X0,k1_relat_1(X1)) )
        & v1_relat_1(X1) )
   => ( ( k1_xboole_0 = k11_relat_1(sK1,sK0)
        | ~ r2_hidden(sK0,k1_relat_1(sK1)) )
      & ( k1_xboole_0 != k11_relat_1(sK1,sK0)
        | r2_hidden(sK0,k1_relat_1(sK1)) )
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k11_relat_1(X1,X0)
        | ~ r2_hidden(X0,k1_relat_1(X1)) )
      & ( k1_xboole_0 != k11_relat_1(X1,X0)
        | r2_hidden(X0,k1_relat_1(X1)) )
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k11_relat_1(X1,X0)
        | ~ r2_hidden(X0,k1_relat_1(X1)) )
      & ( k1_xboole_0 != k11_relat_1(X1,X0)
        | r2_hidden(X0,k1_relat_1(X1)) )
      & v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f13,plain,(
    ? [X0,X1] :
      ( ( r2_hidden(X0,k1_relat_1(X1))
      <~> k1_xboole_0 != k11_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ( r2_hidden(X0,k1_relat_1(X1))
        <=> k1_xboole_0 != k11_relat_1(X1,X0) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r2_hidden(X0,k1_relat_1(X1))
      <=> k1_xboole_0 != k11_relat_1(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t205_relat_1)).

fof(f85,plain,
    ( spl5_1
    | spl5_2 ),
    inference(avatar_contradiction_clause,[],[f84])).

fof(f84,plain,
    ( $false
    | spl5_1
    | spl5_2 ),
    inference(subsumption_resolution,[],[f81,f30])).

fof(f81,plain,
    ( ! [X0] : ~ r1_xboole_0(k6_enumset1(sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),X0),k1_xboole_0)
    | spl5_1
    | spl5_2 ),
    inference(unit_resulting_resolution,[],[f79,f49])).

fof(f79,plain,
    ( r2_hidden(sK2(k11_relat_1(sK1,sK0),k1_xboole_0),k1_xboole_0)
    | spl5_1
    | spl5_2 ),
    inference(unit_resulting_resolution,[],[f58,f78])).

fof(f78,plain,
    ( ! [X0] :
        ( r2_hidden(sK2(k11_relat_1(sK1,sK0),X0),X0)
        | k11_relat_1(sK1,sK0) = X0 )
    | spl5_1 ),
    inference(subsumption_resolution,[],[f72,f66])).

fof(f66,plain,
    ( ! [X0] : ~ r2_hidden(X0,k11_relat_1(sK1,sK0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f27,f62,f38])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k4_tarski(X0,X1),X2)
      | ~ r2_hidden(X1,k11_relat_1(X2,X0))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f62,plain,
    ( ! [X0] : ~ r2_hidden(k4_tarski(sK0,X0),sK1)
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f55,f50])).

fof(f50,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k1_relat_1(X0))
      | ~ r2_hidden(k4_tarski(X5,X6),X0) ) ),
    inference(equality_resolution,[],[f33])).

fof(f33,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(k4_tarski(X5,X6),X0)
      | k1_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f55,plain,
    ( ~ r2_hidden(sK0,k1_relat_1(sK1))
    | spl5_1 ),
    inference(avatar_component_clause,[],[f53])).

fof(f72,plain,
    ( ! [X0] :
        ( k11_relat_1(sK1,sK0) = X0
        | r2_hidden(k4_tarski(sK2(k11_relat_1(sK1,sK0),X0),sK3(k11_relat_1(sK1,sK0),X0)),k11_relat_1(sK1,sK0))
        | r2_hidden(sK2(k11_relat_1(sK1,sK0),X0),X0) )
    | spl5_1 ),
    inference(superposition,[],[f69,f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
      | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
      | r2_hidden(sK2(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f69,plain,
    ( k11_relat_1(sK1,sK0) = k1_relat_1(k11_relat_1(sK1,sK0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f66,f66,f34])).

fof(f58,plain,
    ( k1_xboole_0 != k11_relat_1(sK1,sK0)
    | spl5_2 ),
    inference(avatar_component_clause,[],[f57])).

fof(f61,plain,
    ( spl5_1
    | ~ spl5_2 ),
    inference(avatar_split_clause,[],[f28,f57,f53])).

fof(f28,plain,
    ( k1_xboole_0 != k11_relat_1(sK1,sK0)
    | r2_hidden(sK0,k1_relat_1(sK1)) ),
    inference(cnf_transformation,[],[f19])).

fof(f60,plain,
    ( ~ spl5_1
    | spl5_2 ),
    inference(avatar_split_clause,[],[f29,f57,f53])).

fof(f29,plain,
    ( k1_xboole_0 = k11_relat_1(sK1,sK0)
    | ~ r2_hidden(sK0,k1_relat_1(sK1)) ),
    inference(cnf_transformation,[],[f19])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : run_vampire %s %d
% 0.12/0.33  % Computer   : n019.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:12:52 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.20/0.44  % (10288)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.20/0.47  % (10309)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.20/0.48  % (10296)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.20/0.48  % (10309)Refutation found. Thanks to Tanya!
% 0.20/0.48  % SZS status Theorem for theBenchmark
% 0.20/0.48  % SZS output start Proof for theBenchmark
% 0.20/0.48  fof(f107,plain,(
% 0.20/0.48    $false),
% 0.20/0.48    inference(avatar_sat_refutation,[],[f60,f61,f85,f106])).
% 0.20/0.48  fof(f106,plain,(
% 0.20/0.48    ~spl5_1 | ~spl5_2),
% 0.20/0.48    inference(avatar_contradiction_clause,[],[f105])).
% 0.20/0.48  fof(f105,plain,(
% 0.20/0.48    $false | (~spl5_1 | ~spl5_2)),
% 0.20/0.48    inference(subsumption_resolution,[],[f102,f30])).
% 0.20/0.48  fof(f30,plain,(
% 0.20/0.48    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f1])).
% 0.20/0.48  fof(f1,axiom,(
% 0.20/0.48    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).
% 0.20/0.48  fof(f102,plain,(
% 0.20/0.48    ( ! [X0] : (~r1_xboole_0(k6_enumset1(sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),sK4(sK1,sK0),X0),k1_xboole_0)) ) | (~spl5_1 | ~spl5_2)),
% 0.20/0.48    inference(unit_resulting_resolution,[],[f97,f49])).
% 0.20/0.48  fof(f49,plain,(
% 0.20/0.48    ( ! [X2,X0,X1] : (~r2_hidden(X0,X2) | ~r1_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1),X2)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f39,f48])).
% 0.20/0.48  fof(f48,plain,(
% 0.20/0.48    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f31,f47])).
% 0.20/0.48  fof(f47,plain,(
% 0.20/0.48    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f36,f46])).
% 0.20/0.48  fof(f46,plain,(
% 0.20/0.48    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f40,f45])).
% 0.20/0.48  fof(f45,plain,(
% 0.20/0.48    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f41,f44])).
% 0.20/0.48  fof(f44,plain,(
% 0.20/0.48    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 0.20/0.48    inference(definition_unfolding,[],[f42,f43])).
% 0.20/0.48  fof(f43,plain,(
% 0.20/0.48    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f7])).
% 0.20/0.48  fof(f7,axiom,(
% 0.20/0.48    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).
% 0.20/0.48  fof(f42,plain,(
% 0.20/0.48    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f6])).
% 0.20/0.48  fof(f6,axiom,(
% 0.20/0.48    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).
% 0.20/0.48  fof(f41,plain,(
% 0.20/0.48    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f5])).
% 0.20/0.48  fof(f5,axiom,(
% 0.20/0.48    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).
% 0.20/0.48  fof(f40,plain,(
% 0.20/0.48    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f4])).
% 0.20/0.48  fof(f4,axiom,(
% 0.20/0.48    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 0.20/0.48  fof(f36,plain,(
% 0.20/0.48    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f3])).
% 0.20/0.48  fof(f3,axiom,(
% 0.20/0.48    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 0.20/0.48  fof(f31,plain,(
% 0.20/0.48    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f2])).
% 0.20/0.48  fof(f2,axiom,(
% 0.20/0.48    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 0.20/0.48  fof(f39,plain,(
% 0.20/0.48    ( ! [X2,X0,X1] : (~r2_hidden(X0,X2) | ~r1_xboole_0(k2_tarski(X0,X1),X2)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f15])).
% 0.20/0.48  fof(f15,plain,(
% 0.20/0.48    ! [X0,X1,X2] : (~r2_hidden(X0,X2) | ~r1_xboole_0(k2_tarski(X0,X1),X2))),
% 0.20/0.48    inference(ennf_transformation,[],[f8])).
% 0.20/0.48  fof(f8,axiom,(
% 0.20/0.48    ! [X0,X1,X2] : ~(r2_hidden(X0,X2) & r1_xboole_0(k2_tarski(X0,X1),X2))),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_zfmisc_1)).
% 0.20/0.48  fof(f97,plain,(
% 0.20/0.48    r2_hidden(sK4(sK1,sK0),k1_xboole_0) | (~spl5_1 | ~spl5_2)),
% 0.20/0.48    inference(forward_demodulation,[],[f94,f59])).
% 0.20/0.48  fof(f59,plain,(
% 0.20/0.48    k1_xboole_0 = k11_relat_1(sK1,sK0) | ~spl5_2),
% 0.20/0.48    inference(avatar_component_clause,[],[f57])).
% 0.20/0.48  fof(f57,plain,(
% 0.20/0.48    spl5_2 <=> k1_xboole_0 = k11_relat_1(sK1,sK0)),
% 0.20/0.48    introduced(avatar_definition,[new_symbols(naming,[spl5_2])])).
% 0.20/0.48  fof(f94,plain,(
% 0.20/0.48    r2_hidden(sK4(sK1,sK0),k11_relat_1(sK1,sK0)) | ~spl5_1),
% 0.20/0.48    inference(unit_resulting_resolution,[],[f27,f86,f37])).
% 0.20/0.48  fof(f37,plain,(
% 0.20/0.48    ( ! [X2,X0,X1] : (r2_hidden(X1,k11_relat_1(X2,X0)) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_relat_1(X2)) )),
% 0.20/0.48    inference(cnf_transformation,[],[f26])).
% 0.20/0.48  fof(f26,plain,(
% 0.20/0.48    ! [X0,X1,X2] : (((r2_hidden(k4_tarski(X0,X1),X2) | ~r2_hidden(X1,k11_relat_1(X2,X0))) & (r2_hidden(X1,k11_relat_1(X2,X0)) | ~r2_hidden(k4_tarski(X0,X1),X2))) | ~v1_relat_1(X2))),
% 0.20/0.48    inference(nnf_transformation,[],[f14])).
% 0.20/0.48  fof(f14,plain,(
% 0.20/0.48    ! [X0,X1,X2] : ((r2_hidden(k4_tarski(X0,X1),X2) <=> r2_hidden(X1,k11_relat_1(X2,X0))) | ~v1_relat_1(X2))),
% 0.20/0.48    inference(ennf_transformation,[],[f10])).
% 0.20/0.48  fof(f10,axiom,(
% 0.20/0.48    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(k4_tarski(X0,X1),X2) <=> r2_hidden(X1,k11_relat_1(X2,X0))))),
% 0.20/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t204_relat_1)).
% 0.20/0.48  fof(f86,plain,(
% 0.20/0.48    r2_hidden(k4_tarski(sK0,sK4(sK1,sK0)),sK1) | ~spl5_1),
% 0.20/0.48    inference(unit_resulting_resolution,[],[f54,f51])).
% 0.20/0.48  fof(f51,plain,(
% 0.20/0.48    ( ! [X0,X5] : (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,k1_relat_1(X0))) )),
% 0.20/0.48    inference(equality_resolution,[],[f32])).
% 0.20/0.48  fof(f32,plain,(
% 0.20/0.48    ( ! [X0,X5,X1] : (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,X1) | k1_relat_1(X0) != X1) )),
% 0.20/0.48    inference(cnf_transformation,[],[f25])).
% 0.20/0.49  fof(f25,plain,(
% 0.20/0.49    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ((! [X3] : ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.20/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f24,f23,f22])).
% 0.20/0.49  fof(f22,plain,(
% 0.20/0.49    ! [X1,X0] : (? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1))) => ((! [X3] : ~r2_hidden(k4_tarski(sK2(X0,X1),X3),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f23,plain,(
% 0.20/0.49    ! [X1,X0] : (? [X4] : r2_hidden(k4_tarski(sK2(X0,X1),X4),X0) => r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f24,plain,(
% 0.20/0.49    ! [X5,X0] : (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) => r2_hidden(k4_tarski(X5,sK4(X0,X5)),X0))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f21,plain,(
% 0.20/0.49    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.20/0.49    inference(rectify,[],[f20])).
% 0.20/0.49  fof(f20,plain,(
% 0.20/0.49    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1))) | k1_relat_1(X0) != X1))),
% 0.20/0.49    inference(nnf_transformation,[],[f9])).
% 0.20/0.49  fof(f9,axiom,(
% 0.20/0.49    ! [X0,X1] : (k1_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_relat_1)).
% 0.20/0.49  fof(f54,plain,(
% 0.20/0.49    r2_hidden(sK0,k1_relat_1(sK1)) | ~spl5_1),
% 0.20/0.49    inference(avatar_component_clause,[],[f53])).
% 0.20/0.49  fof(f53,plain,(
% 0.20/0.49    spl5_1 <=> r2_hidden(sK0,k1_relat_1(sK1))),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl5_1])])).
% 0.20/0.49  fof(f27,plain,(
% 0.20/0.49    v1_relat_1(sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f19])).
% 0.20/0.49  fof(f19,plain,(
% 0.20/0.49    (k1_xboole_0 = k11_relat_1(sK1,sK0) | ~r2_hidden(sK0,k1_relat_1(sK1))) & (k1_xboole_0 != k11_relat_1(sK1,sK0) | r2_hidden(sK0,k1_relat_1(sK1))) & v1_relat_1(sK1)),
% 0.20/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f17,f18])).
% 0.20/0.49  fof(f18,plain,(
% 0.20/0.49    ? [X0,X1] : ((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1))) & v1_relat_1(X1)) => ((k1_xboole_0 = k11_relat_1(sK1,sK0) | ~r2_hidden(sK0,k1_relat_1(sK1))) & (k1_xboole_0 != k11_relat_1(sK1,sK0) | r2_hidden(sK0,k1_relat_1(sK1))) & v1_relat_1(sK1))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f17,plain,(
% 0.20/0.49    ? [X0,X1] : ((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1))) & v1_relat_1(X1))),
% 0.20/0.49    inference(flattening,[],[f16])).
% 0.20/0.49  fof(f16,plain,(
% 0.20/0.49    ? [X0,X1] : (((k1_xboole_0 = k11_relat_1(X1,X0) | ~r2_hidden(X0,k1_relat_1(X1))) & (k1_xboole_0 != k11_relat_1(X1,X0) | r2_hidden(X0,k1_relat_1(X1)))) & v1_relat_1(X1))),
% 0.20/0.49    inference(nnf_transformation,[],[f13])).
% 0.20/0.49  fof(f13,plain,(
% 0.20/0.49    ? [X0,X1] : ((r2_hidden(X0,k1_relat_1(X1)) <~> k1_xboole_0 != k11_relat_1(X1,X0)) & v1_relat_1(X1))),
% 0.20/0.49    inference(ennf_transformation,[],[f12])).
% 0.20/0.49  fof(f12,negated_conjecture,(
% 0.20/0.49    ~! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)))),
% 0.20/0.49    inference(negated_conjecture,[],[f11])).
% 0.20/0.49  fof(f11,conjecture,(
% 0.20/0.49    ! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,k1_relat_1(X1)) <=> k1_xboole_0 != k11_relat_1(X1,X0)))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t205_relat_1)).
% 0.20/0.49  fof(f85,plain,(
% 0.20/0.49    spl5_1 | spl5_2),
% 0.20/0.49    inference(avatar_contradiction_clause,[],[f84])).
% 0.20/0.49  fof(f84,plain,(
% 0.20/0.49    $false | (spl5_1 | spl5_2)),
% 0.20/0.49    inference(subsumption_resolution,[],[f81,f30])).
% 0.20/0.49  fof(f81,plain,(
% 0.20/0.49    ( ! [X0] : (~r1_xboole_0(k6_enumset1(sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),sK2(k11_relat_1(sK1,sK0),k1_xboole_0),X0),k1_xboole_0)) ) | (spl5_1 | spl5_2)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f79,f49])).
% 0.20/0.49  fof(f79,plain,(
% 0.20/0.49    r2_hidden(sK2(k11_relat_1(sK1,sK0),k1_xboole_0),k1_xboole_0) | (spl5_1 | spl5_2)),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f58,f78])).
% 0.20/0.49  fof(f78,plain,(
% 0.20/0.49    ( ! [X0] : (r2_hidden(sK2(k11_relat_1(sK1,sK0),X0),X0) | k11_relat_1(sK1,sK0) = X0) ) | spl5_1),
% 0.20/0.49    inference(subsumption_resolution,[],[f72,f66])).
% 0.20/0.49  fof(f66,plain,(
% 0.20/0.49    ( ! [X0] : (~r2_hidden(X0,k11_relat_1(sK1,sK0))) ) | spl5_1),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f27,f62,f38])).
% 0.20/0.49  fof(f38,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (r2_hidden(k4_tarski(X0,X1),X2) | ~r2_hidden(X1,k11_relat_1(X2,X0)) | ~v1_relat_1(X2)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f26])).
% 0.20/0.49  fof(f62,plain,(
% 0.20/0.49    ( ! [X0] : (~r2_hidden(k4_tarski(sK0,X0),sK1)) ) | spl5_1),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f55,f50])).
% 0.20/0.49  fof(f50,plain,(
% 0.20/0.49    ( ! [X6,X0,X5] : (r2_hidden(X5,k1_relat_1(X0)) | ~r2_hidden(k4_tarski(X5,X6),X0)) )),
% 0.20/0.49    inference(equality_resolution,[],[f33])).
% 0.20/0.49  fof(f33,plain,(
% 0.20/0.49    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X5,X6),X0) | k1_relat_1(X0) != X1) )),
% 0.20/0.49    inference(cnf_transformation,[],[f25])).
% 0.20/0.49  fof(f55,plain,(
% 0.20/0.49    ~r2_hidden(sK0,k1_relat_1(sK1)) | spl5_1),
% 0.20/0.49    inference(avatar_component_clause,[],[f53])).
% 0.20/0.49  fof(f72,plain,(
% 0.20/0.49    ( ! [X0] : (k11_relat_1(sK1,sK0) = X0 | r2_hidden(k4_tarski(sK2(k11_relat_1(sK1,sK0),X0),sK3(k11_relat_1(sK1,sK0),X0)),k11_relat_1(sK1,sK0)) | r2_hidden(sK2(k11_relat_1(sK1,sK0),X0),X0)) ) | spl5_1),
% 0.20/0.49    inference(superposition,[],[f69,f34])).
% 0.20/0.49  fof(f34,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k1_relat_1(X0) = X1 | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f25])).
% 0.20/0.49  fof(f69,plain,(
% 0.20/0.49    k11_relat_1(sK1,sK0) = k1_relat_1(k11_relat_1(sK1,sK0)) | spl5_1),
% 0.20/0.49    inference(unit_resulting_resolution,[],[f66,f66,f34])).
% 0.20/0.49  fof(f58,plain,(
% 0.20/0.49    k1_xboole_0 != k11_relat_1(sK1,sK0) | spl5_2),
% 0.20/0.49    inference(avatar_component_clause,[],[f57])).
% 0.20/0.49  fof(f61,plain,(
% 0.20/0.49    spl5_1 | ~spl5_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f28,f57,f53])).
% 0.20/0.49  fof(f28,plain,(
% 0.20/0.49    k1_xboole_0 != k11_relat_1(sK1,sK0) | r2_hidden(sK0,k1_relat_1(sK1))),
% 0.20/0.49    inference(cnf_transformation,[],[f19])).
% 0.20/0.49  fof(f60,plain,(
% 0.20/0.49    ~spl5_1 | spl5_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f29,f57,f53])).
% 0.20/0.49  fof(f29,plain,(
% 0.20/0.49    k1_xboole_0 = k11_relat_1(sK1,sK0) | ~r2_hidden(sK0,k1_relat_1(sK1))),
% 0.20/0.49    inference(cnf_transformation,[],[f19])).
% 0.20/0.49  % SZS output end Proof for theBenchmark
% 0.20/0.49  % (10309)------------------------------
% 0.20/0.49  % (10309)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.49  % (10309)Termination reason: Refutation
% 0.20/0.49  
% 0.20/0.49  % (10309)Memory used [KB]: 10746
% 0.20/0.49  % (10309)Time elapsed: 0.107 s
% 0.20/0.49  % (10309)------------------------------
% 0.20/0.49  % (10309)------------------------------
% 0.20/0.49  % (10282)Success in time 0.145 s
%------------------------------------------------------------------------------
