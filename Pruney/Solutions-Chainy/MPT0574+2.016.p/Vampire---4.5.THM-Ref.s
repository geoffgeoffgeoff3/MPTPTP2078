%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:50:44 EST 2020

% Result     : Theorem 1.70s
% Output     : Refutation 2.12s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 123 expanded)
%              Number of leaves         :   11 (  31 expanded)
%              Depth                    :   12
%              Number of atoms          :  185 ( 546 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   10 (   6 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1125,plain,(
    $false ),
    inference(unit_resulting_resolution,[],[f33,f345,f1114])).

fof(f1114,plain,(
    ! [X12,X13] :
      ( sP1(X12,X13,X12)
      | ~ r1_tarski(X13,X12) ) ),
    inference(subsumption_resolution,[],[f1113,f236])).

fof(f236,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK6(X0,X1,X0),X2)
      | sP1(X0,X1,X0)
      | ~ r1_tarski(X1,X2) ) ),
    inference(resolution,[],[f231,f40])).

fof(f40,plain,(
    ! [X0,X3,X1] :
      ( ~ r2_hidden(X3,X0)
      | r2_hidden(X3,X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK5(X0,X1),X1)
          & r2_hidden(sK5(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f21,f22])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK5(X0,X1),X1)
        & r2_hidden(sK5(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(f231,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK6(X0,X1,X0),X1)
      | sP1(X0,X1,X0) ) ),
    inference(subsumption_resolution,[],[f227,f118])).

fof(f118,plain,(
    ! [X6,X8,X7] :
      ( ~ r2_hidden(sK6(X6,X7,X8),X8)
      | sP1(X6,X7,X8)
      | ~ r2_hidden(sK6(X6,X7,X8),X6) ) ),
    inference(resolution,[],[f47,f49])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | ~ r2_hidden(X1,X2) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ( ~ r2_hidden(X1,X0)
          & ~ r2_hidden(X1,X2) ) )
      & ( r2_hidden(X1,X0)
        | r2_hidden(X1,X2)
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(rectify,[],[f29])).

fof(f29,plain,(
    ! [X1,X3,X0] :
      ( ( sP0(X1,X3,X0)
        | ( ~ r2_hidden(X3,X1)
          & ~ r2_hidden(X3,X0) ) )
      & ( r2_hidden(X3,X1)
        | r2_hidden(X3,X0)
        | ~ sP0(X1,X3,X0) ) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
    ! [X1,X3,X0] :
      ( ( sP0(X1,X3,X0)
        | ( ~ r2_hidden(X3,X1)
          & ~ r2_hidden(X3,X0) ) )
      & ( r2_hidden(X3,X1)
        | r2_hidden(X3,X0)
        | ~ sP0(X1,X3,X0) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X1,X3,X0] :
      ( sP0(X1,X3,X0)
    <=> ( r2_hidden(X3,X1)
        | r2_hidden(X3,X0) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X1,sK6(X0,X1,X2),X0)
      | sP1(X0,X1,X2)
      | ~ r2_hidden(sK6(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( sP1(X0,X1,X2)
        | ( ( ~ sP0(X1,sK6(X0,X1,X2),X0)
            | ~ r2_hidden(sK6(X0,X1,X2),X2) )
          & ( sP0(X1,sK6(X0,X1,X2),X0)
            | r2_hidden(sK6(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ sP0(X1,X4,X0) )
            & ( sP0(X1,X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | ~ sP1(X0,X1,X2) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f25,f26])).

fof(f26,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ sP0(X1,X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( sP0(X1,X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ~ sP0(X1,sK6(X0,X1,X2),X0)
          | ~ r2_hidden(sK6(X0,X1,X2),X2) )
        & ( sP0(X1,sK6(X0,X1,X2),X0)
          | r2_hidden(sK6(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
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
    inference(rectify,[],[f24])).

fof(f24,plain,(
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
    inference(nnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( sP1(X0,X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> sP0(X1,X3,X0) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).

fof(f227,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK6(X0,X1,X0),X0)
      | sP1(X0,X1,X0)
      | r2_hidden(sK6(X0,X1,X0),X1) ) ),
    inference(factoring,[],[f102])).

fof(f102,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK6(X0,X1,X2),X2)
      | sP1(X0,X1,X2)
      | r2_hidden(sK6(X0,X1,X2),X0)
      | r2_hidden(sK6(X0,X1,X2),X1) ) ),
    inference(resolution,[],[f46,f48])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ~ sP0(X0,X1,X2)
      | r2_hidden(X1,X2)
      | r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( sP0(X1,sK6(X0,X1,X2),X0)
      | sP1(X0,X1,X2)
      | r2_hidden(sK6(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f1113,plain,(
    ! [X12,X13] :
      ( sP1(X12,X13,X12)
      | ~ r1_tarski(X13,X12)
      | ~ r2_hidden(sK6(X12,X13,X12),X12) ) ),
    inference(duplicate_literal_removal,[],[f1110])).

fof(f1110,plain,(
    ! [X12,X13] :
      ( sP1(X12,X13,X12)
      | ~ r1_tarski(X13,X12)
      | sP1(X12,X13,X12)
      | ~ r2_hidden(sK6(X12,X13,X12),X12) ) ),
    inference(resolution,[],[f236,f118])).

fof(f345,plain,(
    ! [X0] : ~ sP1(X0,sK2,sK3) ),
    inference(subsumption_resolution,[],[f343,f32])).

fof(f32,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,
    ( ~ r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3))
    & r1_tarski(sK2,sK3)
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f10,f16])).

fof(f16,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
        & r1_tarski(X0,X1)
        & v1_relat_1(X2) )
   => ( ~ r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3))
      & r1_tarski(sK2,sK3)
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f9])).

fof(f9,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f7,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).

fof(f343,plain,(
    ! [X0] :
      ( ~ v1_relat_1(sK4)
      | ~ sP1(X0,sK2,sK3) ) ),
    inference(resolution,[],[f157,f34])).

fof(f34,plain,(
    ~ r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3)) ),
    inference(cnf_transformation,[],[f17])).

fof(f157,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(k10_relat_1(X3,X0),k10_relat_1(X3,X2))
      | ~ v1_relat_1(X3)
      | ~ sP1(X1,X0,X2) ) ),
    inference(superposition,[],[f93,f72])).

fof(f72,plain,(
    ! [X6,X4,X5] :
      ( k2_xboole_0(X5,X4) = X6
      | ~ sP1(X4,X5,X6) ) ),
    inference(superposition,[],[f52,f36])).

fof(f36,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X0,X1) = X2
      | ~ sP1(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ~ sP1(X0,X1,X2) )
      & ( sP1(X0,X1,X2)
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> sP1(X0,X1,X2) ) ),
    inference(definition_folding,[],[f3,f14,f13])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).

fof(f93,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k10_relat_1(X0,X1),k10_relat_1(X0,k2_xboole_0(X1,X2)))
      | ~ v1_relat_1(X0) ) ),
    inference(superposition,[],[f35,f43])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t175_relat_1)).

fof(f35,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f33,plain,(
    r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f17])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:07:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.50  % (24336)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.20/0.50  % (24322)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.20/0.51  % (24333)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.20/0.51  % (24329)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.20/0.51  % (24324)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.20/0.51  % (24335)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.20/0.51  % (24343)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.20/0.51  % (24330)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.20/0.51  % (24328)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.20/0.52  % (24326)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.20/0.52  % (24343)Refutation not found, incomplete strategy% (24343)------------------------------
% 0.20/0.52  % (24343)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (24343)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.52  
% 0.20/0.52  % (24343)Memory used [KB]: 10746
% 0.20/0.52  % (24343)Time elapsed: 0.075 s
% 0.20/0.52  % (24343)------------------------------
% 0.20/0.52  % (24343)------------------------------
% 0.20/0.52  % (24332)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.20/0.52  % (24344)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.20/0.52  % (24325)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.20/0.52  % (24321)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.20/0.52  % (24327)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.20/0.52  % (24323)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.20/0.53  % (24341)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.20/0.53  % (24340)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.20/0.53  % (24345)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.20/0.53  % (24347)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.20/0.54  % (24350)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.20/0.54  % (24331)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.20/0.54  % (24348)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.20/0.54  % (24338)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.20/0.54  % (24337)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.20/0.55  % (24349)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.20/0.55  % (24338)Refutation not found, incomplete strategy% (24338)------------------------------
% 0.20/0.55  % (24338)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.55  % (24338)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.55  
% 0.20/0.55  % (24338)Memory used [KB]: 10618
% 0.20/0.55  % (24338)Time elapsed: 0.131 s
% 0.20/0.55  % (24338)------------------------------
% 0.20/0.55  % (24338)------------------------------
% 0.20/0.55  % (24346)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 1.53/0.55  % (24334)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 1.53/0.56  % (24342)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 1.53/0.57  % (24339)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.70/0.62  % (24350)Refutation found. Thanks to Tanya!
% 1.70/0.62  % SZS status Theorem for theBenchmark
% 2.12/0.63  % SZS output start Proof for theBenchmark
% 2.12/0.63  fof(f1125,plain,(
% 2.12/0.63    $false),
% 2.12/0.63    inference(unit_resulting_resolution,[],[f33,f345,f1114])).
% 2.12/0.63  fof(f1114,plain,(
% 2.12/0.63    ( ! [X12,X13] : (sP1(X12,X13,X12) | ~r1_tarski(X13,X12)) )),
% 2.12/0.63    inference(subsumption_resolution,[],[f1113,f236])).
% 2.12/0.63  fof(f236,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (r2_hidden(sK6(X0,X1,X0),X2) | sP1(X0,X1,X0) | ~r1_tarski(X1,X2)) )),
% 2.12/0.63    inference(resolution,[],[f231,f40])).
% 2.12/0.63  fof(f40,plain,(
% 2.12/0.63    ( ! [X0,X3,X1] : (~r2_hidden(X3,X0) | r2_hidden(X3,X1) | ~r1_tarski(X0,X1)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f23])).
% 2.12/0.63  fof(f23,plain,(
% 2.12/0.63    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK5(X0,X1),X1) & r2_hidden(sK5(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.12/0.63    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f21,f22])).
% 2.12/0.63  fof(f22,plain,(
% 2.12/0.63    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK5(X0,X1),X1) & r2_hidden(sK5(X0,X1),X0)))),
% 2.12/0.63    introduced(choice_axiom,[])).
% 2.12/0.63  fof(f21,plain,(
% 2.12/0.63    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.12/0.63    inference(rectify,[],[f20])).
% 2.12/0.63  fof(f20,plain,(
% 2.12/0.63    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.12/0.63    inference(nnf_transformation,[],[f11])).
% 2.12/0.63  fof(f11,plain,(
% 2.12/0.63    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.12/0.63    inference(ennf_transformation,[],[f2])).
% 2.12/0.63  fof(f2,axiom,(
% 2.12/0.63    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 2.12/0.63  fof(f231,plain,(
% 2.12/0.63    ( ! [X0,X1] : (r2_hidden(sK6(X0,X1,X0),X1) | sP1(X0,X1,X0)) )),
% 2.12/0.63    inference(subsumption_resolution,[],[f227,f118])).
% 2.12/0.63  fof(f118,plain,(
% 2.12/0.63    ( ! [X6,X8,X7] : (~r2_hidden(sK6(X6,X7,X8),X8) | sP1(X6,X7,X8) | ~r2_hidden(sK6(X6,X7,X8),X6)) )),
% 2.12/0.63    inference(resolution,[],[f47,f49])).
% 2.12/0.63  fof(f49,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (sP0(X0,X1,X2) | ~r2_hidden(X1,X2)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f30])).
% 2.12/0.63  fof(f30,plain,(
% 2.12/0.63    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | (~r2_hidden(X1,X0) & ~r2_hidden(X1,X2))) & (r2_hidden(X1,X0) | r2_hidden(X1,X2) | ~sP0(X0,X1,X2)))),
% 2.12/0.63    inference(rectify,[],[f29])).
% 2.12/0.63  fof(f29,plain,(
% 2.12/0.63    ! [X1,X3,X0] : ((sP0(X1,X3,X0) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~sP0(X1,X3,X0)))),
% 2.12/0.63    inference(flattening,[],[f28])).
% 2.12/0.63  fof(f28,plain,(
% 2.12/0.63    ! [X1,X3,X0] : ((sP0(X1,X3,X0) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~sP0(X1,X3,X0)))),
% 2.12/0.63    inference(nnf_transformation,[],[f13])).
% 2.12/0.63  fof(f13,plain,(
% 2.12/0.63    ! [X1,X3,X0] : (sP0(X1,X3,X0) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0)))),
% 2.12/0.63    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 2.12/0.63  fof(f47,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (~sP0(X1,sK6(X0,X1,X2),X0) | sP1(X0,X1,X2) | ~r2_hidden(sK6(X0,X1,X2),X2)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f27])).
% 2.12/0.63  fof(f27,plain,(
% 2.12/0.63    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ((~sP0(X1,sK6(X0,X1,X2),X0) | ~r2_hidden(sK6(X0,X1,X2),X2)) & (sP0(X1,sK6(X0,X1,X2),X0) | r2_hidden(sK6(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~sP0(X1,X4,X0)) & (sP0(X1,X4,X0) | ~r2_hidden(X4,X2))) | ~sP1(X0,X1,X2)))),
% 2.12/0.63    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f25,f26])).
% 2.12/0.63  fof(f26,plain,(
% 2.12/0.63    ! [X2,X1,X0] : (? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2))) => ((~sP0(X1,sK6(X0,X1,X2),X0) | ~r2_hidden(sK6(X0,X1,X2),X2)) & (sP0(X1,sK6(X0,X1,X2),X0) | r2_hidden(sK6(X0,X1,X2),X2))))),
% 2.12/0.63    introduced(choice_axiom,[])).
% 2.12/0.63  fof(f25,plain,(
% 2.12/0.63    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~sP0(X1,X4,X0)) & (sP0(X1,X4,X0) | ~r2_hidden(X4,X2))) | ~sP1(X0,X1,X2)))),
% 2.12/0.63    inference(rectify,[],[f24])).
% 2.12/0.63  fof(f24,plain,(
% 2.12/0.63    ! [X0,X1,X2] : ((sP1(X0,X1,X2) | ? [X3] : ((~sP0(X1,X3,X0) | ~r2_hidden(X3,X2)) & (sP0(X1,X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~sP0(X1,X3,X0)) & (sP0(X1,X3,X0) | ~r2_hidden(X3,X2))) | ~sP1(X0,X1,X2)))),
% 2.12/0.63    inference(nnf_transformation,[],[f14])).
% 2.12/0.63  fof(f14,plain,(
% 2.12/0.63    ! [X0,X1,X2] : (sP1(X0,X1,X2) <=> ! [X3] : (r2_hidden(X3,X2) <=> sP0(X1,X3,X0)))),
% 2.12/0.63    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).
% 2.12/0.63  fof(f227,plain,(
% 2.12/0.63    ( ! [X0,X1] : (r2_hidden(sK6(X0,X1,X0),X0) | sP1(X0,X1,X0) | r2_hidden(sK6(X0,X1,X0),X1)) )),
% 2.12/0.63    inference(factoring,[],[f102])).
% 2.12/0.63  fof(f102,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (r2_hidden(sK6(X0,X1,X2),X2) | sP1(X0,X1,X2) | r2_hidden(sK6(X0,X1,X2),X0) | r2_hidden(sK6(X0,X1,X2),X1)) )),
% 2.12/0.63    inference(resolution,[],[f46,f48])).
% 2.12/0.63  fof(f48,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (~sP0(X0,X1,X2) | r2_hidden(X1,X2) | r2_hidden(X1,X0)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f30])).
% 2.12/0.63  fof(f46,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (sP0(X1,sK6(X0,X1,X2),X0) | sP1(X0,X1,X2) | r2_hidden(sK6(X0,X1,X2),X2)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f27])).
% 2.12/0.63  fof(f1113,plain,(
% 2.12/0.63    ( ! [X12,X13] : (sP1(X12,X13,X12) | ~r1_tarski(X13,X12) | ~r2_hidden(sK6(X12,X13,X12),X12)) )),
% 2.12/0.63    inference(duplicate_literal_removal,[],[f1110])).
% 2.12/0.63  fof(f1110,plain,(
% 2.12/0.63    ( ! [X12,X13] : (sP1(X12,X13,X12) | ~r1_tarski(X13,X12) | sP1(X12,X13,X12) | ~r2_hidden(sK6(X12,X13,X12),X12)) )),
% 2.12/0.63    inference(resolution,[],[f236,f118])).
% 2.12/0.63  fof(f345,plain,(
% 2.12/0.63    ( ! [X0] : (~sP1(X0,sK2,sK3)) )),
% 2.12/0.63    inference(subsumption_resolution,[],[f343,f32])).
% 2.12/0.63  fof(f32,plain,(
% 2.12/0.63    v1_relat_1(sK4)),
% 2.12/0.63    inference(cnf_transformation,[],[f17])).
% 2.12/0.63  fof(f17,plain,(
% 2.12/0.63    ~r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3)) & r1_tarski(sK2,sK3) & v1_relat_1(sK4)),
% 2.12/0.63    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f10,f16])).
% 2.12/0.63  fof(f16,plain,(
% 2.12/0.63    ? [X0,X1,X2] : (~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) => (~r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3)) & r1_tarski(sK2,sK3) & v1_relat_1(sK4))),
% 2.12/0.63    introduced(choice_axiom,[])).
% 2.12/0.63  fof(f10,plain,(
% 2.12/0.63    ? [X0,X1,X2] : (~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 2.12/0.63    inference(flattening,[],[f9])).
% 2.12/0.63  fof(f9,plain,(
% 2.12/0.63    ? [X0,X1,X2] : ((~r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 2.12/0.63    inference(ennf_transformation,[],[f8])).
% 2.12/0.63  fof(f8,negated_conjecture,(
% 2.12/0.63    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))))),
% 2.12/0.63    inference(negated_conjecture,[],[f7])).
% 2.12/0.63  fof(f7,conjecture,(
% 2.12/0.63    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k10_relat_1(X2,X0),k10_relat_1(X2,X1))))),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).
% 2.12/0.63  fof(f343,plain,(
% 2.12/0.63    ( ! [X0] : (~v1_relat_1(sK4) | ~sP1(X0,sK2,sK3)) )),
% 2.12/0.63    inference(resolution,[],[f157,f34])).
% 2.12/0.63  fof(f34,plain,(
% 2.12/0.63    ~r1_tarski(k10_relat_1(sK4,sK2),k10_relat_1(sK4,sK3))),
% 2.12/0.63    inference(cnf_transformation,[],[f17])).
% 2.12/0.63  fof(f157,plain,(
% 2.12/0.63    ( ! [X2,X0,X3,X1] : (r1_tarski(k10_relat_1(X3,X0),k10_relat_1(X3,X2)) | ~v1_relat_1(X3) | ~sP1(X1,X0,X2)) )),
% 2.12/0.63    inference(superposition,[],[f93,f72])).
% 2.12/0.63  fof(f72,plain,(
% 2.12/0.63    ( ! [X6,X4,X5] : (k2_xboole_0(X5,X4) = X6 | ~sP1(X4,X5,X6)) )),
% 2.12/0.63    inference(superposition,[],[f52,f36])).
% 2.12/0.63  fof(f36,plain,(
% 2.12/0.63    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f1])).
% 2.12/0.63  fof(f1,axiom,(
% 2.12/0.63    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).
% 2.12/0.63  fof(f52,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (k2_xboole_0(X0,X1) = X2 | ~sP1(X0,X1,X2)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f31])).
% 2.12/0.63  fof(f31,plain,(
% 2.12/0.63    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ~sP1(X0,X1,X2)) & (sP1(X0,X1,X2) | k2_xboole_0(X0,X1) != X2))),
% 2.12/0.63    inference(nnf_transformation,[],[f15])).
% 2.12/0.63  fof(f15,plain,(
% 2.12/0.63    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> sP1(X0,X1,X2))),
% 2.12/0.63    inference(definition_folding,[],[f3,f14,f13])).
% 2.12/0.63  fof(f3,axiom,(
% 2.12/0.63    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).
% 2.12/0.63  fof(f93,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (r1_tarski(k10_relat_1(X0,X1),k10_relat_1(X0,k2_xboole_0(X1,X2))) | ~v1_relat_1(X0)) )),
% 2.12/0.63    inference(superposition,[],[f35,f43])).
% 2.12/0.63  fof(f43,plain,(
% 2.12/0.63    ( ! [X2,X0,X1] : (k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 2.12/0.63    inference(cnf_transformation,[],[f12])).
% 2.12/0.63  fof(f12,plain,(
% 2.12/0.63    ! [X0,X1,X2] : (k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)) | ~v1_relat_1(X2))),
% 2.12/0.63    inference(ennf_transformation,[],[f6])).
% 2.12/0.63  fof(f6,axiom,(
% 2.12/0.63    ! [X0,X1,X2] : (v1_relat_1(X2) => k10_relat_1(X2,k2_xboole_0(X0,X1)) = k2_xboole_0(k10_relat_1(X2,X0),k10_relat_1(X2,X1)))),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t175_relat_1)).
% 2.12/0.63  fof(f35,plain,(
% 2.12/0.63    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 2.12/0.63    inference(cnf_transformation,[],[f5])).
% 2.12/0.63  fof(f5,axiom,(
% 2.12/0.63    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 2.12/0.63    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).
% 2.12/0.63  fof(f33,plain,(
% 2.12/0.63    r1_tarski(sK2,sK3)),
% 2.12/0.63    inference(cnf_transformation,[],[f17])).
% 2.12/0.63  % SZS output end Proof for theBenchmark
% 2.12/0.63  % (24350)------------------------------
% 2.12/0.63  % (24350)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 2.12/0.63  % (24350)Termination reason: Refutation
% 2.12/0.63  
% 2.12/0.63  % (24350)Memory used [KB]: 2302
% 2.12/0.63  % (24350)Time elapsed: 0.219 s
% 2.12/0.63  % (24350)------------------------------
% 2.12/0.63  % (24350)------------------------------
% 2.12/0.63  % (24320)Success in time 0.275 s
%------------------------------------------------------------------------------
