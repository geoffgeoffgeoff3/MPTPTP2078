%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:39:17 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 1.19s
% Verified   : 
% Statistics : Number of formulae       :   51 (  78 expanded)
%              Number of leaves         :   14 (  24 expanded)
%              Depth                    :   10
%              Number of atoms          :  141 ( 168 expanded)
%              Number of equality atoms :   85 ( 112 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f143,plain,(
    $false ),
    inference(subsumption_resolution,[],[f134,f69])).

fof(f69,plain,(
    ! [X0] : ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unit_resulting_resolution,[],[f28,f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] : ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f28,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(f134,plain,(
    r2_hidden(sK0,k1_xboole_0) ),
    inference(superposition,[],[f63,f121])).

fof(f121,plain,(
    k1_xboole_0 = k3_enumset1(sK0,sK0,sK0,sK0,sK0) ),
    inference(unit_resulting_resolution,[],[f29,f115,f38])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
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

fof(f115,plain,(
    r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k1_xboole_0) ),
    inference(superposition,[],[f52,f51])).

fof(f51,plain,(
    k1_xboole_0 = k3_tarski(k3_enumset1(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f27,f49,f50])).

fof(f50,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f30,f48])).

fof(f48,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f34,f47])).

fof(f47,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f39,f46])).

fof(f46,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f39,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f34,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f30,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f49,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f35,f48])).

fof(f35,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f27,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f18])).

fof(f18,plain,
    ( ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)
   => k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(f52,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f32,f49])).

fof(f32,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f29,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f63,plain,(
    ! [X4,X0] : r2_hidden(X4,k3_enumset1(X0,X0,X0,X0,X4)) ),
    inference(equality_resolution,[],[f62])).

fof(f62,plain,(
    ! [X4,X2,X0] :
      ( r2_hidden(X4,X2)
      | k3_enumset1(X0,X0,X0,X0,X4) != X2 ) ),
    inference(equality_resolution,[],[f57])).

fof(f57,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X1 != X4
      | k3_enumset1(X0,X0,X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f42,f48])).

fof(f42,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X1 != X4
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK2(X0,X1,X2) != X1
              & sK2(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK2(X0,X1,X2),X2) )
          & ( sK2(X0,X1,X2) = X1
            | sK2(X0,X1,X2) = X0
            | r2_hidden(sK2(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f24,f25])).

fof(f25,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK2(X0,X1,X2) != X1
            & sK2(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK2(X0,X1,X2),X2) )
        & ( sK2(X0,X1,X2) = X1
          | sK2(X0,X1,X2) = X0
          | r2_hidden(sK2(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

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
    inference(nnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_tarski)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n011.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 16:34:27 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.50  % (25188)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 0.21/0.51  % (25188)Refutation found. Thanks to Tanya!
% 0.21/0.51  % SZS status Theorem for theBenchmark
% 0.21/0.51  % (25213)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_73 on theBenchmark
% 0.21/0.51  % (25196)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 0.21/0.51  % SZS output start Proof for theBenchmark
% 0.21/0.51  fof(f143,plain,(
% 0.21/0.51    $false),
% 0.21/0.51    inference(subsumption_resolution,[],[f134,f69])).
% 1.19/0.51  fof(f69,plain,(
% 1.19/0.51    ( ! [X0] : (~r2_hidden(X0,k1_xboole_0)) )),
% 1.19/0.51    inference(unit_resulting_resolution,[],[f28,f31])).
% 1.19/0.51  fof(f31,plain,(
% 1.19/0.51    ( ! [X0,X1] : (~r2_hidden(X1,X0) | ~v1_xboole_0(X0)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f17])).
% 1.19/0.51  fof(f17,plain,(
% 1.19/0.51    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0))),
% 1.19/0.51    inference(ennf_transformation,[],[f15])).
% 1.19/0.51  fof(f15,plain,(
% 1.19/0.51    ! [X0] : (v1_xboole_0(X0) => ! [X1] : ~r2_hidden(X1,X0))),
% 1.19/0.51    inference(unused_predicate_definition_removal,[],[f2])).
% 1.19/0.51  fof(f2,axiom,(
% 1.19/0.51    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).
% 1.19/0.51  fof(f28,plain,(
% 1.19/0.51    v1_xboole_0(k1_xboole_0)),
% 1.19/0.51    inference(cnf_transformation,[],[f3])).
% 1.19/0.51  fof(f3,axiom,(
% 1.19/0.51    v1_xboole_0(k1_xboole_0)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).
% 1.19/0.51  fof(f134,plain,(
% 1.19/0.51    r2_hidden(sK0,k1_xboole_0)),
% 1.19/0.51    inference(superposition,[],[f63,f121])).
% 1.19/0.51  fof(f121,plain,(
% 1.19/0.51    k1_xboole_0 = k3_enumset1(sK0,sK0,sK0,sK0,sK0)),
% 1.19/0.51    inference(unit_resulting_resolution,[],[f29,f115,f38])).
% 1.19/0.51  fof(f38,plain,(
% 1.19/0.51    ( ! [X0,X1] : (~r1_tarski(X1,X0) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f21])).
% 1.19/0.51  fof(f21,plain,(
% 1.19/0.51    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.19/0.51    inference(flattening,[],[f20])).
% 1.19/0.51  fof(f20,plain,(
% 1.19/0.51    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.19/0.51    inference(nnf_transformation,[],[f4])).
% 1.19/0.51  fof(f4,axiom,(
% 1.19/0.51    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 1.19/0.51  fof(f115,plain,(
% 1.19/0.51    r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k1_xboole_0)),
% 1.19/0.51    inference(superposition,[],[f52,f51])).
% 1.19/0.51  fof(f51,plain,(
% 1.19/0.51    k1_xboole_0 = k3_tarski(k3_enumset1(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1))),
% 1.19/0.51    inference(definition_unfolding,[],[f27,f49,f50])).
% 1.19/0.51  fof(f50,plain,(
% 1.19/0.51    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 1.19/0.51    inference(definition_unfolding,[],[f30,f48])).
% 1.19/0.51  fof(f48,plain,(
% 1.19/0.51    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 1.19/0.51    inference(definition_unfolding,[],[f34,f47])).
% 1.19/0.51  fof(f47,plain,(
% 1.19/0.51    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 1.19/0.51    inference(definition_unfolding,[],[f39,f46])).
% 1.19/0.51  fof(f46,plain,(
% 1.19/0.51    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f11])).
% 1.19/0.51  fof(f11,axiom,(
% 1.19/0.51    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 1.19/0.51  fof(f39,plain,(
% 1.19/0.51    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f10])).
% 1.19/0.51  fof(f10,axiom,(
% 1.19/0.51    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.19/0.51  fof(f34,plain,(
% 1.19/0.51    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f9])).
% 1.19/0.51  fof(f9,axiom,(
% 1.19/0.51    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.19/0.51  fof(f30,plain,(
% 1.19/0.51    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f8])).
% 1.19/0.51  fof(f8,axiom,(
% 1.19/0.51    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 1.19/0.51  fof(f49,plain,(
% 1.19/0.51    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) )),
% 1.19/0.51    inference(definition_unfolding,[],[f35,f48])).
% 1.19/0.51  fof(f35,plain,(
% 1.19/0.51    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.19/0.51    inference(cnf_transformation,[],[f12])).
% 1.19/0.51  fof(f12,axiom,(
% 1.19/0.51    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.19/0.51  fof(f27,plain,(
% 1.19/0.51    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 1.19/0.51    inference(cnf_transformation,[],[f19])).
% 1.19/0.51  fof(f19,plain,(
% 1.19/0.51    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 1.19/0.51    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f18])).
% 1.19/0.51  fof(f18,plain,(
% 1.19/0.51    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) => k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 1.19/0.51    introduced(choice_axiom,[])).
% 1.19/0.51  fof(f16,plain,(
% 1.19/0.51    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)),
% 1.19/0.51    inference(ennf_transformation,[],[f14])).
% 1.19/0.51  fof(f14,negated_conjecture,(
% 1.19/0.51    ~! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 1.19/0.51    inference(negated_conjecture,[],[f13])).
% 1.19/0.51  fof(f13,conjecture,(
% 1.19/0.51    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).
% 1.19/0.51  fof(f52,plain,(
% 1.19/0.51    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)))) )),
% 1.19/0.51    inference(definition_unfolding,[],[f32,f49])).
% 1.19/0.51  fof(f32,plain,(
% 1.19/0.51    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.19/0.51    inference(cnf_transformation,[],[f6])).
% 1.19/0.51  fof(f6,axiom,(
% 1.19/0.51    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).
% 1.19/0.51  fof(f29,plain,(
% 1.19/0.51    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.19/0.51    inference(cnf_transformation,[],[f5])).
% 1.19/0.51  fof(f5,axiom,(
% 1.19/0.51    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.19/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).
% 1.19/0.51  fof(f63,plain,(
% 1.19/0.51    ( ! [X4,X0] : (r2_hidden(X4,k3_enumset1(X0,X0,X0,X0,X4))) )),
% 1.19/0.51    inference(equality_resolution,[],[f62])).
% 1.19/0.51  fof(f62,plain,(
% 1.19/0.51    ( ! [X4,X2,X0] : (r2_hidden(X4,X2) | k3_enumset1(X0,X0,X0,X0,X4) != X2) )),
% 1.19/0.51    inference(equality_resolution,[],[f57])).
% 1.19/0.51  fof(f57,plain,(
% 1.19/0.51    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X1 != X4 | k3_enumset1(X0,X0,X0,X0,X1) != X2) )),
% 1.19/0.51    inference(definition_unfolding,[],[f42,f48])).
% 1.19/0.51  fof(f42,plain,(
% 1.19/0.51    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X1 != X4 | k2_tarski(X0,X1) != X2) )),
% 1.19/0.51    inference(cnf_transformation,[],[f26])).
% 1.19/0.52  fof(f26,plain,(
% 1.19/0.52    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK2(X0,X1,X2) != X1 & sK2(X0,X1,X2) != X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (sK2(X0,X1,X2) = X1 | sK2(X0,X1,X2) = X0 | r2_hidden(sK2(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 1.19/0.52    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f24,f25])).
% 1.19/0.52  fof(f25,plain,(
% 1.19/0.52    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK2(X0,X1,X2) != X1 & sK2(X0,X1,X2) != X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (sK2(X0,X1,X2) = X1 | sK2(X0,X1,X2) = X0 | r2_hidden(sK2(X0,X1,X2),X2))))),
% 1.19/0.52    introduced(choice_axiom,[])).
% 1.19/0.52  fof(f24,plain,(
% 1.19/0.52    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 1.19/0.52    inference(rectify,[],[f23])).
% 1.19/0.52  fof(f23,plain,(
% 1.19/0.52    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 1.19/0.52    inference(flattening,[],[f22])).
% 1.19/0.52  fof(f22,plain,(
% 1.19/0.52    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 1.19/0.52    inference(nnf_transformation,[],[f7])).
% 1.19/0.52  fof(f7,axiom,(
% 1.19/0.52    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 1.19/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_tarski)).
% 1.19/0.52  % SZS output end Proof for theBenchmark
% 1.19/0.52  % (25188)------------------------------
% 1.19/0.52  % (25188)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.19/0.52  % (25188)Termination reason: Refutation
% 1.19/0.52  
% 1.19/0.52  % (25188)Memory used [KB]: 1791
% 1.19/0.52  % (25188)Time elapsed: 0.085 s
% 1.19/0.52  % (25188)------------------------------
% 1.19/0.52  % (25188)------------------------------
% 1.19/0.52  % (25183)Success in time 0.154 s
%------------------------------------------------------------------------------
