%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:48:11 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   50 (  95 expanded)
%              Number of leaves         :    9 (  28 expanded)
%              Depth                    :    9
%              Number of atoms          :  134 ( 269 expanded)
%              Number of equality atoms :   67 ( 162 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f59,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f27,f32,f41,f48,f53,f58])).

fof(f58,plain,
    ( ~ spl1_1
    | spl1_2
    | ~ spl1_3 ),
    inference(avatar_contradiction_clause,[],[f57])).

fof(f57,plain,
    ( $false
    | ~ spl1_1
    | spl1_2
    | ~ spl1_3 ),
    inference(subsumption_resolution,[],[f56,f31])).

fof(f31,plain,
    ( k1_xboole_0 != sK0
    | spl1_2 ),
    inference(avatar_component_clause,[],[f29])).

fof(f29,plain,
    ( spl1_2
  <=> k1_xboole_0 = sK0 ),
    introduced(avatar_definition,[new_symbols(naming,[spl1_2])])).

fof(f56,plain,
    ( k1_xboole_0 = sK0
    | ~ spl1_1
    | ~ spl1_3 ),
    inference(forward_demodulation,[],[f55,f16])).

fof(f16,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(f55,plain,
    ( sK0 = k3_xboole_0(sK0,k1_xboole_0)
    | ~ spl1_1
    | ~ spl1_3 ),
    inference(forward_demodulation,[],[f54,f22])).

fof(f22,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(f54,plain,
    ( sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0)))
    | ~ spl1_1
    | ~ spl1_3 ),
    inference(backward_demodulation,[],[f43,f36])).

fof(f36,plain,
    ( k1_xboole_0 = k1_relat_1(sK0)
    | ~ spl1_3 ),
    inference(avatar_component_clause,[],[f34])).

fof(f34,plain,
    ( spl1_3
  <=> k1_xboole_0 = k1_relat_1(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl1_3])])).

fof(f43,plain,
    ( sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))
    | ~ spl1_1 ),
    inference(resolution,[],[f17,f26])).

fof(f26,plain,
    ( v1_relat_1(sK0)
    | ~ spl1_1 ),
    inference(avatar_component_clause,[],[f24])).

fof(f24,plain,
    ( spl1_1
  <=> v1_relat_1(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl1_1])])).

fof(f17,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 ) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,(
    ! [X0] :
      ( k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_relat_1)).

fof(f53,plain,
    ( ~ spl1_1
    | spl1_2
    | ~ spl1_4 ),
    inference(avatar_contradiction_clause,[],[f52])).

fof(f52,plain,
    ( $false
    | ~ spl1_1
    | spl1_2
    | ~ spl1_4 ),
    inference(subsumption_resolution,[],[f51,f31])).

fof(f51,plain,
    ( k1_xboole_0 = sK0
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f50,f16])).

fof(f50,plain,
    ( sK0 = k3_xboole_0(sK0,k1_xboole_0)
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f49,f21])).

fof(f21,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f12])).

fof(f49,plain,
    ( sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f43,f40])).

fof(f40,plain,
    ( k1_xboole_0 = k2_relat_1(sK0)
    | ~ spl1_4 ),
    inference(avatar_component_clause,[],[f38])).

fof(f38,plain,
    ( spl1_4
  <=> k1_xboole_0 = k2_relat_1(sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl1_4])])).

fof(f48,plain,
    ( ~ spl1_1
    | spl1_2
    | ~ spl1_4 ),
    inference(avatar_contradiction_clause,[],[f47])).

fof(f47,plain,
    ( $false
    | ~ spl1_1
    | spl1_2
    | ~ spl1_4 ),
    inference(subsumption_resolution,[],[f46,f31])).

fof(f46,plain,
    ( k1_xboole_0 = sK0
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f45,f16])).

fof(f45,plain,
    ( sK0 = k3_xboole_0(sK0,k1_xboole_0)
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f44,f21])).

fof(f44,plain,
    ( sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0))
    | ~ spl1_1
    | ~ spl1_4 ),
    inference(forward_demodulation,[],[f42,f40])).

fof(f42,plain,
    ( sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0)))
    | ~ spl1_1 ),
    inference(unit_resulting_resolution,[],[f26,f17])).

fof(f41,plain,
    ( spl1_3
    | spl1_4 ),
    inference(avatar_split_clause,[],[f14,f38,f34])).

fof(f14,plain,
    ( k1_xboole_0 = k2_relat_1(sK0)
    | k1_xboole_0 = k1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,
    ( k1_xboole_0 != sK0
    & ( k1_xboole_0 = k2_relat_1(sK0)
      | k1_xboole_0 = k1_relat_1(sK0) )
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f7,f9])).

fof(f9,plain,
    ( ? [X0] :
        ( k1_xboole_0 != X0
        & ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
        & v1_relat_1(X0) )
   => ( k1_xboole_0 != sK0
      & ( k1_xboole_0 = k2_relat_1(sK0)
        | k1_xboole_0 = k1_relat_1(sK0) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f7,plain,(
    ? [X0] :
      ( k1_xboole_0 != X0
      & ( k1_xboole_0 = k2_relat_1(X0)
        | k1_xboole_0 = k1_relat_1(X0) )
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f6])).

fof(f6,plain,(
    ? [X0] :
      ( k1_xboole_0 != X0
      & ( k1_xboole_0 = k2_relat_1(X0)
        | k1_xboole_0 = k1_relat_1(X0) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ( ( k1_xboole_0 = k2_relat_1(X0)
            | k1_xboole_0 = k1_relat_1(X0) )
         => k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f4])).

fof(f4,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(f32,plain,(
    ~ spl1_2 ),
    inference(avatar_split_clause,[],[f15,f29])).

fof(f15,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f10])).

fof(f27,plain,(
    spl1_1 ),
    inference(avatar_split_clause,[],[f13,f24])).

fof(f13,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f10])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n023.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 18:49:06 EST 2020
% 0.21/0.35  % CPUTime    : 
% 0.21/0.42  % (21859)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.22/0.48  % (21859)Refutation found. Thanks to Tanya!
% 0.22/0.48  % SZS status Theorem for theBenchmark
% 0.22/0.48  % SZS output start Proof for theBenchmark
% 0.22/0.48  fof(f59,plain,(
% 0.22/0.48    $false),
% 0.22/0.48    inference(avatar_sat_refutation,[],[f27,f32,f41,f48,f53,f58])).
% 0.22/0.48  fof(f58,plain,(
% 0.22/0.48    ~spl1_1 | spl1_2 | ~spl1_3),
% 0.22/0.48    inference(avatar_contradiction_clause,[],[f57])).
% 0.22/0.48  fof(f57,plain,(
% 0.22/0.48    $false | (~spl1_1 | spl1_2 | ~spl1_3)),
% 0.22/0.48    inference(subsumption_resolution,[],[f56,f31])).
% 0.22/0.48  fof(f31,plain,(
% 0.22/0.48    k1_xboole_0 != sK0 | spl1_2),
% 0.22/0.48    inference(avatar_component_clause,[],[f29])).
% 0.22/0.48  fof(f29,plain,(
% 0.22/0.48    spl1_2 <=> k1_xboole_0 = sK0),
% 0.22/0.48    introduced(avatar_definition,[new_symbols(naming,[spl1_2])])).
% 0.22/0.48  fof(f56,plain,(
% 0.22/0.48    k1_xboole_0 = sK0 | (~spl1_1 | ~spl1_3)),
% 0.22/0.48    inference(forward_demodulation,[],[f55,f16])).
% 0.22/0.48  fof(f16,plain,(
% 0.22/0.48    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f1])).
% 0.22/0.48  fof(f1,axiom,(
% 0.22/0.48    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).
% 0.22/0.48  fof(f55,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k1_xboole_0) | (~spl1_1 | ~spl1_3)),
% 0.22/0.48    inference(forward_demodulation,[],[f54,f22])).
% 0.22/0.48  fof(f22,plain,(
% 0.22/0.48    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 0.22/0.48    inference(equality_resolution,[],[f19])).
% 0.22/0.48  fof(f19,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 0.22/0.48    inference(cnf_transformation,[],[f12])).
% 0.22/0.48  fof(f12,plain,(
% 0.22/0.48    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 0.22/0.48    inference(flattening,[],[f11])).
% 0.22/0.48  fof(f11,plain,(
% 0.22/0.48    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 0.22/0.48    inference(nnf_transformation,[],[f2])).
% 0.22/0.48  fof(f2,axiom,(
% 0.22/0.48    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).
% 0.22/0.48  fof(f54,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_xboole_0,k2_relat_1(sK0))) | (~spl1_1 | ~spl1_3)),
% 0.22/0.48    inference(backward_demodulation,[],[f43,f36])).
% 0.22/0.48  fof(f36,plain,(
% 0.22/0.48    k1_xboole_0 = k1_relat_1(sK0) | ~spl1_3),
% 0.22/0.48    inference(avatar_component_clause,[],[f34])).
% 0.22/0.48  fof(f34,plain,(
% 0.22/0.48    spl1_3 <=> k1_xboole_0 = k1_relat_1(sK0)),
% 0.22/0.48    introduced(avatar_definition,[new_symbols(naming,[spl1_3])])).
% 0.22/0.48  fof(f43,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) | ~spl1_1),
% 0.22/0.48    inference(resolution,[],[f17,f26])).
% 0.22/0.48  fof(f26,plain,(
% 0.22/0.48    v1_relat_1(sK0) | ~spl1_1),
% 0.22/0.48    inference(avatar_component_clause,[],[f24])).
% 0.22/0.48  fof(f24,plain,(
% 0.22/0.48    spl1_1 <=> v1_relat_1(sK0)),
% 0.22/0.48    introduced(avatar_definition,[new_symbols(naming,[spl1_1])])).
% 0.22/0.48  fof(f17,plain,(
% 0.22/0.48    ( ! [X0] : (~v1_relat_1(X0) | k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0) )),
% 0.22/0.48    inference(cnf_transformation,[],[f8])).
% 0.22/0.48  fof(f8,plain,(
% 0.22/0.48    ! [X0] : (k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 0.22/0.48    inference(ennf_transformation,[],[f3])).
% 0.22/0.48  fof(f3,axiom,(
% 0.22/0.48    ! [X0] : (v1_relat_1(X0) => k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0)),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_relat_1)).
% 0.22/0.48  fof(f53,plain,(
% 0.22/0.48    ~spl1_1 | spl1_2 | ~spl1_4),
% 0.22/0.48    inference(avatar_contradiction_clause,[],[f52])).
% 0.22/0.48  fof(f52,plain,(
% 0.22/0.48    $false | (~spl1_1 | spl1_2 | ~spl1_4)),
% 0.22/0.48    inference(subsumption_resolution,[],[f51,f31])).
% 0.22/0.48  fof(f51,plain,(
% 0.22/0.48    k1_xboole_0 = sK0 | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f50,f16])).
% 0.22/0.48  fof(f50,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k1_xboole_0) | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f49,f21])).
% 0.22/0.48  fof(f21,plain,(
% 0.22/0.48    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 0.22/0.48    inference(equality_resolution,[],[f20])).
% 0.22/0.48  fof(f20,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 0.22/0.48    inference(cnf_transformation,[],[f12])).
% 0.22/0.48  fof(f49,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)) | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f43,f40])).
% 0.22/0.48  fof(f40,plain,(
% 0.22/0.48    k1_xboole_0 = k2_relat_1(sK0) | ~spl1_4),
% 0.22/0.48    inference(avatar_component_clause,[],[f38])).
% 0.22/0.48  fof(f38,plain,(
% 0.22/0.48    spl1_4 <=> k1_xboole_0 = k2_relat_1(sK0)),
% 0.22/0.48    introduced(avatar_definition,[new_symbols(naming,[spl1_4])])).
% 0.22/0.48  fof(f48,plain,(
% 0.22/0.48    ~spl1_1 | spl1_2 | ~spl1_4),
% 0.22/0.48    inference(avatar_contradiction_clause,[],[f47])).
% 0.22/0.48  fof(f47,plain,(
% 0.22/0.48    $false | (~spl1_1 | spl1_2 | ~spl1_4)),
% 0.22/0.48    inference(subsumption_resolution,[],[f46,f31])).
% 0.22/0.48  fof(f46,plain,(
% 0.22/0.48    k1_xboole_0 = sK0 | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f45,f16])).
% 0.22/0.48  fof(f45,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k1_xboole_0) | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f44,f21])).
% 0.22/0.48  fof(f44,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k1_xboole_0)) | (~spl1_1 | ~spl1_4)),
% 0.22/0.48    inference(forward_demodulation,[],[f42,f40])).
% 0.22/0.48  fof(f42,plain,(
% 0.22/0.48    sK0 = k3_xboole_0(sK0,k2_zfmisc_1(k1_relat_1(sK0),k2_relat_1(sK0))) | ~spl1_1),
% 0.22/0.48    inference(unit_resulting_resolution,[],[f26,f17])).
% 0.22/0.48  fof(f41,plain,(
% 0.22/0.48    spl1_3 | spl1_4),
% 0.22/0.48    inference(avatar_split_clause,[],[f14,f38,f34])).
% 0.22/0.48  fof(f14,plain,(
% 0.22/0.48    k1_xboole_0 = k2_relat_1(sK0) | k1_xboole_0 = k1_relat_1(sK0)),
% 0.22/0.48    inference(cnf_transformation,[],[f10])).
% 0.22/0.48  fof(f10,plain,(
% 0.22/0.48    k1_xboole_0 != sK0 & (k1_xboole_0 = k2_relat_1(sK0) | k1_xboole_0 = k1_relat_1(sK0)) & v1_relat_1(sK0)),
% 0.22/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f7,f9])).
% 0.22/0.48  fof(f9,plain,(
% 0.22/0.48    ? [X0] : (k1_xboole_0 != X0 & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) & v1_relat_1(X0)) => (k1_xboole_0 != sK0 & (k1_xboole_0 = k2_relat_1(sK0) | k1_xboole_0 = k1_relat_1(sK0)) & v1_relat_1(sK0))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f7,plain,(
% 0.22/0.48    ? [X0] : (k1_xboole_0 != X0 & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) & v1_relat_1(X0))),
% 0.22/0.48    inference(flattening,[],[f6])).
% 0.22/0.48  fof(f6,plain,(
% 0.22/0.48    ? [X0] : ((k1_xboole_0 != X0 & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0))) & v1_relat_1(X0))),
% 0.22/0.48    inference(ennf_transformation,[],[f5])).
% 0.22/0.48  fof(f5,negated_conjecture,(
% 0.22/0.48    ~! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 0.22/0.48    inference(negated_conjecture,[],[f4])).
% 0.22/0.48  fof(f4,conjecture,(
% 0.22/0.48    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 0.22/0.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).
% 0.22/0.48  fof(f32,plain,(
% 0.22/0.48    ~spl1_2),
% 0.22/0.48    inference(avatar_split_clause,[],[f15,f29])).
% 0.22/0.48  fof(f15,plain,(
% 0.22/0.48    k1_xboole_0 != sK0),
% 0.22/0.48    inference(cnf_transformation,[],[f10])).
% 0.22/0.48  fof(f27,plain,(
% 0.22/0.48    spl1_1),
% 0.22/0.48    inference(avatar_split_clause,[],[f13,f24])).
% 0.22/0.48  fof(f13,plain,(
% 0.22/0.48    v1_relat_1(sK0)),
% 0.22/0.48    inference(cnf_transformation,[],[f10])).
% 0.22/0.48  % SZS output end Proof for theBenchmark
% 0.22/0.48  % (21859)------------------------------
% 0.22/0.48  % (21859)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.48  % (21859)Termination reason: Refutation
% 0.22/0.48  
% 0.22/0.48  % (21859)Memory used [KB]: 1663
% 0.22/0.48  % (21859)Time elapsed: 0.064 s
% 0.22/0.48  % (21859)------------------------------
% 0.22/0.48  % (21859)------------------------------
% 0.22/0.48  % (21870)lrs+1002_16_av=off:cond=on:nwc=3:stl=30_83 on theBenchmark
% 0.22/0.49  % (21851)Success in time 0.121 s
%------------------------------------------------------------------------------
