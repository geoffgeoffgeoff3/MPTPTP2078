%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:41:59 EST 2020

% Result     : Theorem 1.54s
% Output     : Refutation 1.54s
% Verified   : 
% Statistics : Number of formulae       :   84 ( 228 expanded)
%              Number of leaves         :   16 (  69 expanded)
%              Depth                    :   17
%              Number of atoms          :  241 ( 782 expanded)
%              Number of equality atoms :   64 ( 230 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f428,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f413,f414,f420,f421,f427])).

fof(f427,plain,(
    ~ spl6_4 ),
    inference(avatar_contradiction_clause,[],[f426])).

fof(f426,plain,
    ( $false
    | ~ spl6_4 ),
    inference(subsumption_resolution,[],[f423,f37])).

fof(f37,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,
    ( sK2 != sK3
    & k1_xboole_0 != sK3
    & k1_xboole_0 != sK2
    & k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f15,f20])).

fof(f20,plain,
    ( ? [X0,X1] :
        ( X0 != X1
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0) )
   => ( sK2 != sK3
      & k1_xboole_0 != sK3
      & k1_xboole_0 != sK2
      & k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0)
       => ( X0 = X1
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f12,conjecture,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0)
     => ( X0 = X1
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t114_zfmisc_1)).

fof(f423,plain,
    ( k1_xboole_0 = sK3
    | ~ spl6_4 ),
    inference(resolution,[],[f236,f42])).

fof(f42,plain,(
    ! [X0] :
      ( r2_hidden(sK4(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( r2_hidden(sK4(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f16,f22])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK4(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f236,plain,
    ( ! [X10] : ~ r2_hidden(X10,sK3)
    | ~ spl6_4 ),
    inference(avatar_component_clause,[],[f235])).

fof(f235,plain,
    ( spl6_4
  <=> ! [X10] : ~ r2_hidden(X10,sK3) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_4])])).

fof(f421,plain,
    ( spl6_4
    | spl6_3 ),
    inference(avatar_split_clause,[],[f240,f232,f235])).

fof(f232,plain,
    ( spl6_3
  <=> ! [X11] :
        ( ~ r2_hidden(X11,sK2)
        | r2_hidden(X11,sK3) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_3])])).

fof(f240,plain,(
    ! [X4,X5] :
      ( ~ r2_hidden(X4,sK2)
      | ~ r2_hidden(X5,sK3)
      | r2_hidden(X4,sK3) ) ),
    inference(resolution,[],[f223,f59])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
      | r2_hidden(X1,X3) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f33])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(f223,plain,(
    ! [X0,X1] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(sK2,sK3))
      | ~ r2_hidden(X1,sK2)
      | ~ r2_hidden(X0,sK3) ) ),
    inference(superposition,[],[f60,f35])).

fof(f35,plain,(
    k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f21])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
      | ~ r2_hidden(X1,X3)
      | ~ r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f420,plain,(
    ~ spl6_1 ),
    inference(avatar_contradiction_clause,[],[f419])).

fof(f419,plain,
    ( $false
    | ~ spl6_1 ),
    inference(subsumption_resolution,[],[f416,f36])).

fof(f36,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f21])).

fof(f416,plain,
    ( k1_xboole_0 = sK2
    | ~ spl6_1 ),
    inference(resolution,[],[f226,f42])).

fof(f226,plain,
    ( ! [X9] : ~ r2_hidden(X9,sK2)
    | ~ spl6_1 ),
    inference(avatar_component_clause,[],[f225])).

fof(f225,plain,
    ( spl6_1
  <=> ! [X9] : ~ r2_hidden(X9,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_1])])).

fof(f414,plain,
    ( spl6_2
    | spl6_1 ),
    inference(avatar_split_clause,[],[f241,f225,f228])).

fof(f228,plain,
    ( spl6_2
  <=> ! [X8] :
        ( ~ r2_hidden(X8,sK3)
        | r2_hidden(X8,sK2) ) ),
    introduced(avatar_definition,[new_symbols(naming,[spl6_2])])).

fof(f241,plain,(
    ! [X6,X7] :
      ( ~ r2_hidden(X6,sK2)
      | ~ r2_hidden(X7,sK3)
      | r2_hidden(X7,sK2) ) ),
    inference(resolution,[],[f223,f58])).

fof(f58,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
      | r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f413,plain,
    ( ~ spl6_2
    | ~ spl6_3 ),
    inference(avatar_contradiction_clause,[],[f412])).

fof(f412,plain,
    ( $false
    | ~ spl6_2
    | ~ spl6_3 ),
    inference(subsumption_resolution,[],[f408,f38])).

fof(f38,plain,(
    sK2 != sK3 ),
    inference(cnf_transformation,[],[f21])).

fof(f408,plain,
    ( sK2 = sK3
    | ~ spl6_2
    | ~ spl6_3 ),
    inference(resolution,[],[f334,f70])).

fof(f70,plain,(
    ! [X2,X3] :
      ( ~ sP1(X2,k1_xboole_0,X3)
      | X2 = X3 ) ),
    inference(superposition,[],[f57,f40])).

fof(f40,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | ~ sP1(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ~ sP1(X0,X1,X2) )
      & ( sP1(X0,X1,X2)
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> sP1(X0,X1,X2) ) ),
    inference(definition_folding,[],[f2,f18,f17])).

fof(f17,plain,(
    ! [X1,X3,X0] :
      ( sP0(X1,X3,X0)
    <=> ( ~ r2_hidden(X3,X1)
        & r2_hidden(X3,X0) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( sP1(X0,X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> sP0(X1,X3,X0) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

fof(f334,plain,
    ( sP1(sK3,k1_xboole_0,sK2)
    | ~ spl6_2
    | ~ spl6_3 ),
    inference(forward_demodulation,[],[f333,f287])).

fof(f287,plain,
    ( k1_xboole_0 = k4_xboole_0(sK3,sK2)
    | ~ spl6_2 ),
    inference(duplicate_literal_removal,[],[f278])).

fof(f278,plain,
    ( k1_xboole_0 = k4_xboole_0(sK3,sK2)
    | k1_xboole_0 = k4_xboole_0(sK3,sK2)
    | ~ spl6_2 ),
    inference(resolution,[],[f210,f246])).

fof(f246,plain,
    ( ! [X3] :
        ( ~ r2_hidden(sK4(k4_xboole_0(X3,sK2)),sK3)
        | k1_xboole_0 = k4_xboole_0(X3,sK2) )
    | ~ spl6_2 ),
    inference(resolution,[],[f209,f229])).

fof(f229,plain,
    ( ! [X8] :
        ( r2_hidden(X8,sK2)
        | ~ r2_hidden(X8,sK3) )
    | ~ spl6_2 ),
    inference(avatar_component_clause,[],[f228])).

fof(f209,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK4(k4_xboole_0(X0,X1)),X1)
      | k4_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(resolution,[],[f92,f54])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X0,X1,X2)
      | ~ r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | r2_hidden(X1,X0)
        | ~ r2_hidden(X1,X2) )
      & ( ( ~ r2_hidden(X1,X0)
          & r2_hidden(X1,X2) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(rectify,[],[f30])).

fof(f30,plain,(
    ! [X1,X3,X0] :
      ( ( sP0(X1,X3,X0)
        | r2_hidden(X3,X1)
        | ~ r2_hidden(X3,X0) )
      & ( ( ~ r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
        | ~ sP0(X1,X3,X0) ) ) ),
    inference(flattening,[],[f29])).

fof(f29,plain,(
    ! [X1,X3,X0] :
      ( ( sP0(X1,X3,X0)
        | r2_hidden(X3,X1)
        | ~ r2_hidden(X3,X0) )
      & ( ( ~ r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
        | ~ sP0(X1,X3,X0) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f92,plain,(
    ! [X0,X1] :
      ( sP0(X0,sK4(k4_xboole_0(X1,X0)),X1)
      | k1_xboole_0 = k4_xboole_0(X1,X0) ) ),
    inference(resolution,[],[f85,f42])).

fof(f85,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k4_xboole_0(X1,X2))
      | sP0(X2,X0,X1) ) ),
    inference(resolution,[],[f49,f66])).

fof(f66,plain,(
    ! [X0,X1] : sP1(X0,X1,k4_xboole_0(X0,X1)) ),
    inference(equality_resolution,[],[f56])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( sP1(X0,X1,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f49,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ sP1(X0,X1,X2)
      | ~ r2_hidden(X4,X2)
      | sP0(X1,X4,X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( sP1(X0,X1,X2)
        | ( ( ~ sP0(X1,sK5(X0,X1,X2),X0)
            | ~ r2_hidden(sK5(X0,X1,X2),X2) )
          & ( sP0(X1,sK5(X0,X1,X2),X0)
            | r2_hidden(sK5(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ sP0(X1,X4,X0) )
            & ( sP0(X1,X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | ~ sP1(X0,X1,X2) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f26,f27])).

fof(f27,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ sP0(X1,X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( sP0(X1,X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ~ sP0(X1,sK5(X0,X1,X2),X0)
          | ~ r2_hidden(sK5(X0,X1,X2),X2) )
        & ( sP0(X1,sK5(X0,X1,X2),X0)
          | r2_hidden(sK5(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( sP1(X0,X1,X2)
        | ? [X3] :
            ( ( ~ sP0(X1,X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( sP0(X1,X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ sP0(X1,X4,X0) )
            & ( sP0(X1,X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | ~ sP1(X0,X1,X2) ) ) ),
    inference(rectify,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( sP1(X0,X1,X2)
        | ? [X3] :
            ( ( ~ sP0(X1,X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( sP0(X1,X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ sP0(X1,X3,X0) )
            & ( sP0(X1,X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | ~ sP1(X0,X1,X2) ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f210,plain,(
    ! [X2,X3] :
      ( r2_hidden(sK4(k4_xboole_0(X2,X3)),X2)
      | k1_xboole_0 = k4_xboole_0(X2,X3) ) ),
    inference(resolution,[],[f92,f53])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X0,X1,X2)
      | r2_hidden(X1,X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f333,plain,
    ( sP1(sK3,k4_xboole_0(sK3,sK2),sK2)
    | ~ spl6_3 ),
    inference(forward_demodulation,[],[f327,f40])).

fof(f327,plain,
    ( sP1(sK3,k4_xboole_0(sK3,sK2),k4_xboole_0(sK2,k1_xboole_0))
    | ~ spl6_3 ),
    inference(superposition,[],[f117,f288])).

fof(f288,plain,
    ( k1_xboole_0 = k4_xboole_0(sK2,sK3)
    | ~ spl6_3 ),
    inference(duplicate_literal_removal,[],[f277])).

fof(f277,plain,
    ( k1_xboole_0 = k4_xboole_0(sK2,sK3)
    | k1_xboole_0 = k4_xboole_0(sK2,sK3)
    | ~ spl6_3 ),
    inference(resolution,[],[f210,f247])).

fof(f247,plain,
    ( ! [X4] :
        ( ~ r2_hidden(sK4(k4_xboole_0(X4,sK3)),sK2)
        | k1_xboole_0 = k4_xboole_0(X4,sK3) )
    | ~ spl6_3 ),
    inference(resolution,[],[f209,f233])).

fof(f233,plain,
    ( ! [X11] :
        ( r2_hidden(X11,sK3)
        | ~ r2_hidden(X11,sK2) )
    | ~ spl6_3 ),
    inference(avatar_component_clause,[],[f232])).

fof(f117,plain,(
    ! [X10,X11] : sP1(X10,k4_xboole_0(X10,X11),k4_xboole_0(X11,k4_xboole_0(X11,X10))) ),
    inference(superposition,[],[f66,f63])).

fof(f63,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f43,f45,f45])).

fof(f45,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f43,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:03:23 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.48  % (8642)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.21/0.49  % (8634)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.49  % (8625)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.50  % (8642)Refutation not found, incomplete strategy% (8642)------------------------------
% 0.21/0.50  % (8642)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (8635)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.21/0.51  % (8623)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.21/0.51  % (8642)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (8642)Memory used [KB]: 10746
% 0.21/0.51  % (8642)Time elapsed: 0.096 s
% 0.21/0.51  % (8642)------------------------------
% 0.21/0.51  % (8642)------------------------------
% 0.21/0.52  % (8630)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.21/0.52  % (8623)Refutation not found, incomplete strategy% (8623)------------------------------
% 0.21/0.52  % (8623)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (8623)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.52  
% 0.21/0.52  % (8623)Memory used [KB]: 10746
% 0.21/0.52  % (8623)Time elapsed: 0.104 s
% 0.21/0.52  % (8623)------------------------------
% 0.21/0.52  % (8623)------------------------------
% 0.21/0.52  % (8627)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.21/0.53  % (8621)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.21/0.53  % (8626)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.21/0.53  % (8621)Refutation not found, incomplete strategy% (8621)------------------------------
% 0.21/0.53  % (8621)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.53  % (8621)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.53  
% 0.21/0.53  % (8621)Memory used [KB]: 1663
% 0.21/0.53  % (8621)Time elapsed: 0.112 s
% 0.21/0.53  % (8621)------------------------------
% 0.21/0.53  % (8621)------------------------------
% 0.21/0.53  % (8645)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.21/0.53  % (8637)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.21/0.53  % (8636)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.21/0.53  % (8644)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.21/0.53  % (8647)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.21/0.53  % (8638)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.21/0.53  % (8624)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.21/0.54  % (8633)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.21/0.54  % (8649)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.21/0.54  % (8633)Refutation not found, incomplete strategy% (8633)------------------------------
% 0.21/0.54  % (8633)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.54  % (8633)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.54  
% 0.21/0.54  % (8633)Memory used [KB]: 10618
% 0.21/0.54  % (8633)Time elapsed: 0.098 s
% 0.21/0.54  % (8633)------------------------------
% 0.21/0.54  % (8633)------------------------------
% 0.21/0.54  % (8643)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.21/0.54  % (8622)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.21/0.54  % (8629)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.21/0.54  % (8646)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.21/0.54  % (8628)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 1.37/0.54  % (8640)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.37/0.55  % (8648)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 1.37/0.55  % (8651)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.37/0.55  % (8652)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 1.37/0.55  % (8644)Refutation not found, incomplete strategy% (8644)------------------------------
% 1.37/0.55  % (8644)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.55  % (8641)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 1.37/0.55  % (8639)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 1.37/0.55  % (8639)Refutation not found, incomplete strategy% (8639)------------------------------
% 1.37/0.55  % (8639)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.55  % (8639)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.55  
% 1.37/0.55  % (8639)Memory used [KB]: 10618
% 1.37/0.55  % (8639)Time elapsed: 0.147 s
% 1.37/0.55  % (8639)------------------------------
% 1.37/0.55  % (8639)------------------------------
% 1.37/0.55  % (8631)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 1.37/0.55  % (8631)Refutation not found, incomplete strategy% (8631)------------------------------
% 1.37/0.55  % (8631)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.55  % (8631)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.55  
% 1.37/0.55  % (8631)Memory used [KB]: 10618
% 1.37/0.55  % (8631)Time elapsed: 0.149 s
% 1.37/0.55  % (8631)------------------------------
% 1.37/0.55  % (8631)------------------------------
% 1.54/0.56  % (8649)Refutation found. Thanks to Tanya!
% 1.54/0.56  % SZS status Theorem for theBenchmark
% 1.54/0.56  % (8644)Termination reason: Refutation not found, incomplete strategy
% 1.54/0.56  
% 1.54/0.56  % (8644)Memory used [KB]: 10746
% 1.54/0.56  % (8644)Time elapsed: 0.143 s
% 1.54/0.56  % (8644)------------------------------
% 1.54/0.56  % (8644)------------------------------
% 1.54/0.58  % SZS output start Proof for theBenchmark
% 1.54/0.58  fof(f428,plain,(
% 1.54/0.58    $false),
% 1.54/0.58    inference(avatar_sat_refutation,[],[f413,f414,f420,f421,f427])).
% 1.54/0.58  fof(f427,plain,(
% 1.54/0.58    ~spl6_4),
% 1.54/0.58    inference(avatar_contradiction_clause,[],[f426])).
% 1.54/0.58  fof(f426,plain,(
% 1.54/0.58    $false | ~spl6_4),
% 1.54/0.58    inference(subsumption_resolution,[],[f423,f37])).
% 1.54/0.58  fof(f37,plain,(
% 1.54/0.58    k1_xboole_0 != sK3),
% 1.54/0.58    inference(cnf_transformation,[],[f21])).
% 1.54/0.58  fof(f21,plain,(
% 1.54/0.58    sK2 != sK3 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2)),
% 1.54/0.58    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f15,f20])).
% 1.54/0.58  fof(f20,plain,(
% 1.54/0.58    ? [X0,X1] : (X0 != X1 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0)) => (sK2 != sK3 & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2))),
% 1.54/0.58    introduced(choice_axiom,[])).
% 1.54/0.58  fof(f15,plain,(
% 1.54/0.58    ? [X0,X1] : (X0 != X1 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0))),
% 1.54/0.58    inference(flattening,[],[f14])).
% 1.54/0.58  fof(f14,plain,(
% 1.54/0.58    ? [X0,X1] : ((X0 != X1 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0))),
% 1.54/0.58    inference(ennf_transformation,[],[f13])).
% 1.54/0.58  fof(f13,negated_conjecture,(
% 1.54/0.58    ~! [X0,X1] : (k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0) => (X0 = X1 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.54/0.58    inference(negated_conjecture,[],[f12])).
% 1.54/0.58  fof(f12,conjecture,(
% 1.54/0.58    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k2_zfmisc_1(X1,X0) => (X0 = X1 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t114_zfmisc_1)).
% 1.54/0.58  fof(f423,plain,(
% 1.54/0.58    k1_xboole_0 = sK3 | ~spl6_4),
% 1.54/0.58    inference(resolution,[],[f236,f42])).
% 1.54/0.58  fof(f42,plain,(
% 1.54/0.58    ( ! [X0] : (r2_hidden(sK4(X0),X0) | k1_xboole_0 = X0) )),
% 1.54/0.58    inference(cnf_transformation,[],[f23])).
% 1.54/0.58  fof(f23,plain,(
% 1.54/0.58    ! [X0] : (r2_hidden(sK4(X0),X0) | k1_xboole_0 = X0)),
% 1.54/0.58    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f16,f22])).
% 1.54/0.58  fof(f22,plain,(
% 1.54/0.58    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK4(X0),X0))),
% 1.54/0.58    introduced(choice_axiom,[])).
% 1.54/0.58  fof(f16,plain,(
% 1.54/0.58    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.54/0.58    inference(ennf_transformation,[],[f3])).
% 1.54/0.58  fof(f3,axiom,(
% 1.54/0.58    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).
% 1.54/0.58  fof(f236,plain,(
% 1.54/0.58    ( ! [X10] : (~r2_hidden(X10,sK3)) ) | ~spl6_4),
% 1.54/0.58    inference(avatar_component_clause,[],[f235])).
% 1.54/0.58  fof(f235,plain,(
% 1.54/0.58    spl6_4 <=> ! [X10] : ~r2_hidden(X10,sK3)),
% 1.54/0.58    introduced(avatar_definition,[new_symbols(naming,[spl6_4])])).
% 1.54/0.58  fof(f421,plain,(
% 1.54/0.58    spl6_4 | spl6_3),
% 1.54/0.58    inference(avatar_split_clause,[],[f240,f232,f235])).
% 1.54/0.58  fof(f232,plain,(
% 1.54/0.58    spl6_3 <=> ! [X11] : (~r2_hidden(X11,sK2) | r2_hidden(X11,sK3))),
% 1.54/0.58    introduced(avatar_definition,[new_symbols(naming,[spl6_3])])).
% 1.54/0.58  fof(f240,plain,(
% 1.54/0.58    ( ! [X4,X5] : (~r2_hidden(X4,sK2) | ~r2_hidden(X5,sK3) | r2_hidden(X4,sK3)) )),
% 1.54/0.58    inference(resolution,[],[f223,f59])).
% 1.54/0.58  fof(f59,plain,(
% 1.54/0.58    ( ! [X2,X0,X3,X1] : (~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | r2_hidden(X1,X3)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f34])).
% 1.54/0.58  fof(f34,plain,(
% 1.54/0.58    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 1.54/0.58    inference(flattening,[],[f33])).
% 1.54/0.58  fof(f33,plain,(
% 1.54/0.58    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 1.54/0.58    inference(nnf_transformation,[],[f10])).
% 1.54/0.58  fof(f10,axiom,(
% 1.54/0.58    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l54_zfmisc_1)).
% 1.54/0.58  fof(f223,plain,(
% 1.54/0.58    ( ! [X0,X1] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(sK2,sK3)) | ~r2_hidden(X1,sK2) | ~r2_hidden(X0,sK3)) )),
% 1.54/0.58    inference(superposition,[],[f60,f35])).
% 1.54/0.58  fof(f35,plain,(
% 1.54/0.58    k2_zfmisc_1(sK2,sK3) = k2_zfmisc_1(sK3,sK2)),
% 1.54/0.58    inference(cnf_transformation,[],[f21])).
% 1.54/0.58  fof(f60,plain,(
% 1.54/0.58    ( ! [X2,X0,X3,X1] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f34])).
% 1.54/0.58  fof(f420,plain,(
% 1.54/0.58    ~spl6_1),
% 1.54/0.58    inference(avatar_contradiction_clause,[],[f419])).
% 1.54/0.58  fof(f419,plain,(
% 1.54/0.58    $false | ~spl6_1),
% 1.54/0.58    inference(subsumption_resolution,[],[f416,f36])).
% 1.54/0.58  fof(f36,plain,(
% 1.54/0.58    k1_xboole_0 != sK2),
% 1.54/0.58    inference(cnf_transformation,[],[f21])).
% 1.54/0.58  fof(f416,plain,(
% 1.54/0.58    k1_xboole_0 = sK2 | ~spl6_1),
% 1.54/0.58    inference(resolution,[],[f226,f42])).
% 1.54/0.58  fof(f226,plain,(
% 1.54/0.58    ( ! [X9] : (~r2_hidden(X9,sK2)) ) | ~spl6_1),
% 1.54/0.58    inference(avatar_component_clause,[],[f225])).
% 1.54/0.58  fof(f225,plain,(
% 1.54/0.58    spl6_1 <=> ! [X9] : ~r2_hidden(X9,sK2)),
% 1.54/0.58    introduced(avatar_definition,[new_symbols(naming,[spl6_1])])).
% 1.54/0.58  fof(f414,plain,(
% 1.54/0.58    spl6_2 | spl6_1),
% 1.54/0.58    inference(avatar_split_clause,[],[f241,f225,f228])).
% 1.54/0.58  fof(f228,plain,(
% 1.54/0.58    spl6_2 <=> ! [X8] : (~r2_hidden(X8,sK3) | r2_hidden(X8,sK2))),
% 1.54/0.58    introduced(avatar_definition,[new_symbols(naming,[spl6_2])])).
% 1.54/0.58  fof(f241,plain,(
% 1.54/0.58    ( ! [X6,X7] : (~r2_hidden(X6,sK2) | ~r2_hidden(X7,sK3) | r2_hidden(X7,sK2)) )),
% 1.54/0.58    inference(resolution,[],[f223,f58])).
% 1.54/0.58  fof(f58,plain,(
% 1.54/0.58    ( ! [X2,X0,X3,X1] : (~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | r2_hidden(X0,X2)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f34])).
% 1.54/0.58  fof(f413,plain,(
% 1.54/0.58    ~spl6_2 | ~spl6_3),
% 1.54/0.58    inference(avatar_contradiction_clause,[],[f412])).
% 1.54/0.58  fof(f412,plain,(
% 1.54/0.58    $false | (~spl6_2 | ~spl6_3)),
% 1.54/0.58    inference(subsumption_resolution,[],[f408,f38])).
% 1.54/0.58  fof(f38,plain,(
% 1.54/0.58    sK2 != sK3),
% 1.54/0.58    inference(cnf_transformation,[],[f21])).
% 1.54/0.58  fof(f408,plain,(
% 1.54/0.58    sK2 = sK3 | (~spl6_2 | ~spl6_3)),
% 1.54/0.58    inference(resolution,[],[f334,f70])).
% 1.54/0.58  fof(f70,plain,(
% 1.54/0.58    ( ! [X2,X3] : (~sP1(X2,k1_xboole_0,X3) | X2 = X3) )),
% 1.54/0.58    inference(superposition,[],[f57,f40])).
% 1.54/0.58  fof(f40,plain,(
% 1.54/0.58    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.54/0.58    inference(cnf_transformation,[],[f4])).
% 1.54/0.58  fof(f4,axiom,(
% 1.54/0.58    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).
% 1.54/0.58  fof(f57,plain,(
% 1.54/0.58    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | ~sP1(X0,X1,X2)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f32])).
% 1.54/0.58  fof(f32,plain,(
% 1.54/0.58    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ~sP1(X0,X1,X2)) & (sP1(X0,X1,X2) | k4_xboole_0(X0,X1) != X2))),
% 1.54/0.58    inference(nnf_transformation,[],[f19])).
% 1.54/0.58  fof(f19,plain,(
% 1.54/0.58    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> sP1(X0,X1,X2))),
% 1.54/0.58    inference(definition_folding,[],[f2,f18,f17])).
% 1.54/0.58  fof(f17,plain,(
% 1.54/0.58    ! [X1,X3,X0] : (sP0(X1,X3,X0) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0)))),
% 1.54/0.58    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 1.54/0.58  fof(f18,plain,(
% 1.54/0.58    ! [X0,X1,X2] : (sP1(X0,X1,X2) <=> ! [X3] : (r2_hidden(X3,X2) <=> sP0(X1,X3,X0)))),
% 1.54/0.58    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).
% 1.54/0.58  fof(f2,axiom,(
% 1.54/0.58    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).
% 1.54/0.58  fof(f334,plain,(
% 1.54/0.58    sP1(sK3,k1_xboole_0,sK2) | (~spl6_2 | ~spl6_3)),
% 1.54/0.58    inference(forward_demodulation,[],[f333,f287])).
% 1.54/0.58  fof(f287,plain,(
% 1.54/0.58    k1_xboole_0 = k4_xboole_0(sK3,sK2) | ~spl6_2),
% 1.54/0.58    inference(duplicate_literal_removal,[],[f278])).
% 1.54/0.58  fof(f278,plain,(
% 1.54/0.58    k1_xboole_0 = k4_xboole_0(sK3,sK2) | k1_xboole_0 = k4_xboole_0(sK3,sK2) | ~spl6_2),
% 1.54/0.58    inference(resolution,[],[f210,f246])).
% 1.54/0.58  fof(f246,plain,(
% 1.54/0.58    ( ! [X3] : (~r2_hidden(sK4(k4_xboole_0(X3,sK2)),sK3) | k1_xboole_0 = k4_xboole_0(X3,sK2)) ) | ~spl6_2),
% 1.54/0.58    inference(resolution,[],[f209,f229])).
% 1.54/0.58  fof(f229,plain,(
% 1.54/0.58    ( ! [X8] : (r2_hidden(X8,sK2) | ~r2_hidden(X8,sK3)) ) | ~spl6_2),
% 1.54/0.58    inference(avatar_component_clause,[],[f228])).
% 1.54/0.58  fof(f209,plain,(
% 1.54/0.58    ( ! [X0,X1] : (~r2_hidden(sK4(k4_xboole_0(X0,X1)),X1) | k4_xboole_0(X0,X1) = k1_xboole_0) )),
% 1.54/0.58    inference(resolution,[],[f92,f54])).
% 1.54/0.58  fof(f54,plain,(
% 1.54/0.58    ( ! [X2,X0,X1] : (~sP0(X0,X1,X2) | ~r2_hidden(X1,X0)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f31])).
% 1.54/0.58  fof(f31,plain,(
% 1.54/0.58    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | r2_hidden(X1,X0) | ~r2_hidden(X1,X2)) & ((~r2_hidden(X1,X0) & r2_hidden(X1,X2)) | ~sP0(X0,X1,X2)))),
% 1.54/0.58    inference(rectify,[],[f30])).
% 1.54/0.58  fof(f30,plain,(
% 1.54/0.58    ! [X1,X3,X0] : ((sP0(X1,X3,X0) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~sP0(X1,X3,X0)))),
% 1.54/0.58    inference(flattening,[],[f29])).
% 1.54/0.58  fof(f29,plain,(
% 1.54/0.58    ! [X1,X3,X0] : ((sP0(X1,X3,X0) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~sP0(X1,X3,X0)))),
% 1.54/0.58    inference(nnf_transformation,[],[f17])).
% 1.54/0.58  fof(f92,plain,(
% 1.54/0.58    ( ! [X0,X1] : (sP0(X0,sK4(k4_xboole_0(X1,X0)),X1) | k1_xboole_0 = k4_xboole_0(X1,X0)) )),
% 1.54/0.58    inference(resolution,[],[f85,f42])).
% 1.54/0.58  fof(f85,plain,(
% 1.54/0.58    ( ! [X2,X0,X1] : (~r2_hidden(X0,k4_xboole_0(X1,X2)) | sP0(X2,X0,X1)) )),
% 1.54/0.58    inference(resolution,[],[f49,f66])).
% 1.54/0.58  fof(f66,plain,(
% 1.54/0.58    ( ! [X0,X1] : (sP1(X0,X1,k4_xboole_0(X0,X1))) )),
% 1.54/0.58    inference(equality_resolution,[],[f56])).
% 1.54/0.58  fof(f56,plain,(
% 1.54/0.58    ( ! [X2,X0,X1] : (sP1(X0,X1,X2) | k4_xboole_0(X0,X1) != X2) )),
% 1.54/0.58    inference(cnf_transformation,[],[f32])).
% 1.54/0.58  fof(f49,plain,(
% 1.54/0.58    ( ! [X4,X2,X0,X1] : (~sP1(X0,X1,X2) | ~r2_hidden(X4,X2) | sP0(X1,X4,X0)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f28])).
% 1.54/0.58  fof(f28,plain,(
% 1.54/0.58    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ((~sP0(X1,sK5(X0,X1,X2),X0) | ~r2_hidden(sK5(X0,X1,X2),X2)) & (sP0(X1,sK5(X0,X1,X2),X0) | r2_hidden(sK5(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~sP0(X1,X4,X0)) & (sP0(X1,X4,X0) | ~r2_hidden(X4,X2))) | ~sP1(X0,X1,X2)))),
% 1.54/0.58    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f26,f27])).
% 1.54/0.58  fof(f27,plain,(
% 1.54/0.58    ! [X2,X1,X0] : (? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2))) => ((~sP0(X1,sK5(X0,X1,X2),X0) | ~r2_hidden(sK5(X0,X1,X2),X2)) & (sP0(X1,sK5(X0,X1,X2),X0) | r2_hidden(sK5(X0,X1,X2),X2))))),
% 1.54/0.58    introduced(choice_axiom,[])).
% 1.54/0.58  fof(f26,plain,(
% 1.54/0.58    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~sP0(X1,X4,X0)) & (sP0(X1,X4,X0) | ~r2_hidden(X4,X2))) | ~sP1(X0,X1,X2)))),
% 1.54/0.58    inference(rectify,[],[f25])).
% 1.54/0.58  fof(f25,plain,(
% 1.54/0.58    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~sP0(X1,X3,X0)) & (sP0(X1,X3,X0) | ~r2_hidden(X3,X2))) | ~sP1(X0,X1,X2)))),
% 1.54/0.58    inference(nnf_transformation,[],[f18])).
% 1.54/0.58  fof(f210,plain,(
% 1.54/0.58    ( ! [X2,X3] : (r2_hidden(sK4(k4_xboole_0(X2,X3)),X2) | k1_xboole_0 = k4_xboole_0(X2,X3)) )),
% 1.54/0.58    inference(resolution,[],[f92,f53])).
% 1.54/0.58  fof(f53,plain,(
% 1.54/0.58    ( ! [X2,X0,X1] : (~sP0(X0,X1,X2) | r2_hidden(X1,X2)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f31])).
% 1.54/0.58  fof(f333,plain,(
% 1.54/0.58    sP1(sK3,k4_xboole_0(sK3,sK2),sK2) | ~spl6_3),
% 1.54/0.58    inference(forward_demodulation,[],[f327,f40])).
% 1.54/0.58  fof(f327,plain,(
% 1.54/0.58    sP1(sK3,k4_xboole_0(sK3,sK2),k4_xboole_0(sK2,k1_xboole_0)) | ~spl6_3),
% 1.54/0.58    inference(superposition,[],[f117,f288])).
% 1.54/0.58  fof(f288,plain,(
% 1.54/0.58    k1_xboole_0 = k4_xboole_0(sK2,sK3) | ~spl6_3),
% 1.54/0.58    inference(duplicate_literal_removal,[],[f277])).
% 1.54/0.58  fof(f277,plain,(
% 1.54/0.58    k1_xboole_0 = k4_xboole_0(sK2,sK3) | k1_xboole_0 = k4_xboole_0(sK2,sK3) | ~spl6_3),
% 1.54/0.58    inference(resolution,[],[f210,f247])).
% 1.54/0.58  fof(f247,plain,(
% 1.54/0.58    ( ! [X4] : (~r2_hidden(sK4(k4_xboole_0(X4,sK3)),sK2) | k1_xboole_0 = k4_xboole_0(X4,sK3)) ) | ~spl6_3),
% 1.54/0.58    inference(resolution,[],[f209,f233])).
% 1.54/0.58  fof(f233,plain,(
% 1.54/0.58    ( ! [X11] : (r2_hidden(X11,sK3) | ~r2_hidden(X11,sK2)) ) | ~spl6_3),
% 1.54/0.58    inference(avatar_component_clause,[],[f232])).
% 1.54/0.58  fof(f117,plain,(
% 1.54/0.58    ( ! [X10,X11] : (sP1(X10,k4_xboole_0(X10,X11),k4_xboole_0(X11,k4_xboole_0(X11,X10)))) )),
% 1.54/0.58    inference(superposition,[],[f66,f63])).
% 1.54/0.58  fof(f63,plain,(
% 1.54/0.58    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 1.54/0.58    inference(definition_unfolding,[],[f43,f45,f45])).
% 1.54/0.58  fof(f45,plain,(
% 1.54/0.58    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.54/0.58    inference(cnf_transformation,[],[f5])).
% 1.54/0.58  fof(f5,axiom,(
% 1.54/0.58    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.54/0.58  fof(f43,plain,(
% 1.54/0.58    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 1.54/0.58    inference(cnf_transformation,[],[f1])).
% 1.54/0.58  fof(f1,axiom,(
% 1.54/0.58    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 1.54/0.58    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 1.54/0.58  % SZS output end Proof for theBenchmark
% 1.54/0.58  % (8649)------------------------------
% 1.54/0.58  % (8649)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.54/0.58  % (8649)Termination reason: Refutation
% 1.54/0.58  
% 1.54/0.58  % (8649)Memory used [KB]: 6396
% 1.54/0.58  % (8649)Time elapsed: 0.158 s
% 1.54/0.58  % (8649)------------------------------
% 1.54/0.58  % (8649)------------------------------
% 1.54/0.58  % (8620)Success in time 0.216 s
%------------------------------------------------------------------------------
