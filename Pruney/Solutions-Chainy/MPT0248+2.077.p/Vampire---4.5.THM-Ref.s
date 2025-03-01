%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:38:00 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 1.59s
% Verified   : 
% Statistics : Number of formulae       :  140 (1176 expanded)
%              Number of leaves         :   30 ( 388 expanded)
%              Depth                    :   21
%              Number of atoms          :  292 (1576 expanded)
%              Number of equality atoms :  162 (1395 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f632,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f98,f107,f114,f318,f530,f533,f600,f605,f631])).

fof(f631,plain,
    ( spl3_5
    | ~ spl3_13 ),
    inference(avatar_contradiction_clause,[],[f630])).

fof(f630,plain,
    ( $false
    | spl3_5
    | ~ spl3_13 ),
    inference(subsumption_resolution,[],[f629,f113])).

fof(f113,plain,
    ( sK1 != sK2
    | spl3_5 ),
    inference(avatar_component_clause,[],[f111])).

fof(f111,plain,
    ( spl3_5
  <=> sK1 = sK2 ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).

fof(f629,plain,
    ( sK1 = sK2
    | ~ spl3_13 ),
    inference(forward_demodulation,[],[f623,f324])).

fof(f324,plain,(
    ! [X0] : k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(forward_demodulation,[],[f323,f40])).

fof(f40,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(f323,plain,(
    ! [X0] : k5_xboole_0(k5_xboole_0(X0,X0),X0) = X0 ),
    inference(forward_demodulation,[],[f78,f79])).

fof(f79,plain,(
    ! [X0] : k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f43,f70])).

fof(f70,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f47,f69])).

fof(f69,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f48,f68])).

fof(f68,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f58,f67])).

fof(f67,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f61,f66])).

fof(f66,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f62,f65])).

fof(f65,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f63,f64])).

fof(f64,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(f63,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(f62,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(f61,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f58,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f48,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f47,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f43,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(f78,plain,(
    ! [X0] : k5_xboole_0(k5_xboole_0(X0,X0),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) = X0 ),
    inference(definition_unfolding,[],[f42,f71])).

fof(f71,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f50,f70])).

fof(f50,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).

fof(f42,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f623,plain,
    ( sK2 = k5_xboole_0(k1_xboole_0,sK1)
    | ~ spl3_13 ),
    inference(superposition,[],[f370,f580])).

fof(f580,plain,
    ( k1_xboole_0 = k5_xboole_0(sK1,sK2)
    | ~ spl3_13 ),
    inference(avatar_component_clause,[],[f578])).

fof(f578,plain,
    ( spl3_13
  <=> k1_xboole_0 = k5_xboole_0(sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).

fof(f370,plain,(
    ! [X8,X7] : k5_xboole_0(k5_xboole_0(X8,X7),X8) = X7 ),
    inference(superposition,[],[f326,f326])).

fof(f326,plain,(
    ! [X2,X1] : k5_xboole_0(X1,k5_xboole_0(X2,X1)) = X2 ),
    inference(backward_demodulation,[],[f153,f324])).

fof(f153,plain,(
    ! [X2,X1] : k5_xboole_0(k1_xboole_0,X2) = k5_xboole_0(X1,k5_xboole_0(X2,X1)) ),
    inference(superposition,[],[f140,f46])).

fof(f46,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(f140,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[],[f59,f40])).

fof(f59,plain,(
    ! [X2,X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(f605,plain,
    ( spl3_12
    | spl3_13
    | ~ spl3_1 ),
    inference(avatar_split_clause,[],[f601,f91,f578,f574])).

fof(f574,plain,
    ( spl3_12
  <=> sK1 = k5_xboole_0(sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).

fof(f91,plain,
    ( spl3_1
  <=> sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

% (2429)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
fof(f601,plain,
    ( k1_xboole_0 = k5_xboole_0(sK1,sK2)
    | sK1 = k5_xboole_0(sK1,sK2)
    | ~ spl3_1 ),
    inference(resolution,[],[f568,f552])).

fof(f552,plain,
    ( ! [X0] :
        ( ~ r1_tarski(X0,sK1)
        | k1_xboole_0 = X0
        | sK1 = X0 )
    | ~ spl3_1 ),
    inference(superposition,[],[f85,f92])).

fof(f92,plain,
    ( sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | ~ spl3_1 ),
    inference(avatar_component_clause,[],[f91])).

fof(f85,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
      | k1_xboole_0 = X0
      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0 ) ),
    inference(definition_unfolding,[],[f55,f73,f73])).

fof(f73,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f41,f69])).

fof(f41,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f55,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f20,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_zfmisc_1)).

fof(f568,plain,
    ( r1_tarski(k5_xboole_0(sK1,sK2),sK1)
    | ~ spl3_1 ),
    inference(forward_demodulation,[],[f566,f46])).

fof(f566,plain,
    ( r1_tarski(k5_xboole_0(sK2,sK1),sK1)
    | ~ spl3_1 ),
    inference(superposition,[],[f365,f558])).

fof(f558,plain,
    ( sK1 = k3_tarski(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK2))
    | ~ spl3_1 ),
    inference(forward_demodulation,[],[f77,f92])).

fof(f77,plain,(
    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k3_tarski(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK2)) ),
    inference(definition_unfolding,[],[f36,f73,f70])).

fof(f36,plain,(
    k1_tarski(sK0) = k2_xboole_0(sK1,sK2) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,
    ( ( k1_xboole_0 != sK2
      | sK1 != k1_tarski(sK0) )
    & ( sK2 != k1_tarski(sK0)
      | k1_xboole_0 != sK1 )
    & ( sK2 != k1_tarski(sK0)
      | sK1 != k1_tarski(sK0) )
    & k1_tarski(sK0) = k2_xboole_0(sK1,sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f30])).

fof(f30,plain,
    ( ? [X0,X1,X2] :
        ( ( k1_xboole_0 != X2
          | k1_tarski(X0) != X1 )
        & ( k1_tarski(X0) != X2
          | k1_xboole_0 != X1 )
        & ( k1_tarski(X0) != X2
          | k1_tarski(X0) != X1 )
        & k1_tarski(X0) = k2_xboole_0(X1,X2) )
   => ( ( k1_xboole_0 != sK2
        | sK1 != k1_tarski(sK0) )
      & ( sK2 != k1_tarski(sK0)
        | k1_xboole_0 != sK1 )
      & ( sK2 != k1_tarski(sK0)
        | sK1 != k1_tarski(sK0) )
      & k1_tarski(sK0) = k2_xboole_0(sK1,sK2) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ? [X0,X1,X2] :
      ( ( k1_xboole_0 != X2
        | k1_tarski(X0) != X1 )
      & ( k1_tarski(X0) != X2
        | k1_xboole_0 != X1 )
      & ( k1_tarski(X0) != X2
        | k1_tarski(X0) != X1 )
      & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( ~ ( k1_xboole_0 = X2
              & k1_tarski(X0) = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_xboole_0 = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_tarski(X0) = X1 )
          & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f22,conjecture,(
    ! [X0,X1,X2] :
      ~ ( ~ ( k1_xboole_0 = X2
            & k1_tarski(X0) = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_xboole_0 = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_tarski(X0) = X1 )
        & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_zfmisc_1)).

fof(f365,plain,(
    ! [X0,X1] : r1_tarski(k5_xboole_0(X1,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))),X0) ),
    inference(forward_demodulation,[],[f349,f328])).

fof(f328,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
    inference(backward_demodulation,[],[f140,f324])).

fof(f349,plain,(
    ! [X0,X1] : r1_tarski(k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))))),X0) ),
    inference(forward_demodulation,[],[f81,f59])).

fof(f81,plain,(
    ! [X0,X1] : r1_tarski(k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))),X0) ),
    inference(definition_unfolding,[],[f45,f72])).

fof(f72,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) ),
    inference(definition_unfolding,[],[f49,f71])).

fof(f49,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f45,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f600,plain,
    ( spl3_2
    | ~ spl3_12 ),
    inference(avatar_contradiction_clause,[],[f599])).

fof(f599,plain,
    ( $false
    | spl3_2
    | ~ spl3_12 ),
    inference(subsumption_resolution,[],[f598,f97])).

fof(f97,plain,
    ( k1_xboole_0 != sK2
    | spl3_2 ),
    inference(avatar_component_clause,[],[f95])).

fof(f95,plain,
    ( spl3_2
  <=> k1_xboole_0 = sK2 ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f598,plain,
    ( k1_xboole_0 = sK2
    | ~ spl3_12 ),
    inference(forward_demodulation,[],[f594,f40])).

fof(f594,plain,
    ( sK2 = k5_xboole_0(sK1,sK1)
    | ~ spl3_12 ),
    inference(superposition,[],[f370,f576])).

fof(f576,plain,
    ( sK1 = k5_xboole_0(sK1,sK2)
    | ~ spl3_12 ),
    inference(avatar_component_clause,[],[f574])).

fof(f533,plain,
    ( spl3_1
    | spl3_3
    | ~ spl3_6 ),
    inference(avatar_split_clause,[],[f438,f121,f100,f91])).

fof(f100,plain,
    ( spl3_3
  <=> k1_xboole_0 = sK1 ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f121,plain,
    ( spl3_6
  <=> r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).

fof(f438,plain,
    ( k1_xboole_0 = sK1
    | sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | ~ spl3_6 ),
    inference(resolution,[],[f85,f122])).

fof(f122,plain,
    ( r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))
    | ~ spl3_6 ),
    inference(avatar_component_clause,[],[f121])).

fof(f530,plain,
    ( spl3_1
    | spl3_4
    | ~ spl3_6 ),
    inference(avatar_contradiction_clause,[],[f529])).

fof(f529,plain,
    ( $false
    | spl3_1
    | spl3_4
    | ~ spl3_6 ),
    inference(subsumption_resolution,[],[f528,f106])).

fof(f106,plain,
    ( sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | spl3_4 ),
    inference(avatar_component_clause,[],[f104])).

fof(f104,plain,
    ( spl3_4
  <=> sK2 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).

fof(f528,plain,
    ( sK2 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | spl3_1
    | ~ spl3_6 ),
    inference(forward_demodulation,[],[f521,f324])).

fof(f521,plain,
    ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k1_xboole_0,sK2)
    | spl3_1
    | ~ spl3_6 ),
    inference(superposition,[],[f370,f458])).

fof(f458,plain,
    ( k1_xboole_0 = k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))
    | spl3_1
    | ~ spl3_6 ),
    inference(subsumption_resolution,[],[f457,f215])).

fof(f215,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(resolution,[],[f212,f86])).

fof(f86,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f53])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f212,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | r1_tarski(k1_xboole_0,X1) ) ),
    inference(duplicate_literal_removal,[],[f205])).

fof(f205,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_xboole_0,X1)
      | ~ r1_tarski(X0,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(superposition,[],[f60,f40])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k5_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X2,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X2,X1)
        & r1_tarski(X0,X1) )
     => r1_tarski(k5_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t110_xboole_1)).

fof(f457,plain,
    ( k1_xboole_0 = k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))
    | ~ r1_tarski(k1_xboole_0,k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)))
    | spl3_1
    | ~ spl3_6 ),
    inference(resolution,[],[f448,f54])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f448,plain,
    ( r1_tarski(k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),k1_xboole_0)
    | spl3_1
    | ~ spl3_6 ),
    inference(superposition,[],[f365,f442])).

fof(f442,plain,
    ( k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k3_tarski(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,sK2))
    | spl3_1
    | ~ spl3_6 ),
    inference(backward_demodulation,[],[f77,f439])).

fof(f439,plain,
    ( k1_xboole_0 = sK1
    | spl3_1
    | ~ spl3_6 ),
    inference(subsumption_resolution,[],[f438,f93])).

fof(f93,plain,
    ( sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | spl3_1 ),
    inference(avatar_component_clause,[],[f91])).

fof(f318,plain,(
    spl3_6 ),
    inference(avatar_contradiction_clause,[],[f317])).

fof(f317,plain,
    ( $false
    | spl3_6 ),
    inference(subsumption_resolution,[],[f316,f123])).

fof(f123,plain,
    ( ~ r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))
    | spl3_6 ),
    inference(avatar_component_clause,[],[f121])).

fof(f316,plain,(
    r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) ),
    inference(superposition,[],[f80,f77])).

fof(f80,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f44,f70])).

fof(f44,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f114,plain,
    ( ~ spl3_5
    | ~ spl3_1 ),
    inference(avatar_split_clause,[],[f109,f91,f111])).

fof(f109,plain,
    ( sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | sK1 != sK2 ),
    inference(inner_rewriting,[],[f108])).

fof(f108,plain,
    ( sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | sK1 != sK2 ),
    inference(inner_rewriting,[],[f76])).

fof(f76,plain,
    ( sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    inference(definition_unfolding,[],[f37,f73,f73])).

fof(f37,plain,
    ( sK2 != k1_tarski(sK0)
    | sK1 != k1_tarski(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f107,plain,
    ( ~ spl3_3
    | ~ spl3_4 ),
    inference(avatar_split_clause,[],[f75,f104,f100])).

fof(f75,plain,
    ( sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)
    | k1_xboole_0 != sK1 ),
    inference(definition_unfolding,[],[f38,f73])).

fof(f38,plain,
    ( sK2 != k1_tarski(sK0)
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f31])).

fof(f98,plain,
    ( ~ spl3_1
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f74,f95,f91])).

fof(f74,plain,
    ( k1_xboole_0 != sK2
    | sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) ),
    inference(definition_unfolding,[],[f39,f73])).

fof(f39,plain,
    ( k1_xboole_0 != sK2
    | sK1 != k1_tarski(sK0) ),
    inference(cnf_transformation,[],[f31])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 17:22:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.55  % (2430)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.57  % (2446)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 0.22/0.57  % (2433)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 0.22/0.57  % (2438)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 0.22/0.59  % (2447)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 0.22/0.59  % (2441)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 0.22/0.59  % (2425)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 0.22/0.59  % (2430)Refutation found. Thanks to Tanya!
% 0.22/0.59  % SZS status Theorem for theBenchmark
% 0.22/0.59  % (2439)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 1.59/0.60  % (2428)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 1.59/0.60  % SZS output start Proof for theBenchmark
% 1.59/0.60  fof(f632,plain,(
% 1.59/0.60    $false),
% 1.59/0.60    inference(avatar_sat_refutation,[],[f98,f107,f114,f318,f530,f533,f600,f605,f631])).
% 1.59/0.60  fof(f631,plain,(
% 1.59/0.60    spl3_5 | ~spl3_13),
% 1.59/0.60    inference(avatar_contradiction_clause,[],[f630])).
% 1.59/0.60  fof(f630,plain,(
% 1.59/0.60    $false | (spl3_5 | ~spl3_13)),
% 1.59/0.60    inference(subsumption_resolution,[],[f629,f113])).
% 1.59/0.60  fof(f113,plain,(
% 1.59/0.60    sK1 != sK2 | spl3_5),
% 1.59/0.60    inference(avatar_component_clause,[],[f111])).
% 1.59/0.60  fof(f111,plain,(
% 1.59/0.60    spl3_5 <=> sK1 = sK2),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).
% 1.59/0.60  fof(f629,plain,(
% 1.59/0.60    sK1 = sK2 | ~spl3_13),
% 1.59/0.60    inference(forward_demodulation,[],[f623,f324])).
% 1.59/0.60  fof(f324,plain,(
% 1.59/0.60    ( ! [X0] : (k5_xboole_0(k1_xboole_0,X0) = X0) )),
% 1.59/0.60    inference(forward_demodulation,[],[f323,f40])).
% 1.59/0.60  fof(f40,plain,(
% 1.59/0.60    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 1.59/0.60    inference(cnf_transformation,[],[f11])).
% 1.59/0.60  fof(f11,axiom,(
% 1.59/0.60    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).
% 1.59/0.60  fof(f323,plain,(
% 1.59/0.60    ( ! [X0] : (k5_xboole_0(k5_xboole_0(X0,X0),X0) = X0) )),
% 1.59/0.60    inference(forward_demodulation,[],[f78,f79])).
% 1.59/0.60  fof(f79,plain,(
% 1.59/0.60    ( ! [X0] : (k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0) )),
% 1.59/0.60    inference(definition_unfolding,[],[f43,f70])).
% 1.59/0.60  fof(f70,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 1.59/0.60    inference(definition_unfolding,[],[f47,f69])).
% 1.59/0.60  fof(f69,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f48,f68])).
% 1.59/0.60  fof(f68,plain,(
% 1.59/0.60    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f58,f67])).
% 1.59/0.60  fof(f67,plain,(
% 1.59/0.60    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f61,f66])).
% 1.59/0.60  fof(f66,plain,(
% 1.59/0.60    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f62,f65])).
% 1.59/0.60  fof(f65,plain,(
% 1.59/0.60    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f63,f64])).
% 1.59/0.60  fof(f64,plain,(
% 1.59/0.60    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f19])).
% 1.59/0.60  fof(f19,axiom,(
% 1.59/0.60    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).
% 1.59/0.60  fof(f63,plain,(
% 1.59/0.60    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f18])).
% 1.59/0.60  fof(f18,axiom,(
% 1.59/0.60    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).
% 1.59/0.60  fof(f62,plain,(
% 1.59/0.60    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f17])).
% 1.59/0.60  fof(f17,axiom,(
% 1.59/0.60    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).
% 1.59/0.60  fof(f61,plain,(
% 1.59/0.60    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f16])).
% 1.59/0.60  fof(f16,axiom,(
% 1.59/0.60    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 1.59/0.60  fof(f58,plain,(
% 1.59/0.60    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f15])).
% 1.59/0.60  fof(f15,axiom,(
% 1.59/0.60    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.59/0.60  fof(f48,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f14])).
% 1.59/0.60  fof(f14,axiom,(
% 1.59/0.60    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.59/0.60  fof(f47,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f21])).
% 1.59/0.60  fof(f21,axiom,(
% 1.59/0.60    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.59/0.60  fof(f43,plain,(
% 1.59/0.60    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 1.59/0.60    inference(cnf_transformation,[],[f25])).
% 1.59/0.60  fof(f25,plain,(
% 1.59/0.60    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 1.59/0.60    inference(rectify,[],[f2])).
% 1.59/0.60  fof(f2,axiom,(
% 1.59/0.60    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).
% 1.59/0.60  fof(f78,plain,(
% 1.59/0.60    ( ! [X0] : (k5_xboole_0(k5_xboole_0(X0,X0),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) = X0) )),
% 1.59/0.60    inference(definition_unfolding,[],[f42,f71])).
% 1.59/0.60  fof(f71,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 1.59/0.60    inference(definition_unfolding,[],[f50,f70])).
% 1.59/0.60  fof(f50,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f12])).
% 1.59/0.60  fof(f12,axiom,(
% 1.59/0.60    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).
% 1.59/0.60  fof(f42,plain,(
% 1.59/0.60    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 1.59/0.60    inference(cnf_transformation,[],[f24])).
% 1.59/0.60  fof(f24,plain,(
% 1.59/0.60    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 1.59/0.60    inference(rectify,[],[f3])).
% 1.59/0.60  fof(f3,axiom,(
% 1.59/0.60    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 1.59/0.60  fof(f623,plain,(
% 1.59/0.60    sK2 = k5_xboole_0(k1_xboole_0,sK1) | ~spl3_13),
% 1.59/0.60    inference(superposition,[],[f370,f580])).
% 1.59/0.60  fof(f580,plain,(
% 1.59/0.60    k1_xboole_0 = k5_xboole_0(sK1,sK2) | ~spl3_13),
% 1.59/0.60    inference(avatar_component_clause,[],[f578])).
% 1.59/0.60  fof(f578,plain,(
% 1.59/0.60    spl3_13 <=> k1_xboole_0 = k5_xboole_0(sK1,sK2)),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_13])])).
% 1.59/0.60  fof(f370,plain,(
% 1.59/0.60    ( ! [X8,X7] : (k5_xboole_0(k5_xboole_0(X8,X7),X8) = X7) )),
% 1.59/0.60    inference(superposition,[],[f326,f326])).
% 1.59/0.60  fof(f326,plain,(
% 1.59/0.60    ( ! [X2,X1] : (k5_xboole_0(X1,k5_xboole_0(X2,X1)) = X2) )),
% 1.59/0.60    inference(backward_demodulation,[],[f153,f324])).
% 1.59/0.60  fof(f153,plain,(
% 1.59/0.60    ( ! [X2,X1] : (k5_xboole_0(k1_xboole_0,X2) = k5_xboole_0(X1,k5_xboole_0(X2,X1))) )),
% 1.59/0.60    inference(superposition,[],[f140,f46])).
% 1.59/0.60  fof(f46,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f1])).
% 1.59/0.60  fof(f1,axiom,(
% 1.59/0.60    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).
% 1.59/0.60  fof(f140,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1)) )),
% 1.59/0.60    inference(superposition,[],[f59,f40])).
% 1.59/0.60  fof(f59,plain,(
% 1.59/0.60    ( ! [X2,X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f10])).
% 1.59/0.60  fof(f10,axiom,(
% 1.59/0.60    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).
% 1.59/0.60  fof(f605,plain,(
% 1.59/0.60    spl3_12 | spl3_13 | ~spl3_1),
% 1.59/0.60    inference(avatar_split_clause,[],[f601,f91,f578,f574])).
% 1.59/0.60  fof(f574,plain,(
% 1.59/0.60    spl3_12 <=> sK1 = k5_xboole_0(sK1,sK2)),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_12])])).
% 1.59/0.60  fof(f91,plain,(
% 1.59/0.60    spl3_1 <=> sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 1.59/0.60  % (2429)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 1.59/0.60  fof(f601,plain,(
% 1.59/0.60    k1_xboole_0 = k5_xboole_0(sK1,sK2) | sK1 = k5_xboole_0(sK1,sK2) | ~spl3_1),
% 1.59/0.60    inference(resolution,[],[f568,f552])).
% 1.59/0.60  fof(f552,plain,(
% 1.59/0.60    ( ! [X0] : (~r1_tarski(X0,sK1) | k1_xboole_0 = X0 | sK1 = X0) ) | ~spl3_1),
% 1.59/0.60    inference(superposition,[],[f85,f92])).
% 1.59/0.60  fof(f92,plain,(
% 1.59/0.60    sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | ~spl3_1),
% 1.59/0.60    inference(avatar_component_clause,[],[f91])).
% 1.59/0.60  fof(f85,plain,(
% 1.59/0.60    ( ! [X0,X1] : (~r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | k1_xboole_0 = X0 | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0) )),
% 1.59/0.60    inference(definition_unfolding,[],[f55,f73,f73])).
% 1.59/0.60  fof(f73,plain,(
% 1.59/0.60    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f41,f69])).
% 1.59/0.60  fof(f41,plain,(
% 1.59/0.60    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f13])).
% 1.59/0.60  fof(f13,axiom,(
% 1.59/0.60    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 1.59/0.60  fof(f55,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f35])).
% 1.59/0.60  fof(f35,plain,(
% 1.59/0.60    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.59/0.60    inference(flattening,[],[f34])).
% 1.59/0.60  fof(f34,plain,(
% 1.59/0.60    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.59/0.60    inference(nnf_transformation,[],[f20])).
% 1.59/0.60  fof(f20,axiom,(
% 1.59/0.60    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_zfmisc_1)).
% 1.59/0.60  fof(f568,plain,(
% 1.59/0.60    r1_tarski(k5_xboole_0(sK1,sK2),sK1) | ~spl3_1),
% 1.59/0.60    inference(forward_demodulation,[],[f566,f46])).
% 1.59/0.60  fof(f566,plain,(
% 1.59/0.60    r1_tarski(k5_xboole_0(sK2,sK1),sK1) | ~spl3_1),
% 1.59/0.60    inference(superposition,[],[f365,f558])).
% 1.59/0.60  fof(f558,plain,(
% 1.59/0.60    sK1 = k3_tarski(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK2)) | ~spl3_1),
% 1.59/0.60    inference(forward_demodulation,[],[f77,f92])).
% 1.59/0.60  fof(f77,plain,(
% 1.59/0.60    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k3_tarski(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK2))),
% 1.59/0.60    inference(definition_unfolding,[],[f36,f73,f70])).
% 1.59/0.60  fof(f36,plain,(
% 1.59/0.60    k1_tarski(sK0) = k2_xboole_0(sK1,sK2)),
% 1.59/0.60    inference(cnf_transformation,[],[f31])).
% 1.59/0.60  fof(f31,plain,(
% 1.59/0.60    (k1_xboole_0 != sK2 | sK1 != k1_tarski(sK0)) & (sK2 != k1_tarski(sK0) | k1_xboole_0 != sK1) & (sK2 != k1_tarski(sK0) | sK1 != k1_tarski(sK0)) & k1_tarski(sK0) = k2_xboole_0(sK1,sK2)),
% 1.59/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f30])).
% 1.59/0.60  fof(f30,plain,(
% 1.59/0.60    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k1_tarski(X0) = k2_xboole_0(X1,X2)) => ((k1_xboole_0 != sK2 | sK1 != k1_tarski(sK0)) & (sK2 != k1_tarski(sK0) | k1_xboole_0 != sK1) & (sK2 != k1_tarski(sK0) | sK1 != k1_tarski(sK0)) & k1_tarski(sK0) = k2_xboole_0(sK1,sK2))),
% 1.59/0.60    introduced(choice_axiom,[])).
% 1.59/0.60  fof(f26,plain,(
% 1.59/0.60    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 1.59/0.60    inference(ennf_transformation,[],[f23])).
% 1.59/0.60  fof(f23,negated_conjecture,(
% 1.59/0.60    ~! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 1.59/0.60    inference(negated_conjecture,[],[f22])).
% 1.59/0.60  fof(f22,conjecture,(
% 1.59/0.60    ! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_zfmisc_1)).
% 1.59/0.60  fof(f365,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(k5_xboole_0(X1,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))),X0)) )),
% 1.59/0.60    inference(forward_demodulation,[],[f349,f328])).
% 1.59/0.60  fof(f328,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1) )),
% 1.59/0.60    inference(backward_demodulation,[],[f140,f324])).
% 1.59/0.60  fof(f349,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))))),X0)) )),
% 1.59/0.60    inference(forward_demodulation,[],[f81,f59])).
% 1.59/0.60  fof(f81,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))),X0)) )),
% 1.59/0.60    inference(definition_unfolding,[],[f45,f72])).
% 1.59/0.60  fof(f72,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))))) )),
% 1.59/0.60    inference(definition_unfolding,[],[f49,f71])).
% 1.59/0.60  fof(f49,plain,(
% 1.59/0.60    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f5])).
% 1.59/0.60  fof(f5,axiom,(
% 1.59/0.60    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.59/0.60  fof(f45,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f8])).
% 1.59/0.60  fof(f8,axiom,(
% 1.59/0.60    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).
% 1.59/0.60  fof(f600,plain,(
% 1.59/0.60    spl3_2 | ~spl3_12),
% 1.59/0.60    inference(avatar_contradiction_clause,[],[f599])).
% 1.59/0.60  fof(f599,plain,(
% 1.59/0.60    $false | (spl3_2 | ~spl3_12)),
% 1.59/0.60    inference(subsumption_resolution,[],[f598,f97])).
% 1.59/0.60  fof(f97,plain,(
% 1.59/0.60    k1_xboole_0 != sK2 | spl3_2),
% 1.59/0.60    inference(avatar_component_clause,[],[f95])).
% 1.59/0.60  fof(f95,plain,(
% 1.59/0.60    spl3_2 <=> k1_xboole_0 = sK2),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 1.59/0.60  fof(f598,plain,(
% 1.59/0.60    k1_xboole_0 = sK2 | ~spl3_12),
% 1.59/0.60    inference(forward_demodulation,[],[f594,f40])).
% 1.59/0.60  fof(f594,plain,(
% 1.59/0.60    sK2 = k5_xboole_0(sK1,sK1) | ~spl3_12),
% 1.59/0.60    inference(superposition,[],[f370,f576])).
% 1.59/0.60  fof(f576,plain,(
% 1.59/0.60    sK1 = k5_xboole_0(sK1,sK2) | ~spl3_12),
% 1.59/0.60    inference(avatar_component_clause,[],[f574])).
% 1.59/0.60  fof(f533,plain,(
% 1.59/0.60    spl3_1 | spl3_3 | ~spl3_6),
% 1.59/0.60    inference(avatar_split_clause,[],[f438,f121,f100,f91])).
% 1.59/0.60  fof(f100,plain,(
% 1.59/0.60    spl3_3 <=> k1_xboole_0 = sK1),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 1.59/0.60  fof(f121,plain,(
% 1.59/0.60    spl3_6 <=> r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).
% 1.59/0.60  fof(f438,plain,(
% 1.59/0.60    k1_xboole_0 = sK1 | sK1 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | ~spl3_6),
% 1.59/0.60    inference(resolution,[],[f85,f122])).
% 1.59/0.60  fof(f122,plain,(
% 1.59/0.60    r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) | ~spl3_6),
% 1.59/0.60    inference(avatar_component_clause,[],[f121])).
% 1.59/0.60  fof(f530,plain,(
% 1.59/0.60    spl3_1 | spl3_4 | ~spl3_6),
% 1.59/0.60    inference(avatar_contradiction_clause,[],[f529])).
% 1.59/0.60  fof(f529,plain,(
% 1.59/0.60    $false | (spl3_1 | spl3_4 | ~spl3_6)),
% 1.59/0.60    inference(subsumption_resolution,[],[f528,f106])).
% 1.59/0.60  fof(f106,plain,(
% 1.59/0.60    sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | spl3_4),
% 1.59/0.60    inference(avatar_component_clause,[],[f104])).
% 1.59/0.60  fof(f104,plain,(
% 1.59/0.60    spl3_4 <=> sK2 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),
% 1.59/0.60    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).
% 1.59/0.60  fof(f528,plain,(
% 1.59/0.60    sK2 = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(forward_demodulation,[],[f521,f324])).
% 1.59/0.60  fof(f521,plain,(
% 1.59/0.60    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k5_xboole_0(k1_xboole_0,sK2) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(superposition,[],[f370,f458])).
% 1.59/0.60  fof(f458,plain,(
% 1.59/0.60    k1_xboole_0 = k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(subsumption_resolution,[],[f457,f215])).
% 1.59/0.60  fof(f215,plain,(
% 1.59/0.60    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.59/0.60    inference(resolution,[],[f212,f86])).
% 1.59/0.60  fof(f86,plain,(
% 1.59/0.60    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 1.59/0.60    inference(equality_resolution,[],[f53])).
% 1.59/0.60  fof(f53,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 1.59/0.60    inference(cnf_transformation,[],[f33])).
% 1.59/0.60  fof(f33,plain,(
% 1.59/0.60    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.59/0.60    inference(flattening,[],[f32])).
% 1.59/0.60  fof(f32,plain,(
% 1.59/0.60    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.59/0.60    inference(nnf_transformation,[],[f4])).
% 1.59/0.60  fof(f4,axiom,(
% 1.59/0.60    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 1.59/0.60  fof(f212,plain,(
% 1.59/0.60    ( ! [X0,X1] : (~r1_tarski(X0,X1) | r1_tarski(k1_xboole_0,X1)) )),
% 1.59/0.60    inference(duplicate_literal_removal,[],[f205])).
% 1.59/0.60  fof(f205,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(k1_xboole_0,X1) | ~r1_tarski(X0,X1) | ~r1_tarski(X0,X1)) )),
% 1.59/0.60    inference(superposition,[],[f60,f40])).
% 1.59/0.60  fof(f60,plain,(
% 1.59/0.60    ( ! [X2,X0,X1] : (r1_tarski(k5_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f29])).
% 1.59/0.60  fof(f29,plain,(
% 1.59/0.60    ! [X0,X1,X2] : (r1_tarski(k5_xboole_0(X0,X2),X1) | ~r1_tarski(X2,X1) | ~r1_tarski(X0,X1))),
% 1.59/0.60    inference(flattening,[],[f28])).
% 1.59/0.60  fof(f28,plain,(
% 1.59/0.60    ! [X0,X1,X2] : (r1_tarski(k5_xboole_0(X0,X2),X1) | (~r1_tarski(X2,X1) | ~r1_tarski(X0,X1)))),
% 1.59/0.60    inference(ennf_transformation,[],[f6])).
% 1.59/0.60  fof(f6,axiom,(
% 1.59/0.60    ! [X0,X1,X2] : ((r1_tarski(X2,X1) & r1_tarski(X0,X1)) => r1_tarski(k5_xboole_0(X0,X2),X1))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t110_xboole_1)).
% 1.59/0.60  fof(f457,plain,(
% 1.59/0.60    k1_xboole_0 = k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) | ~r1_tarski(k1_xboole_0,k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(resolution,[],[f448,f54])).
% 1.59/0.60  fof(f54,plain,(
% 1.59/0.60    ( ! [X0,X1] : (~r1_tarski(X1,X0) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 1.59/0.60    inference(cnf_transformation,[],[f33])).
% 1.59/0.60  fof(f448,plain,(
% 1.59/0.60    r1_tarski(k5_xboole_0(sK2,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),k1_xboole_0) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(superposition,[],[f365,f442])).
% 1.59/0.60  fof(f442,plain,(
% 1.59/0.60    k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) = k3_tarski(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,sK2)) | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(backward_demodulation,[],[f77,f439])).
% 1.59/0.60  fof(f439,plain,(
% 1.59/0.60    k1_xboole_0 = sK1 | (spl3_1 | ~spl3_6)),
% 1.59/0.60    inference(subsumption_resolution,[],[f438,f93])).
% 1.59/0.60  fof(f93,plain,(
% 1.59/0.60    sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | spl3_1),
% 1.59/0.60    inference(avatar_component_clause,[],[f91])).
% 1.59/0.60  fof(f318,plain,(
% 1.59/0.60    spl3_6),
% 1.59/0.60    inference(avatar_contradiction_clause,[],[f317])).
% 1.59/0.60  fof(f317,plain,(
% 1.59/0.60    $false | spl3_6),
% 1.59/0.60    inference(subsumption_resolution,[],[f316,f123])).
% 1.59/0.60  fof(f123,plain,(
% 1.59/0.60    ~r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)) | spl3_6),
% 1.59/0.60    inference(avatar_component_clause,[],[f121])).
% 1.59/0.60  fof(f316,plain,(
% 1.59/0.60    r1_tarski(sK1,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0))),
% 1.59/0.60    inference(superposition,[],[f80,f77])).
% 1.59/0.60  fof(f80,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 1.59/0.60    inference(definition_unfolding,[],[f44,f70])).
% 1.59/0.60  fof(f44,plain,(
% 1.59/0.60    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.59/0.60    inference(cnf_transformation,[],[f9])).
% 1.59/0.60  fof(f9,axiom,(
% 1.59/0.60    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.59/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).
% 1.59/0.60  fof(f114,plain,(
% 1.59/0.60    ~spl3_5 | ~spl3_1),
% 1.59/0.60    inference(avatar_split_clause,[],[f109,f91,f111])).
% 1.59/0.60  fof(f109,plain,(
% 1.59/0.60    sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | sK1 != sK2),
% 1.59/0.60    inference(inner_rewriting,[],[f108])).
% 1.59/0.60  fof(f108,plain,(
% 1.59/0.60    sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | sK1 != sK2),
% 1.59/0.60    inference(inner_rewriting,[],[f76])).
% 1.59/0.60  fof(f76,plain,(
% 1.59/0.60    sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),
% 1.59/0.60    inference(definition_unfolding,[],[f37,f73,f73])).
% 1.59/0.60  fof(f37,plain,(
% 1.59/0.60    sK2 != k1_tarski(sK0) | sK1 != k1_tarski(sK0)),
% 1.59/0.60    inference(cnf_transformation,[],[f31])).
% 1.59/0.60  fof(f107,plain,(
% 1.59/0.60    ~spl3_3 | ~spl3_4),
% 1.59/0.60    inference(avatar_split_clause,[],[f75,f104,f100])).
% 1.59/0.60  fof(f75,plain,(
% 1.59/0.60    sK2 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0) | k1_xboole_0 != sK1),
% 1.59/0.60    inference(definition_unfolding,[],[f38,f73])).
% 1.59/0.60  fof(f38,plain,(
% 1.59/0.60    sK2 != k1_tarski(sK0) | k1_xboole_0 != sK1),
% 1.59/0.60    inference(cnf_transformation,[],[f31])).
% 1.59/0.60  fof(f98,plain,(
% 1.59/0.60    ~spl3_1 | ~spl3_2),
% 1.59/0.60    inference(avatar_split_clause,[],[f74,f95,f91])).
% 1.59/0.60  fof(f74,plain,(
% 1.59/0.60    k1_xboole_0 != sK2 | sK1 != k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0)),
% 1.59/0.60    inference(definition_unfolding,[],[f39,f73])).
% 1.59/0.60  fof(f39,plain,(
% 1.59/0.60    k1_xboole_0 != sK2 | sK1 != k1_tarski(sK0)),
% 1.59/0.60    inference(cnf_transformation,[],[f31])).
% 1.59/0.60  % SZS output end Proof for theBenchmark
% 1.59/0.60  % (2430)------------------------------
% 1.59/0.60  % (2430)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.59/0.60  % (2430)Termination reason: Refutation
% 1.59/0.60  
% 1.59/0.60  % (2430)Memory used [KB]: 11001
% 1.59/0.60  % (2430)Time elapsed: 0.167 s
% 1.59/0.60  % (2430)------------------------------
% 1.59/0.60  % (2430)------------------------------
% 1.59/0.60  % (2427)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 1.59/0.60  % (2434)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 1.59/0.60  % (2423)Success in time 0.239 s
%------------------------------------------------------------------------------
