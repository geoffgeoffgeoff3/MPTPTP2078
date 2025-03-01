%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:50:31 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 1.84s
% Verified   : 
% Statistics : Number of formulae       :  126 ( 263 expanded)
%              Number of leaves         :   28 (  79 expanded)
%              Depth                    :   19
%              Number of atoms          :  372 ( 877 expanded)
%              Number of equality atoms :   60 ( 189 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f257,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f99,f100,f134,f136,f159,f248,f256])).

fof(f256,plain,
    ( spl6_2
    | spl6_7 ),
    inference(avatar_contradiction_clause,[],[f254])).

fof(f254,plain,
    ( $false
    | spl6_2
    | spl6_7 ),
    inference(resolution,[],[f250,f160])).

fof(f160,plain,
    ( ~ r1_xboole_0(sK0,k2_relat_1(sK1))
    | spl6_2 ),
    inference(resolution,[],[f98,f61])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

% (28212)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
fof(f25,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(f98,plain,
    ( ~ r1_xboole_0(k2_relat_1(sK1),sK0)
    | spl6_2 ),
    inference(avatar_component_clause,[],[f96])).

fof(f96,plain,
    ( spl6_2
  <=> r1_xboole_0(k2_relat_1(sK1),sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_2])])).

fof(f250,plain,
    ( r1_xboole_0(sK0,k2_relat_1(sK1))
    | spl6_7 ),
    inference(resolution,[],[f247,f59])).

fof(f59,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK3(X0,X1),X1)
          & r2_hidden(sK3(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f24,f36])).

fof(f36,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK3(X0,X1),X1)
        & r2_hidden(sK3(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_0)).

fof(f247,plain,
    ( ~ r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1))
    | spl6_7 ),
    inference(avatar_component_clause,[],[f245])).

fof(f245,plain,
    ( spl6_7
  <=> r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_7])])).

fof(f248,plain,
    ( ~ spl6_5
    | ~ spl6_7
    | ~ spl6_1
    | spl6_2 ),
    inference(avatar_split_clause,[],[f242,f96,f92,f245,f128])).

fof(f128,plain,
    ( spl6_5
  <=> v1_relat_1(sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_5])])).

fof(f92,plain,
    ( spl6_1
  <=> k1_xboole_0 = k10_relat_1(sK1,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_1])])).

fof(f242,plain,
    ( ~ r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1))
    | ~ v1_relat_1(sK1)
    | ~ spl6_1
    | spl6_2 ),
    inference(superposition,[],[f238,f53])).

fof(f53,plain,(
    ! [X0] :
      ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t146_relat_1)).

fof(f238,plain,
    ( ! [X0] : ~ r2_hidden(sK3(sK0,k2_relat_1(sK1)),k9_relat_1(sK1,X0))
    | ~ spl6_1
    | spl6_2 ),
    inference(resolution,[],[f237,f160])).

fof(f237,plain,
    ( ! [X0,X1] :
        ( r1_xboole_0(sK0,X0)
        | ~ r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X1)) )
    | ~ spl6_1 ),
    inference(condensation,[],[f234])).

fof(f234,plain,
    ( ! [X2,X0,X1] :
        ( ~ r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X1))
        | r1_xboole_0(sK0,X0)
        | ~ r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X2)) )
    | ~ spl6_1 ),
    inference(resolution,[],[f229,f163])).

fof(f163,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,k2_relat_1(sK1))
      | ~ r2_hidden(X0,k9_relat_1(sK1,X1)) ) ),
    inference(resolution,[],[f162,f120])).

fof(f120,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(k4_tarski(X0,X1),sK1)
      | r2_hidden(X1,k2_relat_1(sK1)) ) ),
    inference(resolution,[],[f64,f48])).

fof(f48,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f33])).

fof(f33,plain,
    ( ( ~ r1_xboole_0(k2_relat_1(sK1),sK0)
      | k1_xboole_0 != k10_relat_1(sK1,sK0) )
    & ( r1_xboole_0(k2_relat_1(sK1),sK0)
      | k1_xboole_0 = k10_relat_1(sK1,sK0) )
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f31,f32])).

fof(f32,plain,
    ( ? [X0,X1] :
        ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
          | k1_xboole_0 != k10_relat_1(X1,X0) )
        & ( r1_xboole_0(k2_relat_1(X1),X0)
          | k1_xboole_0 = k10_relat_1(X1,X0) )
        & v1_relat_1(X1) )
   => ( ( ~ r1_xboole_0(k2_relat_1(sK1),sK0)
        | k1_xboole_0 != k10_relat_1(sK1,sK0) )
      & ( r1_xboole_0(k2_relat_1(sK1),sK0)
        | k1_xboole_0 = k10_relat_1(sK1,sK0) )
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

% (28227)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
fof(f31,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 != k10_relat_1(X1,X0) )
      & ( r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 = k10_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f30])).

fof(f30,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 != k10_relat_1(X1,X0) )
      & ( r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 = k10_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f21,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k10_relat_1(X1,X0)
      <~> r1_xboole_0(k2_relat_1(X1),X0) )
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ( k1_xboole_0 = k10_relat_1(X1,X0)
        <=> r1_xboole_0(k2_relat_1(X1),X0) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f18,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k10_relat_1(X1,X0)
      <=> r1_xboole_0(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t173_relat_1)).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | r2_hidden(X1,k2_relat_1(X2)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X1,k2_relat_1(X2))
        & r2_hidden(X0,k1_relat_1(X2)) )
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X1,k2_relat_1(X2))
        & r2_hidden(X0,k1_relat_1(X2)) )
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(k4_tarski(X0,X1),X2)
       => ( r2_hidden(X1,k2_relat_1(X2))
          & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_relat_1)).

fof(f162,plain,(
    ! [X0,X1] :
      ( r2_hidden(k4_tarski(sK4(X0,X1,sK1),X0),sK1)
      | ~ r2_hidden(X0,k9_relat_1(sK1,X1)) ) ),
    inference(resolution,[],[f66,f48])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | ~ r2_hidden(X0,k9_relat_1(X2,X1))
      | r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f41,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ( r2_hidden(sK4(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2)
            & r2_hidden(sK4(X0,X1,X2),k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f39,f40])).

fof(f40,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X4,X0),X2)
          & r2_hidden(X4,k1_relat_1(X2)) )
     => ( r2_hidden(sK4(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2)
        & r2_hidden(sK4(X0,X1,X2),k1_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ? [X4] :
              ( r2_hidden(X4,X1)
              & r2_hidden(k4_tarski(X4,X0),X2)
              & r2_hidden(X4,k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(rectify,[],[f38])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k9_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X3,X0),X2)
              | ~ r2_hidden(X3,k1_relat_1(X2)) ) )
        & ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(k4_tarski(X3,X0),X2)
              & r2_hidden(X3,k1_relat_1(X2)) )
          | ~ r2_hidden(X0,k9_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k9_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X3,X0),X2)
            & r2_hidden(X3,k1_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t143_relat_1)).

fof(f229,plain,
    ( ! [X2,X1] :
        ( ~ r2_hidden(sK3(sK0,X1),k2_relat_1(sK1))
        | ~ r2_hidden(sK3(sK0,X1),k9_relat_1(sK1,X2))
        | r1_xboole_0(sK0,X1) )
    | ~ spl6_1 ),
    inference(resolution,[],[f226,f58])).

fof(f58,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f226,plain,
    ( ! [X0,X1] :
        ( ~ r2_hidden(X0,sK0)
        | ~ r2_hidden(X0,k2_relat_1(sK1))
        | ~ r2_hidden(X0,k9_relat_1(sK1,X1)) )
    | ~ spl6_1 ),
    inference(resolution,[],[f225,f162])).

fof(f225,plain,
    ( ! [X0,X1] :
        ( ~ r2_hidden(k4_tarski(X0,X1),sK1)
        | ~ r2_hidden(X1,k2_relat_1(sK1))
        | ~ r2_hidden(X1,sK0) )
    | ~ spl6_1 ),
    inference(resolution,[],[f178,f179])).

fof(f179,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(superposition,[],[f90,f86])).

fof(f86,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(k1_xboole_0,k1_setfam_1(k5_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X0))) ),
    inference(definition_unfolding,[],[f51,f84])).

% (28232)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
fof(f84,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f57,f83])).

fof(f83,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f55,f82])).

fof(f82,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k5_enumset1(X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f56,f81])).

fof(f81,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k5_enumset1(X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f62,f80])).

fof(f80,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k5_enumset1(X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f76,f79])).

fof(f79,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k5_enumset1(X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f77,f78])).

fof(f78,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(f77,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

% (28206)Refutation not found, incomplete strategy% (28206)------------------------------
% (28206)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% (28206)Termination reason: Refutation not found, incomplete strategy

% (28206)Memory used [KB]: 10746
% (28206)Time elapsed: 0.163 s
% (28206)------------------------------
% (28206)------------------------------
fof(f76,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f62,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f56,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f55,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f57,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f51,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).

fof(f90,plain,(
    ! [X2,X1] : ~ r2_hidden(X2,k5_xboole_0(X1,k1_setfam_1(k5_enumset1(X1,X1,X1,X1,X1,X1,k5_enumset1(X2,X2,X2,X2,X2,X2,X2))))) ),
    inference(equality_resolution,[],[f88])).

fof(f88,plain,(
    ! [X2,X0,X1] :
      ( X0 != X2
      | ~ r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k5_enumset1(X1,X1,X1,X1,X1,X1,k5_enumset1(X2,X2,X2,X2,X2,X2,X2))))) ) ),
    inference(definition_unfolding,[],[f74,f84,f85])).

fof(f85,plain,(
    ! [X0] : k1_tarski(X0) = k5_enumset1(X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f52,f82])).

fof(f52,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( X0 != X2
      | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f47,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(flattening,[],[f46])).

fof(f46,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
    <=> ( X0 != X2
        & r2_hidden(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_zfmisc_1)).

fof(f178,plain,
    ( ! [X0,X1] :
        ( r2_hidden(X0,k1_xboole_0)
        | ~ r2_hidden(k4_tarski(X0,X1),sK1)
        | ~ r2_hidden(X1,k2_relat_1(sK1))
        | ~ r2_hidden(X1,sK0) )
    | ~ spl6_1 ),
    inference(superposition,[],[f177,f93])).

fof(f93,plain,
    ( k1_xboole_0 = k10_relat_1(sK1,sK0)
    | ~ spl6_1 ),
    inference(avatar_component_clause,[],[f92])).

fof(f177,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,k10_relat_1(sK1,X1))
      | ~ r2_hidden(k4_tarski(X2,X0),sK1)
      | ~ r2_hidden(X0,k2_relat_1(sK1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(resolution,[],[f72,f48])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ v1_relat_1(X2)
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(k4_tarski(X0,X3),X2)
      | ~ r2_hidden(X3,k2_relat_1(X2))
      | r2_hidden(X0,k10_relat_1(X2,X1)) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f45,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ( r2_hidden(sK5(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(X0,sK5(X0,X1,X2)),X2)
            & r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f43,f44])).

fof(f44,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X0,X4),X2)
          & r2_hidden(X4,k2_relat_1(X2)) )
     => ( r2_hidden(sK5(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(X0,sK5(X0,X1,X2)),X2)
        & r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X4] :
              ( r2_hidden(X4,X1)
              & r2_hidden(k4_tarski(X0,X4),X2)
              & r2_hidden(X4,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(rectify,[],[f42])).

fof(f42,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(k4_tarski(X0,X3),X2)
              & r2_hidden(X3,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t166_relat_1)).

fof(f159,plain,
    ( spl6_1
    | ~ spl6_6 ),
    inference(avatar_contradiction_clause,[],[f158])).

fof(f158,plain,
    ( $false
    | spl6_1
    | ~ spl6_6 ),
    inference(trivial_inequality_removal,[],[f157])).

fof(f157,plain,
    ( k1_xboole_0 != k1_xboole_0
    | spl6_1
    | ~ spl6_6 ),
    inference(superposition,[],[f94,f137])).

fof(f137,plain,
    ( k1_xboole_0 = k10_relat_1(sK1,sK0)
    | ~ spl6_6 ),
    inference(resolution,[],[f133,f54])).

fof(f54,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f35,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f23,f34])).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

% (28219)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
fof(f23,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f133,plain,
    ( ! [X0] : ~ r2_hidden(X0,k10_relat_1(sK1,sK0))
    | ~ spl6_6 ),
    inference(avatar_component_clause,[],[f132])).

fof(f132,plain,
    ( spl6_6
  <=> ! [X0] : ~ r2_hidden(X0,k10_relat_1(sK1,sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_6])])).

fof(f94,plain,
    ( k1_xboole_0 != k10_relat_1(sK1,sK0)
    | spl6_1 ),
    inference(avatar_component_clause,[],[f92])).

fof(f136,plain,(
    spl6_5 ),
    inference(avatar_contradiction_clause,[],[f135])).

fof(f135,plain,
    ( $false
    | spl6_5 ),
    inference(resolution,[],[f130,f48])).

fof(f130,plain,
    ( ~ v1_relat_1(sK1)
    | spl6_5 ),
    inference(avatar_component_clause,[],[f128])).

fof(f134,plain,
    ( ~ spl6_5
    | spl6_6
    | ~ spl6_2 ),
    inference(avatar_split_clause,[],[f126,f96,f132,f128])).

fof(f126,plain,
    ( ! [X0] :
        ( ~ r2_hidden(X0,k10_relat_1(sK1,sK0))
        | ~ v1_relat_1(sK1) )
    | ~ spl6_2 ),
    inference(duplicate_literal_removal,[],[f125])).

fof(f125,plain,
    ( ! [X0] :
        ( ~ r2_hidden(X0,k10_relat_1(sK1,sK0))
        | ~ v1_relat_1(sK1)
        | ~ r2_hidden(X0,k10_relat_1(sK1,sK0)) )
    | ~ spl6_2 ),
    inference(resolution,[],[f69,f124])).

fof(f124,plain,
    ( ! [X0] :
        ( ~ r2_hidden(sK5(X0,sK0,sK1),k2_relat_1(sK1))
        | ~ r2_hidden(X0,k10_relat_1(sK1,sK0)) )
    | ~ spl6_2 ),
    inference(resolution,[],[f123,f101])).

% (28210)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
fof(f101,plain,
    ( ! [X0] :
        ( ~ r2_hidden(X0,sK0)
        | ~ r2_hidden(X0,k2_relat_1(sK1)) )
    | ~ spl6_2 ),
    inference(resolution,[],[f60,f97])).

fof(f97,plain,
    ( r1_xboole_0(k2_relat_1(sK1),sK0)
    | ~ spl6_2 ),
    inference(avatar_component_clause,[],[f96])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f123,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK5(X0,X1,sK1),X1)
      | ~ r2_hidden(X0,k10_relat_1(sK1,X1)) ) ),
    inference(resolution,[],[f71,f48])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | ~ r2_hidden(X0,k10_relat_1(X2,X1))
      | r2_hidden(sK5(X0,X1,X2),X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2))
      | ~ r2_hidden(X0,k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f100,plain,
    ( spl6_1
    | spl6_2 ),
    inference(avatar_split_clause,[],[f49,f96,f92])).

fof(f49,plain,
    ( r1_xboole_0(k2_relat_1(sK1),sK0)
    | k1_xboole_0 = k10_relat_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f99,plain,
    ( ~ spl6_1
    | ~ spl6_2 ),
    inference(avatar_split_clause,[],[f50,f96,f92])).

fof(f50,plain,
    ( ~ r1_xboole_0(k2_relat_1(sK1),sK0)
    | k1_xboole_0 != k10_relat_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f33])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n014.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 10:51:52 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.57  % (28208)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.58  % (28215)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.58  % (28231)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.58  % (28205)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.59  % (28216)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.59  % (28216)Refutation found. Thanks to Tanya!
% 0.22/0.59  % SZS status Theorem for theBenchmark
% 0.22/0.59  % (28224)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.59  % (28207)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.59  % (28223)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 1.84/0.60  % (28206)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 1.84/0.60  % (28209)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 1.84/0.60  % (28204)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 1.84/0.60  % SZS output start Proof for theBenchmark
% 1.84/0.60  fof(f257,plain,(
% 1.84/0.60    $false),
% 1.84/0.60    inference(avatar_sat_refutation,[],[f99,f100,f134,f136,f159,f248,f256])).
% 1.84/0.60  fof(f256,plain,(
% 1.84/0.60    spl6_2 | spl6_7),
% 1.84/0.60    inference(avatar_contradiction_clause,[],[f254])).
% 1.84/0.60  fof(f254,plain,(
% 1.84/0.60    $false | (spl6_2 | spl6_7)),
% 1.84/0.60    inference(resolution,[],[f250,f160])).
% 1.84/0.60  fof(f160,plain,(
% 1.84/0.60    ~r1_xboole_0(sK0,k2_relat_1(sK1)) | spl6_2),
% 1.84/0.60    inference(resolution,[],[f98,f61])).
% 1.84/0.60  fof(f61,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f25])).
% 1.84/0.60  % (28212)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 1.84/0.60  fof(f25,plain,(
% 1.84/0.60    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 1.84/0.60    inference(ennf_transformation,[],[f1])).
% 1.84/0.60  fof(f1,axiom,(
% 1.84/0.60    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).
% 1.84/0.60  fof(f98,plain,(
% 1.84/0.60    ~r1_xboole_0(k2_relat_1(sK1),sK0) | spl6_2),
% 1.84/0.60    inference(avatar_component_clause,[],[f96])).
% 1.84/0.60  fof(f96,plain,(
% 1.84/0.60    spl6_2 <=> r1_xboole_0(k2_relat_1(sK1),sK0)),
% 1.84/0.60    introduced(avatar_definition,[new_symbols(naming,[spl6_2])])).
% 1.84/0.60  fof(f250,plain,(
% 1.84/0.60    r1_xboole_0(sK0,k2_relat_1(sK1)) | spl6_7),
% 1.84/0.60    inference(resolution,[],[f247,f59])).
% 1.84/0.60  fof(f59,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f37])).
% 1.84/0.60  fof(f37,plain,(
% 1.84/0.60    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK3(X0,X1),X1) & r2_hidden(sK3(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 1.84/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f24,f36])).
% 1.84/0.60  fof(f36,plain,(
% 1.84/0.60    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK3(X0,X1),X1) & r2_hidden(sK3(X0,X1),X0)))),
% 1.84/0.60    introduced(choice_axiom,[])).
% 1.84/0.60  fof(f24,plain,(
% 1.84/0.60    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 1.84/0.60    inference(ennf_transformation,[],[f20])).
% 1.84/0.60  fof(f20,plain,(
% 1.84/0.60    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.84/0.60    inference(rectify,[],[f2])).
% 1.84/0.60  fof(f2,axiom,(
% 1.84/0.60    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_0)).
% 1.84/0.60  fof(f247,plain,(
% 1.84/0.60    ~r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1)) | spl6_7),
% 1.84/0.60    inference(avatar_component_clause,[],[f245])).
% 1.84/0.60  fof(f245,plain,(
% 1.84/0.60    spl6_7 <=> r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1))),
% 1.84/0.60    introduced(avatar_definition,[new_symbols(naming,[spl6_7])])).
% 1.84/0.60  fof(f248,plain,(
% 1.84/0.60    ~spl6_5 | ~spl6_7 | ~spl6_1 | spl6_2),
% 1.84/0.60    inference(avatar_split_clause,[],[f242,f96,f92,f245,f128])).
% 1.84/0.60  fof(f128,plain,(
% 1.84/0.60    spl6_5 <=> v1_relat_1(sK1)),
% 1.84/0.60    introduced(avatar_definition,[new_symbols(naming,[spl6_5])])).
% 1.84/0.60  fof(f92,plain,(
% 1.84/0.60    spl6_1 <=> k1_xboole_0 = k10_relat_1(sK1,sK0)),
% 1.84/0.60    introduced(avatar_definition,[new_symbols(naming,[spl6_1])])).
% 1.84/0.60  fof(f242,plain,(
% 1.84/0.60    ~r2_hidden(sK3(sK0,k2_relat_1(sK1)),k2_relat_1(sK1)) | ~v1_relat_1(sK1) | (~spl6_1 | spl6_2)),
% 1.84/0.60    inference(superposition,[],[f238,f53])).
% 1.84/0.60  fof(f53,plain,(
% 1.84/0.60    ( ! [X0] : (k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f22])).
% 1.84/0.60  fof(f22,plain,(
% 1.84/0.60    ! [X0] : (k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) | ~v1_relat_1(X0))),
% 1.84/0.60    inference(ennf_transformation,[],[f15])).
% 1.84/0.60  fof(f15,axiom,(
% 1.84/0.60    ! [X0] : (v1_relat_1(X0) => k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t146_relat_1)).
% 1.84/0.60  fof(f238,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(sK3(sK0,k2_relat_1(sK1)),k9_relat_1(sK1,X0))) ) | (~spl6_1 | spl6_2)),
% 1.84/0.60    inference(resolution,[],[f237,f160])).
% 1.84/0.60  fof(f237,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r1_xboole_0(sK0,X0) | ~r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X1))) ) | ~spl6_1),
% 1.84/0.60    inference(condensation,[],[f234])).
% 1.84/0.60  fof(f234,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (~r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X1)) | r1_xboole_0(sK0,X0) | ~r2_hidden(sK3(sK0,X0),k9_relat_1(sK1,X2))) ) | ~spl6_1),
% 1.84/0.60    inference(resolution,[],[f229,f163])).
% 1.84/0.60  fof(f163,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(X0,k2_relat_1(sK1)) | ~r2_hidden(X0,k9_relat_1(sK1,X1))) )),
% 1.84/0.60    inference(resolution,[],[f162,f120])).
% 1.84/0.60  fof(f120,plain,(
% 1.84/0.60    ( ! [X0,X1] : (~r2_hidden(k4_tarski(X0,X1),sK1) | r2_hidden(X1,k2_relat_1(sK1))) )),
% 1.84/0.60    inference(resolution,[],[f64,f48])).
% 1.84/0.60  fof(f48,plain,(
% 1.84/0.60    v1_relat_1(sK1)),
% 1.84/0.60    inference(cnf_transformation,[],[f33])).
% 1.84/0.60  fof(f33,plain,(
% 1.84/0.60    (~r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 != k10_relat_1(sK1,sK0)) & (r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 = k10_relat_1(sK1,sK0)) & v1_relat_1(sK1)),
% 1.84/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f31,f32])).
% 1.84/0.60  fof(f32,plain,(
% 1.84/0.60    ? [X0,X1] : ((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0)) & v1_relat_1(X1)) => ((~r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 != k10_relat_1(sK1,sK0)) & (r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 = k10_relat_1(sK1,sK0)) & v1_relat_1(sK1))),
% 1.84/0.60    introduced(choice_axiom,[])).
% 1.84/0.60  % (28227)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 1.84/0.60  fof(f31,plain,(
% 1.84/0.60    ? [X0,X1] : ((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0)) & v1_relat_1(X1))),
% 1.84/0.60    inference(flattening,[],[f30])).
% 1.84/0.60  fof(f30,plain,(
% 1.84/0.60    ? [X0,X1] : (((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0))) & v1_relat_1(X1))),
% 1.84/0.60    inference(nnf_transformation,[],[f21])).
% 1.84/0.60  fof(f21,plain,(
% 1.84/0.60    ? [X0,X1] : ((k1_xboole_0 = k10_relat_1(X1,X0) <~> r1_xboole_0(k2_relat_1(X1),X0)) & v1_relat_1(X1))),
% 1.84/0.60    inference(ennf_transformation,[],[f19])).
% 1.84/0.60  fof(f19,negated_conjecture,(
% 1.84/0.60    ~! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)))),
% 1.84/0.60    inference(negated_conjecture,[],[f18])).
% 1.84/0.60  fof(f18,conjecture,(
% 1.84/0.60    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t173_relat_1)).
% 1.84/0.60  fof(f64,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | ~r2_hidden(k4_tarski(X0,X1),X2) | r2_hidden(X1,k2_relat_1(X2))) )),
% 1.84/0.60    inference(cnf_transformation,[],[f27])).
% 1.84/0.60  fof(f27,plain,(
% 1.84/0.60    ! [X0,X1,X2] : ((r2_hidden(X1,k2_relat_1(X2)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(flattening,[],[f26])).
% 1.84/0.60  fof(f26,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X1,k2_relat_1(X2)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2)) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(ennf_transformation,[],[f17])).
% 1.84/0.60  fof(f17,axiom,(
% 1.84/0.60    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(k4_tarski(X0,X1),X2) => (r2_hidden(X1,k2_relat_1(X2)) & r2_hidden(X0,k1_relat_1(X2)))))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_relat_1)).
% 1.84/0.60  fof(f162,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(k4_tarski(sK4(X0,X1,sK1),X0),sK1) | ~r2_hidden(X0,k9_relat_1(sK1,X1))) )),
% 1.84/0.60    inference(resolution,[],[f66,f48])).
% 1.84/0.60  fof(f66,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | ~r2_hidden(X0,k9_relat_1(X2,X1)) | r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f41])).
% 1.84/0.60  fof(f41,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & ((r2_hidden(sK4(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2) & r2_hidden(sK4(X0,X1,X2),k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f39,f40])).
% 1.84/0.60  fof(f40,plain,(
% 1.84/0.60    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) => (r2_hidden(sK4(X0,X1,X2),X1) & r2_hidden(k4_tarski(sK4(X0,X1,X2),X0),X2) & r2_hidden(sK4(X0,X1,X2),k1_relat_1(X2))))),
% 1.84/0.60    introduced(choice_axiom,[])).
% 1.84/0.60  fof(f39,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X4,X0),X2) & r2_hidden(X4,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(rectify,[],[f38])).
% 1.84/0.60  fof(f38,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k9_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X3,X0),X2) | ~r2_hidden(X3,k1_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2))) | ~r2_hidden(X0,k9_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(nnf_transformation,[],[f28])).
% 1.84/0.60  fof(f28,plain,(
% 1.84/0.60    ! [X0,X1,X2] : ((r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(ennf_transformation,[],[f14])).
% 1.84/0.60  fof(f14,axiom,(
% 1.84/0.60    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k9_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X3,X0),X2) & r2_hidden(X3,k1_relat_1(X2)))))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t143_relat_1)).
% 1.84/0.60  fof(f229,plain,(
% 1.84/0.60    ( ! [X2,X1] : (~r2_hidden(sK3(sK0,X1),k2_relat_1(sK1)) | ~r2_hidden(sK3(sK0,X1),k9_relat_1(sK1,X2)) | r1_xboole_0(sK0,X1)) ) | ~spl6_1),
% 1.84/0.60    inference(resolution,[],[f226,f58])).
% 1.84/0.60  fof(f58,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f37])).
% 1.84/0.60  fof(f226,plain,(
% 1.84/0.60    ( ! [X0,X1] : (~r2_hidden(X0,sK0) | ~r2_hidden(X0,k2_relat_1(sK1)) | ~r2_hidden(X0,k9_relat_1(sK1,X1))) ) | ~spl6_1),
% 1.84/0.60    inference(resolution,[],[f225,f162])).
% 1.84/0.60  fof(f225,plain,(
% 1.84/0.60    ( ! [X0,X1] : (~r2_hidden(k4_tarski(X0,X1),sK1) | ~r2_hidden(X1,k2_relat_1(sK1)) | ~r2_hidden(X1,sK0)) ) | ~spl6_1),
% 1.84/0.60    inference(resolution,[],[f178,f179])).
% 1.84/0.60  fof(f179,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 1.84/0.60    inference(superposition,[],[f90,f86])).
% 1.84/0.60  fof(f86,plain,(
% 1.84/0.60    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(k1_xboole_0,k1_setfam_1(k5_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)))) )),
% 1.84/0.60    inference(definition_unfolding,[],[f51,f84])).
% 1.84/0.60  % (28232)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.84/0.60  fof(f84,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X1)))) )),
% 1.84/0.60    inference(definition_unfolding,[],[f57,f83])).
% 1.84/0.60  fof(f83,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k5_enumset1(X0,X0,X0,X0,X0,X0,X1))) )),
% 1.84/0.60    inference(definition_unfolding,[],[f55,f82])).
% 1.84/0.60  fof(f82,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k2_tarski(X0,X1) = k5_enumset1(X0,X0,X0,X0,X0,X0,X1)) )),
% 1.84/0.60    inference(definition_unfolding,[],[f56,f81])).
% 1.84/0.60  fof(f81,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k5_enumset1(X0,X0,X0,X0,X0,X1,X2)) )),
% 1.84/0.60    inference(definition_unfolding,[],[f62,f80])).
% 1.84/0.60  fof(f80,plain,(
% 1.84/0.60    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k5_enumset1(X0,X0,X0,X0,X1,X2,X3)) )),
% 1.84/0.60    inference(definition_unfolding,[],[f76,f79])).
% 1.84/0.60  fof(f79,plain,(
% 1.84/0.60    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k5_enumset1(X0,X0,X0,X1,X2,X3,X4)) )),
% 1.84/0.60    inference(definition_unfolding,[],[f77,f78])).
% 1.84/0.60  fof(f78,plain,(
% 1.84/0.60    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f11])).
% 1.84/0.60  fof(f11,axiom,(
% 1.84/0.60    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).
% 1.84/0.60  fof(f77,plain,(
% 1.84/0.60    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f10])).
% 1.84/0.60  fof(f10,axiom,(
% 1.84/0.60    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).
% 1.84/0.60  % (28206)Refutation not found, incomplete strategy% (28206)------------------------------
% 1.84/0.60  % (28206)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.84/0.60  % (28206)Termination reason: Refutation not found, incomplete strategy
% 1.84/0.60  
% 1.84/0.60  % (28206)Memory used [KB]: 10746
% 1.84/0.60  % (28206)Time elapsed: 0.163 s
% 1.84/0.60  % (28206)------------------------------
% 1.84/0.60  % (28206)------------------------------
% 1.84/0.60  fof(f76,plain,(
% 1.84/0.60    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f9])).
% 1.84/0.60  fof(f9,axiom,(
% 1.84/0.60    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 1.84/0.60  fof(f62,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f8])).
% 1.84/0.60  fof(f8,axiom,(
% 1.84/0.60    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.84/0.60  fof(f56,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f7])).
% 1.84/0.60  fof(f7,axiom,(
% 1.84/0.60    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.84/0.60  fof(f55,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 1.84/0.60    inference(cnf_transformation,[],[f13])).
% 1.84/0.60  fof(f13,axiom,(
% 1.84/0.60    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 1.84/0.60  fof(f57,plain,(
% 1.84/0.60    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.84/0.60    inference(cnf_transformation,[],[f4])).
% 1.84/0.60  fof(f4,axiom,(
% 1.84/0.60    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.84/0.60  fof(f51,plain,(
% 1.84/0.60    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f5])).
% 1.84/0.60  fof(f5,axiom,(
% 1.84/0.60    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).
% 1.84/0.60  fof(f90,plain,(
% 1.84/0.60    ( ! [X2,X1] : (~r2_hidden(X2,k5_xboole_0(X1,k1_setfam_1(k5_enumset1(X1,X1,X1,X1,X1,X1,k5_enumset1(X2,X2,X2,X2,X2,X2,X2)))))) )),
% 1.84/0.60    inference(equality_resolution,[],[f88])).
% 1.84/0.60  fof(f88,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (X0 != X2 | ~r2_hidden(X0,k5_xboole_0(X1,k1_setfam_1(k5_enumset1(X1,X1,X1,X1,X1,X1,k5_enumset1(X2,X2,X2,X2,X2,X2,X2)))))) )),
% 1.84/0.60    inference(definition_unfolding,[],[f74,f84,f85])).
% 1.84/0.60  fof(f85,plain,(
% 1.84/0.60    ( ! [X0] : (k1_tarski(X0) = k5_enumset1(X0,X0,X0,X0,X0,X0,X0)) )),
% 1.84/0.60    inference(definition_unfolding,[],[f52,f82])).
% 1.84/0.60  fof(f52,plain,(
% 1.84/0.60    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f6])).
% 1.84/0.60  fof(f6,axiom,(
% 1.84/0.60    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 1.84/0.60  fof(f74,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (X0 != X2 | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))) )),
% 1.84/0.60    inference(cnf_transformation,[],[f47])).
% 1.84/0.60  fof(f47,plain,(
% 1.84/0.60    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | X0 = X2 | ~r2_hidden(X0,X1)) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 1.84/0.60    inference(flattening,[],[f46])).
% 1.84/0.60  fof(f46,plain,(
% 1.84/0.60    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | (X0 = X2 | ~r2_hidden(X0,X1))) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 1.84/0.60    inference(nnf_transformation,[],[f12])).
% 1.84/0.60  fof(f12,axiom,(
% 1.84/0.60    ! [X0,X1,X2] : (r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) <=> (X0 != X2 & r2_hidden(X0,X1)))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_zfmisc_1)).
% 1.84/0.60  fof(f178,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(X0,k1_xboole_0) | ~r2_hidden(k4_tarski(X0,X1),sK1) | ~r2_hidden(X1,k2_relat_1(sK1)) | ~r2_hidden(X1,sK0)) ) | ~spl6_1),
% 1.84/0.60    inference(superposition,[],[f177,f93])).
% 1.84/0.60  fof(f93,plain,(
% 1.84/0.60    k1_xboole_0 = k10_relat_1(sK1,sK0) | ~spl6_1),
% 1.84/0.60    inference(avatar_component_clause,[],[f92])).
% 1.84/0.60  fof(f177,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (r2_hidden(X2,k10_relat_1(sK1,X1)) | ~r2_hidden(k4_tarski(X2,X0),sK1) | ~r2_hidden(X0,k2_relat_1(sK1)) | ~r2_hidden(X0,X1)) )),
% 1.84/0.60    inference(resolution,[],[f72,f48])).
% 1.84/0.60  fof(f72,plain,(
% 1.84/0.60    ( ! [X2,X0,X3,X1] : (~v1_relat_1(X2) | ~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)) | r2_hidden(X0,k10_relat_1(X2,X1))) )),
% 1.84/0.60    inference(cnf_transformation,[],[f45])).
% 1.84/0.60  fof(f45,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & ((r2_hidden(sK5(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK5(X0,X1,X2)),X2) & r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f43,f44])).
% 1.84/0.60  fof(f44,plain,(
% 1.84/0.60    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) => (r2_hidden(sK5(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK5(X0,X1,X2)),X2) & r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2))))),
% 1.84/0.60    introduced(choice_axiom,[])).
% 1.84/0.60  fof(f43,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(rectify,[],[f42])).
% 1.84/0.60  fof(f42,plain,(
% 1.84/0.60    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(nnf_transformation,[],[f29])).
% 1.84/0.60  fof(f29,plain,(
% 1.84/0.60    ! [X0,X1,X2] : ((r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))) | ~v1_relat_1(X2))),
% 1.84/0.60    inference(ennf_transformation,[],[f16])).
% 1.84/0.60  fof(f16,axiom,(
% 1.84/0.60    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))))),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t166_relat_1)).
% 1.84/0.60  fof(f159,plain,(
% 1.84/0.60    spl6_1 | ~spl6_6),
% 1.84/0.60    inference(avatar_contradiction_clause,[],[f158])).
% 1.84/0.60  fof(f158,plain,(
% 1.84/0.60    $false | (spl6_1 | ~spl6_6)),
% 1.84/0.60    inference(trivial_inequality_removal,[],[f157])).
% 1.84/0.60  fof(f157,plain,(
% 1.84/0.60    k1_xboole_0 != k1_xboole_0 | (spl6_1 | ~spl6_6)),
% 1.84/0.60    inference(superposition,[],[f94,f137])).
% 1.84/0.60  fof(f137,plain,(
% 1.84/0.60    k1_xboole_0 = k10_relat_1(sK1,sK0) | ~spl6_6),
% 1.84/0.60    inference(resolution,[],[f133,f54])).
% 1.84/0.60  fof(f54,plain,(
% 1.84/0.60    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 1.84/0.60    inference(cnf_transformation,[],[f35])).
% 1.84/0.60  fof(f35,plain,(
% 1.84/0.60    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 1.84/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f23,f34])).
% 1.84/0.60  fof(f34,plain,(
% 1.84/0.60    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 1.84/0.60    introduced(choice_axiom,[])).
% 1.84/0.60  % (28219)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 1.84/0.60  fof(f23,plain,(
% 1.84/0.60    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.84/0.60    inference(ennf_transformation,[],[f3])).
% 1.84/0.60  fof(f3,axiom,(
% 1.84/0.60    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.84/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).
% 1.84/0.60  fof(f133,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(X0,k10_relat_1(sK1,sK0))) ) | ~spl6_6),
% 1.84/0.60    inference(avatar_component_clause,[],[f132])).
% 1.84/0.60  fof(f132,plain,(
% 1.84/0.60    spl6_6 <=> ! [X0] : ~r2_hidden(X0,k10_relat_1(sK1,sK0))),
% 1.84/0.60    introduced(avatar_definition,[new_symbols(naming,[spl6_6])])).
% 1.84/0.60  fof(f94,plain,(
% 1.84/0.60    k1_xboole_0 != k10_relat_1(sK1,sK0) | spl6_1),
% 1.84/0.60    inference(avatar_component_clause,[],[f92])).
% 1.84/0.60  fof(f136,plain,(
% 1.84/0.60    spl6_5),
% 1.84/0.60    inference(avatar_contradiction_clause,[],[f135])).
% 1.84/0.60  fof(f135,plain,(
% 1.84/0.60    $false | spl6_5),
% 1.84/0.60    inference(resolution,[],[f130,f48])).
% 1.84/0.60  fof(f130,plain,(
% 1.84/0.60    ~v1_relat_1(sK1) | spl6_5),
% 1.84/0.60    inference(avatar_component_clause,[],[f128])).
% 1.84/0.60  fof(f134,plain,(
% 1.84/0.60    ~spl6_5 | spl6_6 | ~spl6_2),
% 1.84/0.60    inference(avatar_split_clause,[],[f126,f96,f132,f128])).
% 1.84/0.60  fof(f126,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(X0,k10_relat_1(sK1,sK0)) | ~v1_relat_1(sK1)) ) | ~spl6_2),
% 1.84/0.60    inference(duplicate_literal_removal,[],[f125])).
% 1.84/0.60  fof(f125,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(X0,k10_relat_1(sK1,sK0)) | ~v1_relat_1(sK1) | ~r2_hidden(X0,k10_relat_1(sK1,sK0))) ) | ~spl6_2),
% 1.84/0.60    inference(resolution,[],[f69,f124])).
% 1.84/0.60  fof(f124,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(sK5(X0,sK0,sK1),k2_relat_1(sK1)) | ~r2_hidden(X0,k10_relat_1(sK1,sK0))) ) | ~spl6_2),
% 1.84/0.60    inference(resolution,[],[f123,f101])).
% 1.84/0.60  % (28210)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 1.84/0.60  fof(f101,plain,(
% 1.84/0.60    ( ! [X0] : (~r2_hidden(X0,sK0) | ~r2_hidden(X0,k2_relat_1(sK1))) ) | ~spl6_2),
% 1.84/0.60    inference(resolution,[],[f60,f97])).
% 1.84/0.60  fof(f97,plain,(
% 1.84/0.60    r1_xboole_0(k2_relat_1(sK1),sK0) | ~spl6_2),
% 1.84/0.60    inference(avatar_component_clause,[],[f96])).
% 1.84/0.60  fof(f60,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f37])).
% 1.84/0.60  fof(f123,plain,(
% 1.84/0.60    ( ! [X0,X1] : (r2_hidden(sK5(X0,X1,sK1),X1) | ~r2_hidden(X0,k10_relat_1(sK1,X1))) )),
% 1.84/0.60    inference(resolution,[],[f71,f48])).
% 1.84/0.60  fof(f71,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | ~r2_hidden(X0,k10_relat_1(X2,X1)) | r2_hidden(sK5(X0,X1,X2),X1)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f45])).
% 1.84/0.60  fof(f69,plain,(
% 1.84/0.60    ( ! [X2,X0,X1] : (r2_hidden(sK5(X0,X1,X2),k2_relat_1(X2)) | ~r2_hidden(X0,k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 1.84/0.60    inference(cnf_transformation,[],[f45])).
% 1.84/0.60  fof(f100,plain,(
% 1.84/0.60    spl6_1 | spl6_2),
% 1.84/0.60    inference(avatar_split_clause,[],[f49,f96,f92])).
% 1.84/0.60  fof(f49,plain,(
% 1.84/0.60    r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 = k10_relat_1(sK1,sK0)),
% 1.84/0.60    inference(cnf_transformation,[],[f33])).
% 1.84/0.60  fof(f99,plain,(
% 1.84/0.60    ~spl6_1 | ~spl6_2),
% 1.84/0.60    inference(avatar_split_clause,[],[f50,f96,f92])).
% 1.84/0.60  fof(f50,plain,(
% 1.84/0.60    ~r1_xboole_0(k2_relat_1(sK1),sK0) | k1_xboole_0 != k10_relat_1(sK1,sK0)),
% 1.84/0.60    inference(cnf_transformation,[],[f33])).
% 1.84/0.60  % SZS output end Proof for theBenchmark
% 1.84/0.60  % (28216)------------------------------
% 1.84/0.60  % (28216)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.84/0.60  % (28216)Termination reason: Refutation
% 1.84/0.60  
% 1.84/0.60  % (28216)Memory used [KB]: 6268
% 1.84/0.60  % (28216)Time elapsed: 0.162 s
% 1.84/0.60  % (28216)------------------------------
% 1.84/0.60  % (28216)------------------------------
% 1.84/0.60  % (28213)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.84/0.61  % (28233)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 1.84/0.61  % (28203)Success in time 0.245 s
%------------------------------------------------------------------------------
