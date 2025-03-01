%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:52:03 EST 2020

% Result     : Theorem 0.18s
% Output     : Refutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 157 expanded)
%              Number of leaves         :   14 (  48 expanded)
%              Depth                    :   12
%              Number of atoms          :  157 ( 479 expanded)
%              Number of equality atoms :   50 ( 210 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f130,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f51,f72,f114,f122,f129])).

fof(f129,plain,(
    spl5_4 ),
    inference(avatar_contradiction_clause,[],[f123])).

fof(f123,plain,
    ( $false
    | spl5_4 ),
    inference(unit_resulting_resolution,[],[f31,f71])).

fof(f71,plain,
    ( ~ r1_tarski(k1_xboole_0,sK0)
    | spl5_4 ),
    inference(avatar_component_clause,[],[f69])).

fof(f69,plain,
    ( spl5_4
  <=> r1_tarski(k1_xboole_0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_4])])).

fof(f31,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f122,plain,(
    spl5_3 ),
    inference(avatar_contradiction_clause,[],[f120])).

fof(f120,plain,
    ( $false
    | spl5_3 ),
    inference(unit_resulting_resolution,[],[f42,f67,f39])).

fof(f39,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_relat_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

fof(f67,plain,
    ( ~ v1_relat_1(k1_xboole_0)
    | spl5_3 ),
    inference(avatar_component_clause,[],[f65])).

fof(f65,plain,
    ( spl5_3
  <=> v1_relat_1(k1_xboole_0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_3])])).

fof(f42,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(f114,plain,
    ( spl5_1
    | spl5_2 ),
    inference(avatar_contradiction_clause,[],[f111])).

fof(f111,plain,
    ( $false
    | spl5_1
    | spl5_2 ),
    inference(unit_resulting_resolution,[],[f84,f105,f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK2(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(f105,plain,
    ( ~ r1_tarski(sK0,sK0)
    | spl5_1
    | spl5_2 ),
    inference(backward_demodulation,[],[f82,f92])).

fof(f92,plain,
    ( ! [X0] : k1_tarski(X0) = sK0
    | spl5_1
    | spl5_2 ),
    inference(unit_resulting_resolution,[],[f50,f84,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK4(X0,X1),X0)
      | k1_xboole_0 = X0
      | k1_tarski(X1) = X0 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & r2_hidden(X2,X0) )
      | k1_xboole_0 = X0
      | k1_tarski(X1) = X0 ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ~ ( ! [X2] :
            ~ ( X1 != X2
              & r2_hidden(X2,X0) )
        & k1_xboole_0 != X0
        & k1_tarski(X1) != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l44_zfmisc_1)).

fof(f50,plain,
    ( k1_xboole_0 != sK0
    | spl5_2 ),
    inference(avatar_component_clause,[],[f48])).

fof(f48,plain,
    ( spl5_2
  <=> k1_xboole_0 = sK0 ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_2])])).

fof(f82,plain,
    ( ! [X0] : ~ r1_tarski(k1_tarski(X0),sK0)
    | spl5_1 ),
    inference(forward_demodulation,[],[f81,f76])).

fof(f76,plain,
    ( ! [X0] : k1_tarski(X0) = k2_relat_1(sK3(sK1,X0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f45,f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k2_relat_1(sK3(X0,X1))
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
        ? [X2] :
          ( k1_tarski(X1) = k2_relat_1(X2)
          & k1_relat_1(X2) = X0
          & v1_funct_1(X2)
          & v1_relat_1(X2) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( k1_xboole_0 != X0
     => ! [X1] :
        ? [X2] :
          ( k1_tarski(X1) = k2_relat_1(X2)
          & k1_relat_1(X2) = X0
          & v1_funct_1(X2)
          & v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_funct_1)).

fof(f45,plain,
    ( k1_xboole_0 != sK1
    | spl5_1 ),
    inference(avatar_component_clause,[],[f44])).

fof(f44,plain,
    ( spl5_1
  <=> k1_xboole_0 = sK1 ),
    introduced(avatar_definition,[new_symbols(naming,[spl5_1])])).

fof(f81,plain,
    ( ! [X0] : ~ r1_tarski(k2_relat_1(sK3(sK1,X0)),sK0)
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f73,f74,f75,f22])).

fof(f22,plain,(
    ! [X2] :
      ( ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | k1_relat_1(X2) != sK1
      | ~ r1_tarski(k2_relat_1(X2),sK0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r1_tarski(k2_relat_1(X2),X0)
          | k1_relat_1(X2) != X1
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 != X0 ) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r1_tarski(k2_relat_1(X2),X0)
          | k1_relat_1(X2) != X1
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 != X0 ) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ~ ( ! [X2] :
              ( ( v1_funct_1(X2)
                & v1_relat_1(X2) )
             => ~ ( r1_tarski(k2_relat_1(X2),X0)
                  & k1_relat_1(X2) = X1 ) )
          & ~ ( k1_xboole_0 != X1
              & k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ~ ( ! [X2] :
            ( ( v1_funct_1(X2)
              & v1_relat_1(X2) )
           => ~ ( r1_tarski(k2_relat_1(X2),X0)
                & k1_relat_1(X2) = X1 ) )
        & ~ ( k1_xboole_0 != X1
            & k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_funct_1)).

fof(f75,plain,
    ( ! [X0] : sK1 = k1_relat_1(sK3(sK1,X0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f45,f34])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_relat_1(sK3(X0,X1)) = X0
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f74,plain,
    ( ! [X0] : v1_funct_1(sK3(sK1,X0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f45,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( v1_funct_1(sK3(X0,X1))
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f73,plain,
    ( ! [X0] : v1_relat_1(sK3(sK1,X0))
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f45,f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( v1_relat_1(sK3(X0,X1))
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f84,plain,
    ( ! [X0] : ~ r2_hidden(X0,sK0)
    | spl5_1 ),
    inference(unit_resulting_resolution,[],[f82,f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(f72,plain,
    ( ~ spl5_3
    | ~ spl5_1
    | ~ spl5_4 ),
    inference(avatar_split_clause,[],[f63,f69,f44,f65])).

fof(f63,plain,
    ( ~ r1_tarski(k1_xboole_0,sK0)
    | k1_xboole_0 != sK1
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(forward_demodulation,[],[f62,f37])).

fof(f37,plain,(
    k1_xboole_0 = k2_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(f62,plain,
    ( k1_xboole_0 != sK1
    | ~ r1_tarski(k2_relat_1(k1_xboole_0),sK0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(forward_demodulation,[],[f61,f36])).

fof(f36,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f10])).

fof(f61,plain,
    ( k1_relat_1(k1_xboole_0) != sK1
    | ~ r1_tarski(k2_relat_1(k1_xboole_0),sK0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(resolution,[],[f58,f42])).

fof(f58,plain,(
    ! [X3] :
      ( ~ v1_xboole_0(X3)
      | sK1 != k1_relat_1(X3)
      | ~ r1_tarski(k2_relat_1(X3),sK0)
      | ~ v1_relat_1(X3) ) ),
    inference(resolution,[],[f22,f38])).

fof(f38,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_funct_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_funct_1)).

fof(f51,plain,
    ( spl5_1
    | ~ spl5_2 ),
    inference(avatar_split_clause,[],[f23,f48,f44])).

fof(f23,plain,
    ( k1_xboole_0 != sK0
    | k1_xboole_0 = sK1 ),
    inference(cnf_transformation,[],[f16])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : run_vampire %s %d
% 0.11/0.33  % Computer   : n013.cluster.edu
% 0.11/0.33  % Model      : x86_64 x86_64
% 0.11/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.33  % Memory     : 8042.1875MB
% 0.11/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.33  % CPULimit   : 60
% 0.11/0.33  % WCLimit    : 600
% 0.11/0.33  % DateTime   : Tue Dec  1 11:23:39 EST 2020
% 0.11/0.33  % CPUTime    : 
% 0.18/0.49  % (16509)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.18/0.49  % (16501)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.18/0.49  % (16491)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.18/0.49  % (16490)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.18/0.49  % (16488)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.18/0.49  % (16492)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.18/0.49  % (16491)Refutation found. Thanks to Tanya!
% 0.18/0.49  % SZS status Theorem for theBenchmark
% 0.18/0.49  % SZS output start Proof for theBenchmark
% 0.18/0.49  fof(f130,plain,(
% 0.18/0.49    $false),
% 0.18/0.49    inference(avatar_sat_refutation,[],[f51,f72,f114,f122,f129])).
% 0.18/0.49  fof(f129,plain,(
% 0.18/0.49    spl5_4),
% 0.18/0.49    inference(avatar_contradiction_clause,[],[f123])).
% 0.18/0.49  fof(f123,plain,(
% 0.18/0.49    $false | spl5_4),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f31,f71])).
% 0.18/0.49  fof(f71,plain,(
% 0.18/0.49    ~r1_tarski(k1_xboole_0,sK0) | spl5_4),
% 0.18/0.49    inference(avatar_component_clause,[],[f69])).
% 0.18/0.49  fof(f69,plain,(
% 0.18/0.49    spl5_4 <=> r1_tarski(k1_xboole_0,sK0)),
% 0.18/0.49    introduced(avatar_definition,[new_symbols(naming,[spl5_4])])).
% 0.18/0.49  fof(f31,plain,(
% 0.18/0.49    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f4])).
% 0.18/0.49  fof(f4,axiom,(
% 0.18/0.49    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).
% 0.18/0.49  fof(f122,plain,(
% 0.18/0.49    spl5_3),
% 0.18/0.49    inference(avatar_contradiction_clause,[],[f120])).
% 0.18/0.49  fof(f120,plain,(
% 0.18/0.49    $false | spl5_3),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f42,f67,f39])).
% 0.18/0.49  fof(f39,plain,(
% 0.18/0.49    ( ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f20])).
% 0.18/0.49  fof(f20,plain,(
% 0.18/0.49    ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0))),
% 0.18/0.49    inference(ennf_transformation,[],[f9])).
% 0.18/0.49  fof(f9,axiom,(
% 0.18/0.49    ! [X0] : (v1_xboole_0(X0) => v1_relat_1(X0))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).
% 0.18/0.49  fof(f67,plain,(
% 0.18/0.49    ~v1_relat_1(k1_xboole_0) | spl5_3),
% 0.18/0.49    inference(avatar_component_clause,[],[f65])).
% 0.18/0.49  fof(f65,plain,(
% 0.18/0.49    spl5_3 <=> v1_relat_1(k1_xboole_0)),
% 0.18/0.49    introduced(avatar_definition,[new_symbols(naming,[spl5_3])])).
% 0.18/0.49  fof(f42,plain,(
% 0.18/0.49    v1_xboole_0(k1_xboole_0)),
% 0.18/0.49    inference(cnf_transformation,[],[f2])).
% 0.18/0.49  fof(f2,axiom,(
% 0.18/0.49    v1_xboole_0(k1_xboole_0)),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).
% 0.18/0.49  fof(f114,plain,(
% 0.18/0.49    spl5_1 | spl5_2),
% 0.18/0.49    inference(avatar_contradiction_clause,[],[f111])).
% 0.18/0.49  fof(f111,plain,(
% 0.18/0.49    $false | (spl5_1 | spl5_2)),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f84,f105,f29])).
% 0.18/0.49  fof(f29,plain,(
% 0.18/0.49    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK2(X0,X1),X0)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f17])).
% 0.18/0.49  fof(f17,plain,(
% 0.18/0.49    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.18/0.49    inference(ennf_transformation,[],[f1])).
% 0.18/0.49  fof(f1,axiom,(
% 0.18/0.49    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 0.18/0.49  fof(f105,plain,(
% 0.18/0.49    ~r1_tarski(sK0,sK0) | (spl5_1 | spl5_2)),
% 0.18/0.49    inference(backward_demodulation,[],[f82,f92])).
% 0.18/0.49  fof(f92,plain,(
% 0.18/0.49    ( ! [X0] : (k1_tarski(X0) = sK0) ) | (spl5_1 | spl5_2)),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f50,f84,f40])).
% 0.18/0.49  fof(f40,plain,(
% 0.18/0.49    ( ! [X0,X1] : (r2_hidden(sK4(X0,X1),X0) | k1_xboole_0 = X0 | k1_tarski(X1) = X0) )),
% 0.18/0.49    inference(cnf_transformation,[],[f21])).
% 0.18/0.49  fof(f21,plain,(
% 0.18/0.49    ! [X0,X1] : (? [X2] : (X1 != X2 & r2_hidden(X2,X0)) | k1_xboole_0 = X0 | k1_tarski(X1) = X0)),
% 0.18/0.49    inference(ennf_transformation,[],[f7])).
% 0.18/0.49  fof(f7,axiom,(
% 0.18/0.49    ! [X0,X1] : ~(! [X2] : ~(X1 != X2 & r2_hidden(X2,X0)) & k1_xboole_0 != X0 & k1_tarski(X1) != X0)),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l44_zfmisc_1)).
% 0.18/0.49  fof(f50,plain,(
% 0.18/0.49    k1_xboole_0 != sK0 | spl5_2),
% 0.18/0.49    inference(avatar_component_clause,[],[f48])).
% 0.18/0.49  fof(f48,plain,(
% 0.18/0.49    spl5_2 <=> k1_xboole_0 = sK0),
% 0.18/0.49    introduced(avatar_definition,[new_symbols(naming,[spl5_2])])).
% 0.18/0.49  fof(f82,plain,(
% 0.18/0.49    ( ! [X0] : (~r1_tarski(k1_tarski(X0),sK0)) ) | spl5_1),
% 0.18/0.49    inference(forward_demodulation,[],[f81,f76])).
% 0.18/0.49  fof(f76,plain,(
% 0.18/0.49    ( ! [X0] : (k1_tarski(X0) = k2_relat_1(sK3(sK1,X0))) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f45,f35])).
% 0.18/0.49  fof(f35,plain,(
% 0.18/0.49    ( ! [X0,X1] : (k1_tarski(X1) = k2_relat_1(sK3(X0,X1)) | k1_xboole_0 = X0) )),
% 0.18/0.49    inference(cnf_transformation,[],[f18])).
% 0.18/0.49  fof(f18,plain,(
% 0.18/0.49    ! [X0] : (! [X1] : ? [X2] : (k1_tarski(X1) = k2_relat_1(X2) & k1_relat_1(X2) = X0 & v1_funct_1(X2) & v1_relat_1(X2)) | k1_xboole_0 = X0)),
% 0.18/0.49    inference(ennf_transformation,[],[f12])).
% 0.18/0.49  fof(f12,axiom,(
% 0.18/0.49    ! [X0] : (k1_xboole_0 != X0 => ! [X1] : ? [X2] : (k1_tarski(X1) = k2_relat_1(X2) & k1_relat_1(X2) = X0 & v1_funct_1(X2) & v1_relat_1(X2)))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_funct_1)).
% 0.18/0.49  fof(f45,plain,(
% 0.18/0.49    k1_xboole_0 != sK1 | spl5_1),
% 0.18/0.49    inference(avatar_component_clause,[],[f44])).
% 0.18/0.49  fof(f44,plain,(
% 0.18/0.49    spl5_1 <=> k1_xboole_0 = sK1),
% 0.18/0.49    introduced(avatar_definition,[new_symbols(naming,[spl5_1])])).
% 0.18/0.49  fof(f81,plain,(
% 0.18/0.49    ( ! [X0] : (~r1_tarski(k2_relat_1(sK3(sK1,X0)),sK0)) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f73,f74,f75,f22])).
% 0.18/0.49  fof(f22,plain,(
% 0.18/0.49    ( ! [X2] : (~v1_funct_1(X2) | ~v1_relat_1(X2) | k1_relat_1(X2) != sK1 | ~r1_tarski(k2_relat_1(X2),sK0)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f16])).
% 0.18/0.49  fof(f16,plain,(
% 0.18/0.49    ? [X0,X1] : (! [X2] : (~r1_tarski(k2_relat_1(X2),X0) | k1_relat_1(X2) != X1 | ~v1_funct_1(X2) | ~v1_relat_1(X2)) & (k1_xboole_0 = X1 | k1_xboole_0 != X0))),
% 0.18/0.49    inference(flattening,[],[f15])).
% 0.18/0.49  fof(f15,plain,(
% 0.18/0.49    ? [X0,X1] : (! [X2] : ((~r1_tarski(k2_relat_1(X2),X0) | k1_relat_1(X2) != X1) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) & (k1_xboole_0 = X1 | k1_xboole_0 != X0))),
% 0.18/0.49    inference(ennf_transformation,[],[f14])).
% 0.18/0.49  fof(f14,negated_conjecture,(
% 0.18/0.49    ~! [X0,X1] : ~(! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => ~(r1_tarski(k2_relat_1(X2),X0) & k1_relat_1(X2) = X1)) & ~(k1_xboole_0 != X1 & k1_xboole_0 = X0))),
% 0.18/0.49    inference(negated_conjecture,[],[f13])).
% 0.18/0.49  fof(f13,conjecture,(
% 0.18/0.49    ! [X0,X1] : ~(! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => ~(r1_tarski(k2_relat_1(X2),X0) & k1_relat_1(X2) = X1)) & ~(k1_xboole_0 != X1 & k1_xboole_0 = X0))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_funct_1)).
% 0.18/0.49  fof(f75,plain,(
% 0.18/0.49    ( ! [X0] : (sK1 = k1_relat_1(sK3(sK1,X0))) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f45,f34])).
% 0.18/0.49  fof(f34,plain,(
% 0.18/0.49    ( ! [X0,X1] : (k1_relat_1(sK3(X0,X1)) = X0 | k1_xboole_0 = X0) )),
% 0.18/0.49    inference(cnf_transformation,[],[f18])).
% 0.18/0.49  fof(f74,plain,(
% 0.18/0.49    ( ! [X0] : (v1_funct_1(sK3(sK1,X0))) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f45,f33])).
% 0.18/0.49  fof(f33,plain,(
% 0.18/0.49    ( ! [X0,X1] : (v1_funct_1(sK3(X0,X1)) | k1_xboole_0 = X0) )),
% 0.18/0.49    inference(cnf_transformation,[],[f18])).
% 0.18/0.49  fof(f73,plain,(
% 0.18/0.49    ( ! [X0] : (v1_relat_1(sK3(sK1,X0))) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f45,f32])).
% 0.18/0.49  fof(f32,plain,(
% 0.18/0.49    ( ! [X0,X1] : (v1_relat_1(sK3(X0,X1)) | k1_xboole_0 = X0) )),
% 0.18/0.49    inference(cnf_transformation,[],[f18])).
% 0.18/0.49  fof(f84,plain,(
% 0.18/0.49    ( ! [X0] : (~r2_hidden(X0,sK0)) ) | spl5_1),
% 0.18/0.49    inference(unit_resulting_resolution,[],[f82,f24])).
% 0.18/0.49  fof(f24,plain,(
% 0.18/0.49    ( ! [X0,X1] : (~r2_hidden(X0,X1) | r1_tarski(k1_tarski(X0),X1)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f5])).
% 0.18/0.49  fof(f5,axiom,(
% 0.18/0.49    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).
% 0.18/0.49  fof(f72,plain,(
% 0.18/0.49    ~spl5_3 | ~spl5_1 | ~spl5_4),
% 0.18/0.49    inference(avatar_split_clause,[],[f63,f69,f44,f65])).
% 0.18/0.49  fof(f63,plain,(
% 0.18/0.49    ~r1_tarski(k1_xboole_0,sK0) | k1_xboole_0 != sK1 | ~v1_relat_1(k1_xboole_0)),
% 0.18/0.49    inference(forward_demodulation,[],[f62,f37])).
% 0.18/0.49  fof(f37,plain,(
% 0.18/0.49    k1_xboole_0 = k2_relat_1(k1_xboole_0)),
% 0.18/0.49    inference(cnf_transformation,[],[f10])).
% 0.18/0.49  fof(f10,axiom,(
% 0.18/0.49    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).
% 0.18/0.49  fof(f62,plain,(
% 0.18/0.49    k1_xboole_0 != sK1 | ~r1_tarski(k2_relat_1(k1_xboole_0),sK0) | ~v1_relat_1(k1_xboole_0)),
% 0.18/0.49    inference(forward_demodulation,[],[f61,f36])).
% 0.18/0.49  fof(f36,plain,(
% 0.18/0.49    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.18/0.49    inference(cnf_transformation,[],[f10])).
% 0.18/0.49  fof(f61,plain,(
% 0.18/0.49    k1_relat_1(k1_xboole_0) != sK1 | ~r1_tarski(k2_relat_1(k1_xboole_0),sK0) | ~v1_relat_1(k1_xboole_0)),
% 0.18/0.49    inference(resolution,[],[f58,f42])).
% 0.18/0.49  fof(f58,plain,(
% 0.18/0.49    ( ! [X3] : (~v1_xboole_0(X3) | sK1 != k1_relat_1(X3) | ~r1_tarski(k2_relat_1(X3),sK0) | ~v1_relat_1(X3)) )),
% 0.18/0.49    inference(resolution,[],[f22,f38])).
% 0.18/0.49  fof(f38,plain,(
% 0.18/0.49    ( ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0)) )),
% 0.18/0.49    inference(cnf_transformation,[],[f19])).
% 0.18/0.49  fof(f19,plain,(
% 0.18/0.49    ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0))),
% 0.18/0.49    inference(ennf_transformation,[],[f11])).
% 0.18/0.49  fof(f11,axiom,(
% 0.18/0.49    ! [X0] : (v1_xboole_0(X0) => v1_funct_1(X0))),
% 0.18/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_funct_1)).
% 0.18/0.49  fof(f51,plain,(
% 0.18/0.49    spl5_1 | ~spl5_2),
% 0.18/0.49    inference(avatar_split_clause,[],[f23,f48,f44])).
% 0.18/0.49  fof(f23,plain,(
% 0.18/0.49    k1_xboole_0 != sK0 | k1_xboole_0 = sK1),
% 0.18/0.49    inference(cnf_transformation,[],[f16])).
% 0.18/0.49  % SZS output end Proof for theBenchmark
% 0.18/0.49  % (16491)------------------------------
% 0.18/0.49  % (16491)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.18/0.49  % (16491)Termination reason: Refutation
% 0.18/0.49  
% 0.18/0.49  % (16491)Memory used [KB]: 6268
% 0.18/0.49  % (16491)Time elapsed: 0.100 s
% 0.18/0.49  % (16491)------------------------------
% 0.18/0.49  % (16491)------------------------------
% 0.18/0.50  % (16493)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.18/0.50  % (16494)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.18/0.50  % (16489)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.18/0.50  % (16486)Success in time 0.159 s
%------------------------------------------------------------------------------
