%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:40:19 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   44 (  64 expanded)
%              Number of leaves         :   12 (  26 expanded)
%              Depth                    :    7
%              Number of atoms          :   84 ( 120 expanded)
%              Number of equality atoms :   27 (  44 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f65,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f29,f34,f42,f50,f59,f64])).

fof(f64,plain,(
    spl2_5 ),
    inference(avatar_contradiction_clause,[],[f60])).

fof(f60,plain,
    ( $false
    | spl2_5 ),
    inference(unit_resulting_resolution,[],[f15,f58])).

fof(f58,plain,
    ( k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0)
    | spl2_5 ),
    inference(avatar_component_clause,[],[f56])).

fof(f56,plain,
    ( spl2_5
  <=> k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_5])])).

fof(f15,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(f59,plain,
    ( ~ spl2_5
    | spl2_1
    | ~ spl2_4 ),
    inference(avatar_split_clause,[],[f51,f46,f26,f56])).

fof(f26,plain,
    ( spl2_1
  <=> k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).

fof(f46,plain,
    ( spl2_4
  <=> k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_4])])).

fof(f51,plain,
    ( k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0)
    | spl2_1
    | ~ spl2_4 ),
    inference(backward_demodulation,[],[f28,f48])).

fof(f48,plain,
    ( k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1)
    | ~ spl2_4 ),
    inference(avatar_component_clause,[],[f46])).

fof(f28,plain,
    ( k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1))
    | spl2_1 ),
    inference(avatar_component_clause,[],[f26])).

fof(f50,plain,
    ( spl2_4
    | ~ spl2_3 ),
    inference(avatar_split_clause,[],[f44,f39,f46])).

fof(f39,plain,
    ( spl2_3
  <=> r2_hidden(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).

fof(f44,plain,
    ( k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1)
    | ~ spl2_3 ),
    inference(resolution,[],[f41,f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k1_xboole_0 = k4_xboole_0(k2_tarski(X0,X0),X1) ) ),
    inference(definition_unfolding,[],[f19,f16])).

fof(f16,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l35_zfmisc_1)).

fof(f41,plain,
    ( r2_hidden(sK0,sK1)
    | ~ spl2_3 ),
    inference(avatar_component_clause,[],[f39])).

fof(f42,plain,
    ( spl2_3
    | spl2_2 ),
    inference(avatar_split_clause,[],[f37,f31,f39])).

fof(f31,plain,
    ( spl2_2
  <=> r1_xboole_0(k2_tarski(sK0,sK0),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).

fof(f37,plain,
    ( r2_hidden(sK0,sK1)
    | spl2_2 ),
    inference(duplicate_literal_removal,[],[f36])).

fof(f36,plain,
    ( r2_hidden(sK0,sK1)
    | r2_hidden(sK0,sK1)
    | spl2_2 ),
    inference(resolution,[],[f20,f33])).

fof(f33,plain,
    ( ~ r1_xboole_0(k2_tarski(sK0,sK0),sK1)
    | spl2_2 ),
    inference(avatar_component_clause,[],[f31])).

fof(f20,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(k2_tarski(X0,X2),X1)
      | r2_hidden(X2,X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(k2_tarski(X0,X2),X1)
      | r2_hidden(X2,X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ~ ( ~ r1_xboole_0(k2_tarski(X0,X2),X1)
        & ~ r2_hidden(X2,X1)
        & ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t57_zfmisc_1)).

fof(f34,plain,(
    ~ spl2_2 ),
    inference(avatar_split_clause,[],[f22,f31])).

fof(f22,plain,(
    ~ r1_xboole_0(k2_tarski(sK0,sK0),sK1) ),
    inference(definition_unfolding,[],[f13,f16])).

fof(f13,plain,(
    ~ r1_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,plain,
    ( k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)
    & ~ r1_xboole_0(k1_tarski(sK0),sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f8,f10])).

fof(f10,plain,
    ( ? [X0,X1] :
        ( k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1)
        & ~ r1_xboole_0(k1_tarski(X0),X1) )
   => ( k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)
      & ~ r1_xboole_0(k1_tarski(sK0),sK1) ) ),
    introduced(choice_axiom,[])).

fof(f8,plain,(
    ? [X0,X1] :
      ( k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1)
      & ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1)
        | r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f6,conjecture,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1)
      | r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_zfmisc_1)).

fof(f29,plain,(
    ~ spl2_1 ),
    inference(avatar_split_clause,[],[f21,f26])).

fof(f21,plain,(
    k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f14,f16,f17,f16])).

fof(f17,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f14,plain,(
    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f11])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n006.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 14:44:07 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.42  % (3409)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.22/0.42  % (3409)Refutation found. Thanks to Tanya!
% 0.22/0.42  % SZS status Theorem for theBenchmark
% 0.22/0.42  % (3417)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.22/0.42  % SZS output start Proof for theBenchmark
% 0.22/0.42  fof(f65,plain,(
% 0.22/0.42    $false),
% 0.22/0.42    inference(avatar_sat_refutation,[],[f29,f34,f42,f50,f59,f64])).
% 0.22/0.42  fof(f64,plain,(
% 0.22/0.42    spl2_5),
% 0.22/0.42    inference(avatar_contradiction_clause,[],[f60])).
% 0.22/0.42  fof(f60,plain,(
% 0.22/0.42    $false | spl2_5),
% 0.22/0.42    inference(unit_resulting_resolution,[],[f15,f58])).
% 0.22/0.42  fof(f58,plain,(
% 0.22/0.42    k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0) | spl2_5),
% 0.22/0.42    inference(avatar_component_clause,[],[f56])).
% 0.22/0.42  fof(f56,plain,(
% 0.22/0.42    spl2_5 <=> k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl2_5])])).
% 0.22/0.42  fof(f15,plain,(
% 0.22/0.42    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.22/0.42    inference(cnf_transformation,[],[f1])).
% 0.22/0.42  fof(f1,axiom,(
% 0.22/0.42    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).
% 0.22/0.42  fof(f59,plain,(
% 0.22/0.42    ~spl2_5 | spl2_1 | ~spl2_4),
% 0.22/0.42    inference(avatar_split_clause,[],[f51,f46,f26,f56])).
% 0.22/0.42  fof(f26,plain,(
% 0.22/0.42    spl2_1 <=> k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1))),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).
% 0.22/0.42  fof(f46,plain,(
% 0.22/0.42    spl2_4 <=> k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl2_4])])).
% 0.22/0.42  fof(f51,plain,(
% 0.22/0.42    k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k1_xboole_0) | (spl2_1 | ~spl2_4)),
% 0.22/0.42    inference(backward_demodulation,[],[f28,f48])).
% 0.22/0.42  fof(f48,plain,(
% 0.22/0.42    k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1) | ~spl2_4),
% 0.22/0.42    inference(avatar_component_clause,[],[f46])).
% 0.22/0.42  fof(f28,plain,(
% 0.22/0.42    k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1)) | spl2_1),
% 0.22/0.42    inference(avatar_component_clause,[],[f26])).
% 0.22/0.42  fof(f50,plain,(
% 0.22/0.42    spl2_4 | ~spl2_3),
% 0.22/0.42    inference(avatar_split_clause,[],[f44,f39,f46])).
% 0.22/0.42  fof(f39,plain,(
% 0.22/0.42    spl2_3 <=> r2_hidden(sK0,sK1)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl2_3])])).
% 0.22/0.42  fof(f44,plain,(
% 0.22/0.42    k1_xboole_0 = k4_xboole_0(k2_tarski(sK0,sK0),sK1) | ~spl2_3),
% 0.22/0.42    inference(resolution,[],[f41,f23])).
% 0.22/0.42  fof(f23,plain,(
% 0.22/0.42    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k1_xboole_0 = k4_xboole_0(k2_tarski(X0,X0),X1)) )),
% 0.22/0.42    inference(definition_unfolding,[],[f19,f16])).
% 0.22/0.42  fof(f16,plain,(
% 0.22/0.42    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f3])).
% 0.22/0.42  fof(f3,axiom,(
% 0.22/0.42    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 0.22/0.42  fof(f19,plain,(
% 0.22/0.42    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f12])).
% 0.22/0.42  fof(f12,plain,(
% 0.22/0.42    ! [X0,X1] : ((k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)))),
% 0.22/0.42    inference(nnf_transformation,[],[f4])).
% 0.22/0.42  fof(f4,axiom,(
% 0.22/0.42    ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l35_zfmisc_1)).
% 0.22/0.42  fof(f41,plain,(
% 0.22/0.42    r2_hidden(sK0,sK1) | ~spl2_3),
% 0.22/0.42    inference(avatar_component_clause,[],[f39])).
% 0.22/0.42  fof(f42,plain,(
% 0.22/0.42    spl2_3 | spl2_2),
% 0.22/0.42    inference(avatar_split_clause,[],[f37,f31,f39])).
% 0.22/0.42  fof(f31,plain,(
% 0.22/0.42    spl2_2 <=> r1_xboole_0(k2_tarski(sK0,sK0),sK1)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).
% 0.22/0.42  fof(f37,plain,(
% 0.22/0.42    r2_hidden(sK0,sK1) | spl2_2),
% 0.22/0.42    inference(duplicate_literal_removal,[],[f36])).
% 0.22/0.42  fof(f36,plain,(
% 0.22/0.42    r2_hidden(sK0,sK1) | r2_hidden(sK0,sK1) | spl2_2),
% 0.22/0.42    inference(resolution,[],[f20,f33])).
% 0.22/0.42  fof(f33,plain,(
% 0.22/0.42    ~r1_xboole_0(k2_tarski(sK0,sK0),sK1) | spl2_2),
% 0.22/0.42    inference(avatar_component_clause,[],[f31])).
% 0.22/0.42  fof(f20,plain,(
% 0.22/0.42    ( ! [X2,X0,X1] : (r1_xboole_0(k2_tarski(X0,X2),X1) | r2_hidden(X2,X1) | r2_hidden(X0,X1)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f9])).
% 0.22/0.42  fof(f9,plain,(
% 0.22/0.42    ! [X0,X1,X2] : (r1_xboole_0(k2_tarski(X0,X2),X1) | r2_hidden(X2,X1) | r2_hidden(X0,X1))),
% 0.22/0.42    inference(ennf_transformation,[],[f5])).
% 0.22/0.42  fof(f5,axiom,(
% 0.22/0.42    ! [X0,X1,X2] : ~(~r1_xboole_0(k2_tarski(X0,X2),X1) & ~r2_hidden(X2,X1) & ~r2_hidden(X0,X1))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t57_zfmisc_1)).
% 0.22/0.42  fof(f34,plain,(
% 0.22/0.42    ~spl2_2),
% 0.22/0.42    inference(avatar_split_clause,[],[f22,f31])).
% 0.22/0.42  fof(f22,plain,(
% 0.22/0.42    ~r1_xboole_0(k2_tarski(sK0,sK0),sK1)),
% 0.22/0.42    inference(definition_unfolding,[],[f13,f16])).
% 0.22/0.42  fof(f13,plain,(
% 0.22/0.42    ~r1_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.42    inference(cnf_transformation,[],[f11])).
% 0.22/0.42  fof(f11,plain,(
% 0.22/0.42    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) & ~r1_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.42    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f8,f10])).
% 0.22/0.42  fof(f10,plain,(
% 0.22/0.42    ? [X0,X1] : (k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1) & ~r1_xboole_0(k1_tarski(X0),X1)) => (k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) & ~r1_xboole_0(k1_tarski(sK0),sK1))),
% 0.22/0.42    introduced(choice_axiom,[])).
% 0.22/0.42  fof(f8,plain,(
% 0.22/0.42    ? [X0,X1] : (k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1) & ~r1_xboole_0(k1_tarski(X0),X1))),
% 0.22/0.42    inference(ennf_transformation,[],[f7])).
% 0.22/0.42  fof(f7,negated_conjecture,(
% 0.22/0.42    ~! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1) | r1_xboole_0(k1_tarski(X0),X1))),
% 0.22/0.42    inference(negated_conjecture,[],[f6])).
% 0.22/0.42  fof(f6,conjecture,(
% 0.22/0.42    ! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1) | r1_xboole_0(k1_tarski(X0),X1))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_zfmisc_1)).
% 0.22/0.42  fof(f29,plain,(
% 0.22/0.42    ~spl2_1),
% 0.22/0.42    inference(avatar_split_clause,[],[f21,f26])).
% 0.22/0.42  fof(f21,plain,(
% 0.22/0.42    k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK0),k4_xboole_0(k2_tarski(sK0,sK0),sK1))),
% 0.22/0.42    inference(definition_unfolding,[],[f14,f16,f17,f16])).
% 0.22/0.42  fof(f17,plain,(
% 0.22/0.42    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f2])).
% 0.22/0.42  fof(f2,axiom,(
% 0.22/0.42    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 0.22/0.42  fof(f14,plain,(
% 0.22/0.42    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.42    inference(cnf_transformation,[],[f11])).
% 0.22/0.42  % SZS output end Proof for theBenchmark
% 0.22/0.42  % (3409)------------------------------
% 0.22/0.42  % (3409)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.42  % (3409)Termination reason: Refutation
% 0.22/0.42  
% 0.22/0.42  % (3409)Memory used [KB]: 6140
% 0.22/0.42  % (3409)Time elapsed: 0.028 s
% 0.22/0.42  % (3409)------------------------------
% 0.22/0.42  % (3409)------------------------------
% 0.22/0.43  % (3402)Success in time 0.068 s
%------------------------------------------------------------------------------
